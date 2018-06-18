var noop = function() {};
var offloadFn = function(fn) { setTimeout(fn || noop, 0); };

var element = null;
var start = {};
var delta = {};
var isScrolling;
var width = 0;
var touchEndCallback = null;
var touchMoveCallback = null;

// setup event capturing
var touchevents = {

    handleEvent : function(event) {

        switch (event.type) {
            case 'touchstart': this.start(event);
                break;
            case 'touchmove':  this.move(event);
                break;
            case 'touchend':   offloadFn(this.end(event));
                break;
        }
    },

    start : function(event) {
        var touches = event.touches[0];
        start = {
            x : touches.pageX,
            y : touches.pageY,
            time : +new Date
        };

        isScrolling = undefined;
        delta = {};

        touchStartCallback();

        element.addEventListener('touchmove', this, false);
        element.addEventListener('touchend', this, false);

    },
    move : function(event) {

        if (event.touches.length > 1 || event.scale && event.scale !== 1)
            return;

        var touches = event.touches[0];

        // measure change in x and y
        delta = {
            x : touches.pageX - start.x,
            y : touches.pageY - start.y
        };

        touchMoveCallback(delta);
        event.preventDefault();
    },
    end : function(event) {

        var duration = +new Date - start.time;
        var direction = delta.x < 0;

        //options.callback && options.callback(index, slides[index]);
        touchEndCallback(delta);

        element.removeEventListener('touchmove', touchevents, false);
        element.removeEventListener('touchend', touchevents, false);
    }
};

var browser = {
    addEventListener : !!window.addEventListener,
    touch : ('ontouchstart' in window) || window.DocumentTouch && document instanceof DocumentTouch
};

var addTouchUI = function(paramElement, paramCallback1, paramCallback2, paramCallback3){
    element = document.getElementsByClassName(paramElement)[0];
    touchStartCallback = paramCallback1;
    touchMoveCallback = paramCallback2;
    touchEndCallback = paramCallback3;
    if (browser.touch) element.addEventListener('touchstart', touchevents, false);
};

