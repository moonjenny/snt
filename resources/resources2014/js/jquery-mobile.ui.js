
/* 페이지 진입시 스크롤 */
function headerSco(){
    var url = location.href;
    var spl = url.split('/');
    var spl2 = spl[3].split('?');
    var header = jQuery('header').height();
    if(spl2[0] === 'main'){
        //alert(1);
    }else{
        jQuery('html, body').animate({scrollTop : header}, 500);
    }

}
//headerSco();
/* 페이지 진입시 스크롤 */

/* 사이드바 좌 오픈 클로즈 함수  */
var sidebar = {
    init: function(){
        this.wrap = jQuery('.wrap');
        this.leftsidebar = this.wrap.find('.nav_side').css({'z-index': 2, 'overflow-y':'scroll'});
        this.rightsidebar = this.wrap.find('.myp_side').css({'z-index': 2, 'overflow-y':'scroll'});
        this.dim = jQuery('.dim');
        this.addEvent();
        jQuery('.sideClose').hide();
    },
    
    addEvent: function(){
        this.dim.on('click', function(){
            sidebar.close();
        });
    },
    
    open: function(paramType){
        var windowHeight = jQuery(window).height(), 
            targetSidebar = paramType == 'c'? this.leftsidebar : this.rightsidebar, 
            targetSide = paramType == 'c'? 1 : -1;
        targetSidebar.css({'height':windowHeight + 'px', 'top':'0px', 'transform':'translate3d('+ targetSide * targetSidebar.width() +'px,0,0)'});
        this.wrap.css('height', windowHeight + 'px');
        this.dim.fadeIn('fast');
    },
    
    close: function(){
        this.leftsidebar.css({'transform':'translate3d(0,0,0)'});
        this.rightsidebar.css({'transform':'translate3d(0,0,0)'});
        this.wrap.css('height', 'auto');
        this.dim.fadeOut('fast');
        // this.$sidebar.css({'height':'', 'top':'-99999px'});
    }
};
sidebar.init();
jQuery('a.nav_aside').on('click', function(){ sidebar.open('c'); });
jQuery('a.myp_aside').on('click', function(){ sidebar.open('m'); });

/* 사이드바 좌 오픈 클로즈 함수  */


/* 플로팅 위로 버튼 */
var float_topBtn = jQuery('.floating_btn_top').hide();
jQuery(window).scroll(function () {
    var float_he = jQuery('body').height() - jQuery('footer').height() - jQuery(window).height(); //끝나는 위치
    var sct = parseInt(jQuery(window).scrollTop()); 
    if( sct > 100 && sct < float_he) float_topBtn.show();
    else float_topBtn.hide();
});
/* 플로팅 위로 버튼 */