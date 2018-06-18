(function($){
    var config = {};

    $.loading = function (options) {

        var opts = $.extend(
            $.loading.default,
            options
        );
        var position = {};

        config = opts;
        init(opts);

        var selector = '#' + opts.id;
/* 
        $(document).on('ajaxStart', function(){
            if (config.ajax) {
                $(selector).show();
            }
        });

        $(document).on('ajaxComplete', function(){
            setTimeout(function(){
                $(selector).hide();
            }, opts.minTime);
        }); */

        return $.loading;
    };

    $.loading.open = function (time) {
        var selector = '#' + config.id;
        $(selector).show();
        if (time) {
            setTimeout(function(){
                $(selector).hide();
            }, parseInt(time));
        }
    };

    $.loading.close = function () {
        var selector = '#' + config.id;
        $(selector).hide();
    };

    $.loading.ajax = function (isListen) {
        config.ajax = isListen;
    };

    $.loading.default = {
        ajax       : true,
        //wrap div
        id         : 'loadingImg',
        zIndex     : '9999',
        background : 'rgba(255, 255, 255, 0)',
        minTime    : 200,
        radius     : '4px',
        width      : '100%',
        height     : '100%',

        //loading img/gif
        imgPath    : '/contents/2015_t/img/tloading.gif',
        imgWidth   : '48px',
        imgHeight  : '48px',

        //loading text
        tip        : '',
        fontSize   : '14px',
        fontColor  : '#fff'
    };

    function init (opts) {
        //wrap div style
        var wrapCss = 'display: none;position: fixed;top: 0;bottom: 0;left: 0;right: 0;margin: auto;padding: 8px;text-align: center;vertical-align: middle;';
        var cssArray = [
            'width:' + opts.width,
            'height:' + opts.height,
            'z-index:' + opts.zIndex,
            'background:' + opts.background,
            'border-radius:' + opts.radius
        ];
        wrapCss += cssArray.join(';');

        //img style
        var imgCss = 'margin-bottom:8px;';
        cssArray = [
            'width:' + opts.imgWidth,
            'height:' + opts.imgWidth
        ];
        imgCss += cssArray.join(';');

        //text style
        var textCss = 'margin:0;';
        cssArray = [
            'font-size:' + opts.fontSize,
            'color:'     + opts.fontColor
        ];
        textCss += cssArray.join(';');
        
        var screenWidth = screen.width;
        var screenHeight = screen.height;
        var positionLeft = (screenWidth - 48)/2; 
        var positiontop = (screenHeight - 48)/2; 
        if(isApp()){
        	if(iOsAgent){
        		positiontop = positiontop -20;
        	}else if(isAndroid()){
        		positiontop = positiontop -12;
        	}
        }
        

//        var html = '<div id="' + opts.id + '" style="' + wrapCss + '">'
//                  +'<img src="' + opts.imgPath + '" style="' + imgCss + ';position:fixed;left:'+positionLeft+'px;top:'+positiontop+'px;" id="loadingImg">'
//                  +'<p style="' + textCss + '">' + opts.tip + '</p></div>';
//        var html = '<img src="' + opts.imgPath + '" style="' + imgCss + ';position:fixed;left:'+positionLeft+'px;top:'+positiontop+'px;display:none;" id="loadingImg" >'
//		        +'<p style="' + textCss + '">' + opts.tip + '</p>';
        var html = '<div class="loading2_wrap" id="loadingImg" style="display:none;">'
        			+'<div class="loading2" style="position:fixed;left:'+positionLeft+'px;top:'+positiontop+'px;z-index:1000;">'
        	  		+'<svg height="48" width="48"  viewBox="0 0 120 120" >' 
        			+'<path d="m 41.351403,54.348877 c 0,0 -49.4783399,-12.652 -35.6966999,6.55192 C 19.436343,80.104717 93.314963,107.21615 110.03369,100.21236 126.75239,93.208587 86.311183,73.100937 86.311183,72.423147 c 0,-0.67778 4.29266,-62.5821903 4.29266,-62.5821903 0,0 -1.80744,-7.22973 -8.58529,-6.10008 -6.77786,1.12965 -40.66715,50.6080003 -40.66715,50.6080003 z"  stroke-dasharray="550 550"  />'
        			+'</svg>'
        			+'</div>'
        			+'</div>'
        			

        $(document).find('body').append(html);
    }
    

})(window.jQuery||window.Zepto);

var loadIndicator = null;
$(document).ready(function() {
	loadIndicator = jQuery.loading();
    
    $.ajaxSetup({
        beforeSend:function(){
            // show gif here, eg:
            var screenWidth = screen.width;
            var screenHeight = screen.height;
            var positionLeft = (screenWidth - 48)/2; 
            var positiontop = (screenHeight - 48)/2; 
            if(isApp()){
            	if(iOsAgent){
            		positiontop = positiontop -20;
            	}else if(isAndroid()){
            		positiontop = positiontop -12;
            	}
            }
            
            jQuery('#loadingImg').css('left', positionLeft+'px');
            jQuery('#loadingImg').css('top', positiontop+'px');
            if(loadIndicator){
            	loadIndicator.open();
            }else{
            	jQuery('#loadingImg').show();
            }
            
        },
        complete:function(){
            // hide gif here, eg:
        	if(loadIndicator){
        		loadIndicator.close();
        	}else{
        		jQuery('#loadingImg').hide();
        	}
        }
    });
});
