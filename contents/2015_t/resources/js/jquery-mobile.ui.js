/* 최소 높이값 지정  */
var $minHei = jQuery(window).height() - jQuery('header').height() - jQuery('footer').height() + 'px';
jQuery('#contents').css('min-height', $minHei);

/* 디바이스 버전 체크 */
var ua = navigator.userAgent.toLocaleLowerCase(),
    app_ver = 0,
    isGinger = false,
    isIcs = false,
    isJellyBean = false,
    isLowAndroid = false;

if(ua.indexOf('android') > -1) {
    app_ver = ua.substring(ua.indexOf('android') + 7);
    app_ver = app_ver.substring(0, app_ver.indexOf(";"));
    app_ver = app_ver.replace(/^\s*/, ""); // 앞 공백 제거
    app_ver = app_ver.replace(/\s*$/, ""); // 뒤 공백 제거
    app_ver = Number(app_ver.substr(0,3));
};

if(app_ver && app_ver < 3) isGinger = true;
if(app_ver && app_ver >= 4 && app_ver < 4.1) isIcs = true;
if(app_ver && app_ver >= 4.1 && app_ver < 4.4) isJellyBean = true;
if(app_ver > 0 && app_ver < 4.4) isLowAndroid = true;
/* end of 디바이스 버전 체크 */


/* 플로팅 위로 버튼 */
var float_topBtn = jQuery('.floating_btn_top').hide(), enableFloating = true;
if(!isGinger) float_topBtn.css({'position':'fixed', 'bottom':'10px'});
jQuery(window).scroll(function(){
    if(enableFloating) {
        var sct = parseInt(jQuery(window).scrollTop());
        if (sct > 50) {
            float_topBtn.show();
            if(isGinger) {
                if(goods.optionBox.active) float_topBtn.css('top', sct + jQuery(window).height() - 120 + 'px');
                else float_topBtn.css('top', sct + jQuery(window).height() - 50 + 'px');
            }
        } else {
            float_topBtn.hide();
        }
    };
});
float_topBtn.on('click', function(){ jQuery('html, body').animate({'scrollTop': 0}, 300); });
/* end of 플로팅 위로 버튼 */

/*
 * resize
 * resize 핸들러 등록 - resizeLists.push(this.resizeHandler);
 */
var resizeLists = [];
jQuery(window).on('resize', function(){
    jQuery('.contents').css('min-height', $minHei);
    resizeLists.forEach(function(element, index){ element.call(); });
});
/* end of resize */

var sidebar = {};

if(ua.indexOf('shoppingntapp')<0){
	/* 웹 : 사이드바 좌 오픈 클로즈 함수  */
	sidebar = {
	    init: function(){
	        this.windowHeight =  jQuery(window).height();
	        this.windowWidth = jQuery(window).width();
	        //this.wrap = jQuery('.wrap').css('width', 640 - 90 + jQuery(window).width() + 'px');
	        this.wrap = jQuery('.wrap').css('width', 320 - 45 + jQuery(window).width() + 'px');
	        this.wrapInner = this.wrap.find('.wrap_inner').css('width', jQuery(window).width() + 'px');
	        this.leftsidebar = this.wrap.find('.nav_sideBar').css('height', jQuery(window).height() + 'px');
	        this.leftsidebar.find('.nav_side').css('height', '100%');
	        this.dim = this.wrapInner.find('.dim');
	        this.closeBtn = this.wrap.find('.sideClose');
	        this.opened = false;
	        if(isGinger) {
	            this.leftsidebar.find('.nav_side').addClass('overthrow');
	        };
	        this.addEvent();
	        resizeLists.push(this.resize);

			/* alert(jQuery(window).width()); */	//2016-08-03
	    },

	    addEvent: function(){
	        this.closeBtn.on('click', function(){ sidebar.close(); });
	        this.dim.on('click', function(){ sidebar.close(); });
	    },

	    open: function(paramType){
	        if(paramType == 'c') {
	            if(isLowAndroid) this.wrap.css({'left':'0px'});
	            else this.wrap.css('transform','translate3d(275px,0,0)');
	            this.leftsidebar.css({'height':jQuery(window).height() + 'px'});
	            setTimeout(function(){sidebar.leftsidebar.find('.sideClose').css('transform','translate3d(45px, 0, 0)');}, 250);
	            this.leftsidebar.find('.nav_side').css('height', '100%');
	        } else if(paramType == 'm') {
	            if(isLowAndroid) this.wrap.css({'left':'-550px'});
	            else this.wrap.css('transform','translate3d(-275px,0,0)');
	            this.rightsidebar.css({'height':jQuery(window).height() + 'px'});
	            setTimeout(function(){sidebar.rightsidebar.find('.sideClose').css('transform','translate3d(-45px, 0, 0)');}, 250);
	            this.rightsidebar.find('.myp_side').css('height', '100%');
	        }
	        this.wrap.find('.wrap_inner').css({'height':jQuery(window).height() + 'px', 'top':'0px'});
	        this.dim.show();

	        goods.optionBox.active && goods.optionBox.hideBox();
	        ui_more.active && ui_more.removeEvent();
	        enableFloating = false;
	        this.opened = true;

			float_header.side_open();			//2016-06-28
	    },
	    close: function(){
	        this.closeBtn.css('transform','translate3d(0,0,0)');
	        if(isLowAndroid) this.wrap.css({'left':'-275px'});
			else this.wrap.css('transform','');
	        /* else this.wrap.css('transform','translate3d(0,0,0)'); */		//2016-06-01
	        setTimeout(function(){ sidebar.wrapInner.css({'height':'auto'}) }, 250);
	        this.dim.hide();

	        goods.optionBox.active && goods.optionBox.showBox();
	        ui_more.active && ui_more.addEvent();
	        enableFloating = true;
	        this.opened = false;

			float_header.side_close();			//2016-06-28
	    },
	    resize: function(){
	        sidebar.windowHeight = jQuery(window).height();
	        sidebar.windowWidth = jQuery(window).width();
	        //sidebar.wrap.css('width',640 - 90 + sidebar.windowWidth + 'px');
	        sidebar.wrap.css('width',320 - 45 + sidebar.windowWidth + 'px');
	        sidebar.wrapInner.css({'width':sidebar.windowWidth + 'px', 'top':'0px'});
	        if(sidebar.opened) {
	            sidebar.wrapInner.css('height',sidebar.windowHeight + 'px');
	            sidebar.leftsidebar.css('height',sidebar.windowHeight +'px');
	            sidebar.dim.css({'top':0, 'left':0, 'width':'100%', 'height':'100%'});
	        }
	    }
	};
	if(isGinger) setTimeout( function(){ sidebar.init(); }, 1000);
	else sidebar.init();
	jQuery('a.nav_aside').on('click', function(){ sidebar.open('c'); });
/* end of 웹 : 사이드바 */
}else{
	/* 앱용 : 사이드바 좌 오픈 클로즈 함수  */  //2016-07-14
	sidebar = {
	    init: function(){
	        this.windowHeight =  jQuery(window).height();
	        this.windowWidth = jQuery(window).width();
			//2016-07-14
	        this.windowSnb = jQuery(window).width() - 45;
			$('.nav_sideBar').css('width', this.windowSnb+'px');
			$('.nav_sideBar .sideClose').css('left', (this.windowSnb-45)+'px');
			//2016-07-14
	        this.wrap = jQuery('.wrap').css('width', 640 - 90 + jQuery(window).width() + 'px').css('left', -this.windowSnb+'px');
	        this.wrapInner = this.wrap.find('.wrap_inner').css('width', jQuery(window).width() + 'px');
	        this.leftsidebar = this.wrap.find('.nav_sideBar').css('height', jQuery(window).height() + 'px');
	        this.leftsidebar.find('.nav_side').css('height', '100%');
	        this.dim = this.wrapInner.find('.dim');
	        this.closeBtn = this.wrap.find('.sideClose');
	        this.opened = false;
	        if(isGinger) {
	            this.leftsidebar.find('.nav_side').addClass('overthrow');
	        };
	        this.addEvent();
	    },

	    addEvent: function(){
	        this.closeBtn.on('click', function(){ sidebar.close(); });
	        this.dim.on('click', function(){ sidebar.close(); });
	    },

	    open: function(paramType){
	        if(paramType == 'c') {
	            if(isLowAndroid) this.wrap.css({'left':'0px'});
	            //else this.wrap.css('transform','translate3d(275px,0,0)');
				else this.wrap.css('transform','translate3d('+sidebar.windowSnb+'px,0,0)'); //2016-07-14
	            this.leftsidebar.css({'height':jQuery(window).height() + 'px'});
	            setTimeout(function(){sidebar.leftsidebar.find('.sideClose').css('transform','translate3d(45px, 0, 0)');}, 300);
	            this.leftsidebar.find('.nav_side').css('height', '100%');
	        } else if(paramType == 'm') {
	            if(isLowAndroid) this.wrap.css({'left':'-550px'});
	            else this.wrap.css('transform','translate3d(-275px,0,0)');
	            this.rightsidebar.css({'height':jQuery(window).height() + 'px'});
	            setTimeout(function(){sidebar.rightsidebar.find('.sideClose').css('transform','translate3d(-45px, 0, 0)');}, 300);
	            this.rightsidebar.find('.myp_side').css('height', '100%');
	        }
	        this.wrap.find('.wrap_inner').css({'height':jQuery(window).height() + 'px', 'top':'0px'});
	        this.dim.show();

	        goods.optionBox.active && goods.optionBox.hideBox();
	        ui_more.active && ui_more.removeEvent();
	        enableFloating = false;
	        this.opened = true;

			float_header.side_open();
	    },
	    close: function(){
	        this.closeBtn.css('transform','translate3d(0,0,0)');
	        if(isLowAndroid) this.wrap.css({'left':-this.windowSnb+'px'});
			else this.wrap.css('transform','');
	        setTimeout(function(){ sidebar.wrapInner.css({'height':'auto'}) }, 300);
	        this.dim.hide();

	        goods.optionBox.active && goods.optionBox.showBox();
	        ui_more.active && ui_more.addEvent();
	        enableFloating = true;
	        this.opened = false;

			float_header.side_close();
	    }
	};
	if(isGinger) setTimeout( function(){ sidebar.init(); }, 1000);
	else sidebar.init();
	jQuery('a.nav_aside').on('click', function(){ sidebar.open('c'); });
	/* end of 앱용 : 사이드바 */
}



/*로그인 포커스*/
jQuery('span.inputBox').on({
    'focusin': function(){ jQuery(this).addClass('focus'); },
    'focusout': function(){ jQuery(this).removeClass('focus'); }
});
/* end of 로그인 포커스 */

/* 검색버튼 & 검색바 */		//2016-06-23
var ui_search = {
    init: function(){
		this.searchBtn = jQuery('a.search');
        this.searchBar = jQuery('div.searchZone');
        this.addEvent();
    },

    addEvent: function(){
        this.searchBtn.on('click', function(){
            if(jQuery(this).hasClass('active')) ui_search.hideSearchBar();
            else ui_search.viewSearchBar();
        });
    },

    viewSearchBar: function(){
    	if(jQuery('a.search').length) this.searchBtn.addClass('active');
        this.searchBar.show().find('input[type="text"]').focus();
		ui_search.dimEvent();
    },

    hideSearchBar: function(){
    	if(jQuery('a.search').length) this.searchBtn.removeClass('active')
        this.searchBar.hide().find('input[type="text"]').blur();
		$(".dim").hide();
    },

	dimEvent: function(){
		$(".dim").show();
		$(window).scrollTop(0);
		if (navigator.userAgent.match("iPhone") != null && $('.header').hasClass('detail')) {
			$('.wrap_inner').css('height', 'auto');
		} else {
			$('.wrap_inner').css('height', $(window).height());
		}								//2016-07-29
		$('.floating_btn_top').hide();	//2016-06-30
		float_header.side_open();

		$(".dim, .search_list dl dd .btn a").click(function(){
			ui_search.hideSearchBar();
			float_header.side_close();
			$('.wrap_inner').css('height', 'auto');
			$('.floating_btn_top').show(); //2016-06-30
		});
    }
};
jQuery('div.searchZone').length && ui_search.init();
/* end of 검색버튼 & 검색바 */

/* UI - 탭 */
var ui_tab = {
    init: function(){
        this.tabBtnWrap = jQuery('.ui-tab-btns');
        this.tabBtnWrap.each(function(i,el){
            ui_tab.addEvent(jQuery(el));
        });
    },

    addEvent: function(paramBtnWrap){
        var tabBtnList = paramBtnWrap.find("[class!='ui-tab-enabled']").find('a').css('transition', 'all 300ms');
        tabBtnList.length && tabBtnList.on('click', function(){
            var btn = jQuery(this);
            if(btn.hasClass('disabled') || btn.hasClass('currentrent')) return;

            console.log(paramBtnWrap.parent().attr('class').indexOf('tab_wrap') );
            var btnWrapParent = (paramBtnWrap.parent().attr('class').indexOf('tab_wrap') != -1)?paramBtnWrap:paramBtnWrap.parent();
            var tab = (btnWrapParent.find('.ui-tab-content').size() > 0)?btnWrapParent.find('.ui-tab-content'):btnWrapParent.nextAll('.ui-tab-content');

			var targets = tab.hide();
			btn.addClass('current').parent().siblings().find('a').removeClass('current');
			console.log(btnWrapParent);
			if(btn.attr('data-tab-target') == undefined) {
			var idx = btn.parent().index();
			targets.eq(idx).fadeIn();
            } else {
                jQuery('#'+btn.attr('data-tab-target')).fadeIn();
            }
        });
    }
};
jQuery('.ui-tab-btns').length && ui_tab.init();
/* end of UI - TAB  */

/* UI - accordion */ //2016-07-21 수정
var ui_accordion = {
    init: function(){
        this.accordionBtn = jQuery('.ui-accordion-btn:not(".ui-evt-bound")');
		if($('.mypage_wrap').length) {this.onlyQnaEvent(); return false;}
		this.addEvent();
    },
    addEvent: function(){
        this.accordionBtn.on('click', function(){
            var acdnWrap = jQuery(this).parent();
            var siblings = acdnWrap.siblings();
            if(acdnWrap.hasClass('active')) {
            	acdnWrap.removeClass('active');
            }
            else{
            	siblings.removeClass('active');
            	acdnWrap.addClass('active');
            	acdnWrap.find("input").first().focus();
            }
        }).addClass('ui-evt-bound');
    },
	onlyQnaEvent: function(){
        this.accordionBtn.on('click', function(){
            var acdnWrap = jQuery(this).parent();
            if(acdnWrap.hasClass('active')) {
            	acdnWrap.removeClass('active');
            }
            else{
				$('.qnaList').removeClass('active');
            	acdnWrap.addClass('active');
            }
        })
    },
};
jQuery('.ui-accordion-btn').length && ui_accordion.init();


/* UI - switch */
var ui_switch = {
    init: function(){
        this.switchBtn = jQuery('.ui-switch-btn:not(".ui-evt-bound")');
        this.switchBtn.each(function(i,el){
            ui_switch.addEvent(el);
        });
    },

    addEvent: function(paramElement){
        jQuery(paramElement).on('click', function(){
            var btn = jQuery(this);
            var target = (btn.attr('data-target') == undefined)? btn.next() : jQuery('#'+btn.attr('data-target'));
            if(btn.hasClass('active')){
                btn.removeClass('active');
                target.hide();
            } else {
                btn.addClass('active');
                target.show();
            }
        }).addClass('ui-evt-bound');
    }
};
jQuery('.ui-switch-btn').length && ui_switch.init();
/* end of UI - accordion  */

/* UI - layer popup */
var ui_pop = {
    init: function(){
        this.popbtn = jQuery('.ui-pop-btn');
        this.popWrap = jQuery('.popup_wrap').hide();
        this.popWrap.children().hide();
        this.dim = this.popWrap.find('.dim');
        this.pop = null;
        resizeLists.push(this.resize);
        this.addEvent();
    },

    addEvent: function(){
        this.popbtn.on('click', function(){ ui_pop.open(jQuery(this).attr('data-pop-id')); });
        this.popWrap.find('.layClose').on('click', function(){ ui_pop.close(); });
        this.popWrap.find('.btnClose').on('click', function(){ ui_pop.close(); });
    },

    open: function(paramId){
        this.popWrap.fadeIn();
        this.pop = jQuery('#'+paramId).show();
        if(this.pop.outerHeight(true) > jQuery(window).height()) this.pop.css('top', 0 + 'px');
        else this.pop.css('top', (jQuery(window).height() - (this.pop.outerHeight(true)))/2 + 'px');
        this.dim.show();
        this.freeze();
    },

    close: function(){
        this.unfreeze();
        this.popWrap.fadeOut('fast', function(){ ui_pop.popWrap.children().hide(); });
        this.pop = null;
    },

    freeze: function(){
        jQuery('body').css({'overflow':'hidden', height:jQuery(window).height()+'px'});
    },

    unfreeze: function(){
        jQuery('body').css({'overflow':'visible', height:'auto'});
    },

    resize: function(){
        if(ui_pop.pop != null) ui_pop.pop.css('top', (jQuery(window).height() - (ui_pop.pop.outerHeight(true)))/2 + 'px');
    }
};
jQuery('.popup_wrap').length && ui_pop.init();
/* end of UI - pop  */


/*
 * 상세 - 수량 선택
 * 스테퍼가 여러개가 동적으로 추가될때는 'ui_stepper.init()' 호출(한 개씩 추가될때 사용해도 상관없음)
 * 한 개씩 추가될때는 'ui_stepper.addEvent(ui-stepper객체)' 호출
 */
var ui_stepper = {
    init: function(){
        this.stepperList = jQuery('.ui-stepper:not(".ui-evt-bound")');
        this.stepperList.each(function(i, el){
            ui_stepper.addEvent(el);
        });
    },

    addEvent: function(paramEl){
        var stepperItem = jQuery(paramEl).addClass('ui-evt-bound'),
            stepperInput = stepperItem.find('input[type="number"]'),
            max = parseInt(stepperInput.attr('max')),
            min = parseInt(stepperInput.attr('min'));
        stepperItem.find('.minus').on('click', function(){
            if(parseInt(stepperInput.val()) > min) stepperInput.val(parseInt(stepperInput.val()) - 1);
        });
        stepperItem.find('.plus').on('click', function(){
            if(parseInt(stepperInput.val()) < max) stepperInput.val(parseInt(stepperInput.val()) + 1);
        });
    }
};
jQuery('.ui-stepper').length && ui_stepper.init();
/* end of 상세 - 수량 선택  */

/* 결제 - 현금영수증 발행 */
var ui_taxsave = {
    init: function(){
        this.select_taxsave = jQuery('.taxsave_area').find(":radio[name='taxsave1']");
        this.content = jQuery('.taxsave_print');
        this.numberSelectbox = this.content.find('.ui-select-number');
        this.addEvent();
    },

    addEvent: function(){
        this.select_taxsave.on('change', function(){
            var selectedId1 = jQuery('input:radio[name="taxsave1"]:checked').attr('id');
            if(selectedId1 == 'taxsave11') ui_taxsave.content.show();
            else if(selectedId1 == 'taxsave12') ui_taxsave.content.hide();
        });

        this.numberSelectbox.on('change', function() {
            var selectedId = jQuery(this).find('option:selected').attr('id');
            if(selectedId == 'sel_jumin'){
                ui_taxsave.content.find('.phone_area').hide();
                ui_taxsave.content.find('.jumin_area').show();
            } else if(selectedId == 'sel_phone'){
                ui_taxsave.content.find('.phone_area').show();
                ui_taxsave.content.find('.jumin_area').hide();
            }
        });
    }
};
jQuery('.taxsave_area').length && ui_taxsave.init();
/* end of 결제 - 현금영수증 발행  */

/* 마이페이지 - 커스텀 */
var mypage = {
    qna: {
        init: function(){
            this.qnaEditBtn = jQuery('.ui-mypage-qna-edit-btn');
            this.addEvent();
        },

        addEvent: function(){
            this.qnaEditBtn.on('click', function(){
                var target = jQuery(this).parents('.qnaList').hide().next('.qnaWrite');
                target.show();
                var cancelBtn = target.find('.ui-mypage-qna-edit-cancel');
                cancelBtn.on('click', function(){ target.hide().prev('.qnaList').show(); cancelBtn.off('click'); });
            })
        }
    },

    cart: {
        //카트
        init: function(){
            this.switchBtn = jQuery('.ui-mypage-switch:not(".ui-evt-bound")');
            this.switchBtn.each(function(i,el){
                mypage.cart.addEvent(el);
            });

        },

        addEvent: function(paramElement){
            jQuery(paramElement).on('click', function(){
                var btn = jQuery(this);
                var target = (btn.attr('data-target') == undefined)? btn.next() : jQuery('#'+btn.attr('data-target'));
                if(btn.hasClass('active')){
                    btn.removeClass('active');
                    target.hide();
                } else {
					btn.addClass('active');
					target.show();

					/* 2016-08-04 */
					var wH = $(window).height();
					var hTop = $("html, body").offset().top;
					var oTop = event.clientY;
					var mg = wH - oTop;
					if (mg < 100 ) {
						$("html, body").animate({scrollTop:btn.offset().top - (wH-300)}, 300);
					} /* 2016-08-04 */
                }
            })
        }
    },

    order_detail: {
        init: function(){
            this.chgAddrBtn = jQuery('.ui-orderdetail-switch');
            this.offtarget = jQuery('#chg-addr-off');
            this.ontarget = jQuery('#chg-addr-on');
            this.cancelBtn = this.ontarget.find('.ui-chg-addr-cancel');
            this.chgAddrBtnTop = this.chgAddrBtn.offset().top;
            this.addEvent();
        },

        addEvent: function(){
            var od = this;
            this.chgAddrBtn.on('click', function(){
                od.ontarget.show();
                od.offtarget.hide();
            });
            this.cancelBtn.on('click', function(){
                od.ontarget.hide();
                od.offtarget.show();
                jQuery('html, body').animate({'scrollTop': od.chgAddrBtnTop - 20}, 200);
            })
        }
    },

    change_counsel: {
        init: function(){
            this.chgCounselBtn = jQuery('.ui-chg-counsel-switch');
            this.offtarget = jQuery('#chg-counsel-off');
            this.ontarget = jQuery('#chg-counsel-on');
            this.cancelBtn = this.ontarget.find('.ui-chg-counsel-cancel');
            this.chgCounselBtnTop = this.chgCounselBtn.offset().top;
            this.addEvent();
        },

        addEvent: function(){
            var cc = this;
            this.chgCounselBtn.on('click', function(){
                cc.chgCounselBtn.hide();
                cc.ontarget.show();
                cc.offtarget.hide();
            });
            this.cancelBtn.on('click', function(){
                cc.chgCounselBtn.show();
                cc.ontarget.hide();
                cc.offtarget.show();
                jQuery('html, body').animate({'scrollTop': cc.chgCounselBtnTop - 20}, 200);
            })
        }
    },

    star_score: {
        init: function(){
/*20150519 변경*/
            this.stars = jQuery('ul.star_score');
            this.stars.find('li').children('span').css('opacity',1).addClass('active');
/*20150519 변경*/
            this.addEvent();
        },

        addEvent: function(){
/*20150519 변경*/
            this.stars.each(function(n) {
				$(this).find('li span').bind('click', function(e){
	                mypage.star_score.setScore(n, jQuery(this).parent().index());
				});
            });
/*20150519 변경*/
        },

        setScore: function(sIdx, paramIdx){
/*20150519 변경*/
            var starScore = this.stars.eq(sIdx), cnt = 0;
            for(var i=0; i<5; i++){
                if(i <= paramIdx){
                    if(starScore.find('li').eq(i).children('span').hasClass('active')){
                        cnt += 1;
                    } else {
                        setTimeout(function(){ starScore.find('li').eq(cnt).children('span').css('opacity',0).addClass('active').animate({'opacity':1}, 200); cnt+=1; }, i*50);
                    }
                } else {
                    starScore.find('li').eq(i).children('span').removeClass('active');
                }
            }
/*20150519 변경*/
        }
    },

    change_addr: {
        init: function(){
            this.chgAddrBtn = jQuery('.ui-chg-addr-switch');
            this.offtarget = jQuery('#chg-addr-off');
            this.ontarget = jQuery('#chg-addr-on');
            this.cancelBtn = this.ontarget.find('.ui-chg-addr-cancel');
            this.chgAddrBtnTop = this.chgAddrBtn.offset().top;
            this.addEvent();
        },

        addEvent: function(){
            var ca = this;
            this.chgAddrBtn.on('click', function(){
                ca.chgAddrBtn.hide();
                ca.ontarget.show();
                ca.offtarget.hide();
            });
            this.cancelBtn.on('click', function(){
                ca.chgAddrBtn.show();
                ca.ontarget.hide();
                ca.offtarget.show();
                jQuery('html, body').animate({'scrollTop': ca.chgAddrBtnTop - 20}, 200);
            })
        }
    }
};
jQuery('.ui-mypage-switch').length && mypage.cart.init();
jQuery('.ui-chg-addr-switch').length && mypage.change_addr.init();
jQuery('.ui-chg-counsel-switch').length && mypage.change_counsel.init();
jQuery('ul.star_score').length && mypage.star_score.init();
jQuery('.ui-mypage-qna-edit-btn').length && mypage.qna.init();
/* end of 마이페이지 - 커스텀  */

/*
 * 제품 -
 * optionBox : 상세 옵션
 * list : 상품리스트
*/

/* 상품상세 닫기 버튼 */
$(".ui-detail-dragbtn a").click(function () {
	$('.ui-detail-optbox').css("max-height","0");
});
$(".btnZone .btns_wrap .btn").click(function () {
	$('.ui-detail-optbox').css("max-height","320px");
});

var goods = {
	    optionBox: {
	        active: false,
	        init: function(){
	            if(isGinger) {
	                jQuery('.ui-detail-option').remove();
	                jQuery('.ui-boxwrap').css('display', 'block');
	                return;
	            } else {
	                jQuery('.ui-boxwrap').remove();
	            }
	            this.active = true;
	            this.optionWrap = jQuery('.ui-detail-option').css({'transition':'bottom 300ms ease', 'display':'block'});
	            this.dragBtn = this.optionWrap.find('.ui-detail-dragbtn');
	            this.optBox = this.optionWrap.find('.ui-detail-optbox').css({'transition':'max-height 500ms', 'overflow':'hidden', 'max-height': 0, 'display':'block'});
	            this.btnBox = this.optionWrap.find('.ui-detail-btnbox');
	            this.buyBtn = this.btnBox.find('.btn-buy');
	            this.orderBtn = this.btnBox.find('.btn-order');
	            this.cartBtn = this.btnBox.find('.btn-cart');
	            this.gocartBtn = this.btnBox.find('.btn-gocart');
	            this.dragBtn.length && addTouchUI('ui-detail-dragbtn', this.dragStart, this.dragMove, this.dragEnd);
	            this.addEvent();

	            if(!isGinger) float_topBtn.css('transform', 'translate(0px, -45px)');	//2016-07-21 'translate(0px, -70px)'
	            jQuery('footer').addClass('details');
	        },

	        addEvent: function(){
	            var optionBox = this;
	            this.buyBtn.on('click', function(evt){
	                if(!optionBox.optionWrap.hasClass('open')){
	                    optionBox.open();
	                    evt.preventDefault();
	                };
	            });
	            this.cartBtn.on('click', function(evt){
	                if(!optionBox.optionWrap.hasClass('open')){
	                    optionBox.open();
	                    evt.preventDefault();
	                };
	            });

	            this.dragBtn.on({
	                'touchstart': this.touchStart, 'touchmove': this.touchMove, 'touchend': this.touchEnd
	            });

	            jQuery('.qnaWrite').find("input, select, textarea").on({
	                'focusin': function () {
	                    enableFloating = false;
	                    goods.optionBox.optionWrap.css('display', 'none');
	                    float_topBtn.css('display', 'none');
	                },
	                'focusout': function () {
	                    enableFloating = true;
	                    goods.optionBox.optionWrap.css('display', 'block');
	                    float_topBtn.css('display', 'block');
	                }
	            });
	        },

	        open: function(){
	            this.optionWrap.addClass('open');
	            this.optBox.css('max-height', 320+'px');
	            this.buyBtn.hide();
	            this.orderBtn.show();
	            this.cartBtn.hide();
	            this.gocartBtn.show();
	        },

	        close: function(){
	            this.optionWrap.removeClass('open');
	            this.optBox.css('max-height', 0);
	            this.buyBtn.show();
	            this.orderBtn.hide();
	            this.cartBtn.show();
	            this.gocartBtn.hide();
	        },

	        dragStart: function(event){
	            var option = goods.optionBox;
	            option.optBox.css({320:'0ms'});
	            option.dragStartHeight = option.optBox.height();
	        },

	        dragMove: function(delta){
	            var option = goods.optionBox;
	            if(option.optionWrap.hasClass('open')){
	                if(delta.y < 0) return;
	                option.optBox.css('max-height', option.dragStartHeight - delta.y +'px');
	            } else {
	                if(delta.y > 0) return;
	                option.optBox.css('max-height', 0 - delta.y +'px');
	            }
	        },

	        dragEnd: function(event){
	            var option = goods.optionBox;
	            option.optBox.css({'transition':'500ms'});
	            if(option.optionWrap.hasClass('open')){
	                if(delta.y < 50) {
	                    option.optBox.css('max-height', 320 +'px');
	                } else {
	                    option.close();
	                }
	            } else {
	                if(delta.y > -50) {
	                    option.optBox.css('max-height', 0 +'px');
	                } else {
	                    option.open();
	                }
	            }
	        },

	        hideBox: function(){
	            this.optionWrap.css({'transition-duration':'0ms'}).css({'bottom':'-320px'});
	        },

	        showBox: function(){
	            this.optionWrap.css({'transition-duration':'300ms', 'bottom':'0px'});
	        }
	    },

	    list: {
	        init: function () {
	            this.listBtn = jQuery('.ui-goods-list-btn');
	            this.addEvent();
	        },

	        addEvent: function(){
	            this.listBtn.on('click', function(){
	                var btn = jQuery(this);
	                var target = jQuery('#'+btn.attr('data-target'));
	                if(btn.hasClass('active')) return;
	                goods.list.listBtn.removeClass('active');
	                btn.addClass('active');
	                target.fadeIn().siblings().hide();
	            });
	        }
	    },
		//2016-06-14 : 자세히 보기
		btn_detail: {
			init: function () {
	            this.listBtn = $('.details_wrap .btn_detail');
	            this.addEvent();
	        },
			addEvent: function(){
	            this.listBtn.on('click', function(){
	                var btn = $(this);
	                var target = $('.discount_detail');
	                if(btn.hasClass('open')) {
						btn.removeClass('open');
						btn.find('a').text('자세히보기');
						target.slideUp();
					} else {
						btn.addClass('open');
						btn.find('a').text('간략보기');
						target.slideDown();
					}
	            });
	        }
		},
		//2018-03-06 : 자세히 보기 new
		btn_detail02: {
			init: function () {
	            this.listBtn = $('.details_wrap .btn_detail02');
	            this.addEvent();
	        },
			addEvent: function(){
	            this.listBtn.on('click', function(e){
	            	e.preventDefault();
	                var btn = $(this);
	                var target = $('.discount_detail');
	                if(btn.hasClass('open')) {
						btn.removeClass('open');
						target.slideUp();
					} else {
						btn.addClass('open');
						target.slideDown();
					}
	            });
	        }
		}
	};
jQuery('.ui-detail-option').length && goods.optionBox.init();
jQuery('.ui-goods-list-btn').length && goods.list.init();
jQuery('.btn_detail').length && goods.btn_detail.init();
jQuery('.btn_detail02').length && goods.btn_detail02.init(); //2018-03-06 : 자세히 보기 new
/* end of 오케이캐시백 적립 받기  */


/* main - 편성표 */
var main = {
    schedule: {
        init: function(){
            this.goodsList = jQuery('.scdList').find('.goods_wrap');
            this.goodsList.each(function(i, el){ main.schedule.addEvent(el); });
			// jQuery('.scdList').find('.tvOnair').length && this.goOnair();
        },

        addEvent: function(paramEl){
            var goodsItem = jQuery(paramEl),
                goodsTogetherList = goodsItem.find('.together_list'),
                openBtn = goodsItem.find('.btn.viewmore');
            if(goodsTogetherList.find('li').length > 6){
                goodsTogetherList.find('li').hide();
                openBtn.on('click', function(){
                    goodsTogetherList.find('li').slideDown();
                    openBtn.hide();
                });
            } else {
                openBtn.hide();
            }
        },

        /*
        goOnair: function(){
            var onAirTarget = jQuery('.scdList').find('.tvOnair');
            //onAirTarget.find('.goods_wrap').find('.btn').trigger('click');

            var headerSize = 0;
            if($('.header').length) headerSize = $('.header').height();

            // 2016-07-22  애니메이션 제거
            /* if(isGinger) setTimeout(function(){ jQuery('html, body').animate({'scrollTop': onAirTarget.offset().top -(headerSize + 40)}, 300); }, 1000);
            else jQuery('html, body').animate({'scrollTop': onAirTarget.offset().top - (headerSize + 50)}, 300);

			var loc = onAirTarget.offset().top - (headerSize + 50);
            $('html, body').scrollTop(loc);
        }
		*/
    }
};
$('.scdList').length && main.schedule.init();

/*
 * 바닥치기!
 * ui_more_container 클래스가 있으면 더보기 작동
 */
var ui_more = {
    active: false,
    init: function(paramCallback){
        this.active = true;
        this.moreCallback = paramCallback;
        this.addEvent();
    },

    addEvent: function(){
        jQuery(window).on('scroll', function(){
            if(jQuery(document).height() - jQuery('footer').height() < jQuery(window).scrollTop() + jQuery(window).height()) {
                ui_more.moreCallback();
            }
        });
    },

    removeEvent: function(){
        jQuery(window).off('scroll');
    }
};
//jQuery('.ui_more_container').length && ui_more.init(testAddList);


/*
 * 더보기 로딩
 * attachLoading() : 로딩보이기
 * detachLoading() : 로딩없애기
 */
//var ui_loading = {
//    active: false,
//    init: function(){
//        this.loading = jQuery('.ui-more-loading');
//        if(isGinger) this.loading.find('img').attr('src', this.loading.find('img').attr('src').replace('png', 'gif'));
//    },
//    attachLoading: function(){ this.loading.addClass('active');},
//    detachLoading: function(){ this.loading.removeClass('active');}
//};
//jQuery('.ui-more-loading').length && ui_loading.init();

var ui_loading = {
		active: false,
		init: function(){
			this.loading = jQuery('#goodsListLoadingZone');
			if(isGinger) this.loading.find('img').attr('src', this.loading.find('img').attr('src').replace('png', 'gif'));
		},
		attachLoading: function(){
			//this.loading.show();
			},
		detachLoading: function(){
			//this.loading.hide();
			}
};
jQuery('#goodsListLoadingZone').length && ui_loading.init();


/*
 * placeholder
 */
var ui_placeholder = {
    init: function(){
        this.placeholder = jQuery('.ui-placeholder');
        this.addEvent();
    },
    addEvent: function(){
        this.placeholder.on('click', function(){ jQuery(this).prev().focus();})
        this.placeholder.prev().on({
            'focusin':function(){ ui_placeholder.placeholder.hide();},
            'focusout':function(){ this.value.length < 1 && ui_placeholder.placeholder.show();}
        });
    }
};
jQuery('.ui-placeholder').length && ui_placeholder.init();


/* 2015-05-15 추가 */
/* disabled style */
var disabledwrap = $("input:disabled").parent().addClass("disabled")

/* category fulldown */
$(".view_category").click(function () {
	if ($(".ctgr_fulldown").is(":hidden")) {
		$(this).addClass("show");
		$(".ctgr_fulldown").slideDown("slow");
		$(".wrap").addClass("dimmed");
		$(".dim").show();
	} else {
		$(this).removeClass("show");
		$(".ctgr_fulldown").slideUp();
		$(".wrap").removeClass("dimmed");
		$(".dim").hide();
	}
});
$(".dim").click(function () {
	$(".view_category").removeClass("show");
	$(".ctgr_fulldown").slideUp();
	$(".wrap").removeClass("dimmed");
});

/* accordion */
$(".accordion_btn").click(function () {
	var target = $(this).parent();
	var obj = $(target).parent();
	$(obj).siblings(".accordion_wrap").toggleClass("active");
});

/* 기간조회 : 리스트 로딩시 문제 때문에 추가 */
$(".ui-tab-btns-period li:nth-of-type(4) a").click(function () {
	var obj1 = $(this).parent();
	var obj = $(obj1).siblings('li');
	$(obj).children('a').removeClass("current");
	$(this).addClass("current");
});

/* placeholder 삭제 */
/*
$("input").click(function () {
	$(this).removeAttr("placeholder");
});
$("textarea").click(function () {
	$(this).removeAttr("placeholder");
});
*/

/* home top banner "close" button */
$(".topbanner .closebanner a").click(function () {
	$(".topbanner").hide();
});

/* 상품상세 탭메뉴 위치 탑에 앵커 */
$(".screentop_wrap .tab_group a").click(function () {
	var goodsInfoTab = $(".screentop_wrap").offset();
	$("html, body").animate({scrollTop:goodsInfoTab.top},300);
});
goodsInfoPosition = $(".screentop_wrap").offset();
goodsInfoPositionAct = function () {
	// 탭메뉴 포지션 픽스
	var scrollT = $(window).scrollTop();
	var menuH = goodsInfoPosition.top;
	if (scrollT >= menuH ) {
		$(".screentop_wrap .tab_group").addClass("fixed")
		$(".screentop_wrap .tab_group").hide();
		$(".screentop_wrap .tab_group.fixed").show();
	}else{
		$(".screentop_wrap .tab_group").removeClass("fixed")
		goodsInfoPosition = $(".screentop_wrap").offset();

	}
	// ctn2높이 확대버튼 포지션 픽스
	var goodsInfoCtn2Pos = $(".toggleView #detail_tab2").offset();
	var ctn2T = goodsInfoCtn2Pos.top - 47;
	var ctn2H = ( $(".toggleView #detail_tab2").height() - 80);
	var ctn2B = ctn2T + ctn2H  ;
	if( scrollT > ctn2T  && scrollT < ctn2B ) {
		$(".floating_btn_zoom").addClass("fixed");
	}else{
		$(".floating_btn_zoom").removeClass("fixed");
	}
};
$(window).on("load resize scroll",function(){
	$(".screentop_wrap").length && goodsInfoPositionAct();
	setTimeout(function(){ $(".screentop_wrap").length && goodsInfoPositionAct(); }, 1000);
	//var timer = setInterval(goodsInfoPositionAct, 500);
});


//gnb
if ( $('.gnb').length ) {
	var currentMenu = $('.gnb ul li.current').index();
	var gnbType = $('.gnb').attr('class').slice(4);

	$(window).ready(function(){
		menuHandler.init(gnbType, currentMenu);
	});
}
var menuHandler = {	//2016-06-29
	init: function(elem, idx){
		menuHandler.move(elem, idx);
		$('#topNav li').removeClass('current').eq(idx).addClass('current');
		//tvbarDisplay.init(); //2018-03-26 추가
	},
	move: function(elem, idx){
		menuScroll = new iScroll('topNav');
		if (elem == 'main'){
			if(idx < 3){
				menuScroll.scrollTo(0, 0, 300);
			} else if($('.gnb').length == 5){
				menuScroll.scrollTo(0, 0, 300);
			} else {
				//menuScroll.scrollTo(menuScroll.maxScrollX, 0, 0);
				menuScroll.scrollToElement(document.querySelector('#topNav li:nth-child('+(idx)+')'), 0);
			}

		} else if (elem == 'cate'){
			if(idx>1){
				menuScroll.scrollToElement(document.querySelector('#topNav li:nth-child('+(idx)+')'), 0);
			}
		};
		//2018-02-12 스와이프메뉴 공백오류 수정추가
		var gnbtextLength = $('.gnb li').text().length;
		//console.log(gnbtextLength);
		if (gnbtextLength > 20){
			$('.gnb').removeClass('size_default').addClass('size_custom');
		}else if (gnbtextLength <= 20){
			$('.gnb').removeClass('size_custom').addClass('size_default');
		};
	},
	remove: function(){

	}
}


var float_header = {
	init: function(){
		$('.header').wrap("<div class='header_wrap'></div>");
		$('.header:not(.detail)').addClass('fixed');
		$('.gnb').wrap("<div class='gnb_wrap'></div>");
		$('.gnb').addClass('fixed');
		//$('.gnb:not(.sub)').addClass('fixed');	//2016-07-13
		//2018-03-21 추가
		$('.depthTit').wrap("<div class='depthTit_wrap'></div>");
		$('.depthTit').addClass('fixed');
	},
	side_open: function(){
		//$('.dim').show().height($(window).height());					//2016-07-22 테스트용
		$(window).scrollTop(0);
		$('.wrap').addClass('side_open');
		$('.header:not(.detail)').removeClass('fixed');
		$('.gnb').removeClass('fixed');
		$('.gnb').css('position','static');
		//2018-03-21 추가
		$('.depthTit').removeClass('fixed');
		$('.depthTit').css('position','static');
		$(window).on('scroll',function(){
			$('.header:not(.detail)').removeClass('fixed');
			$('.gnb').css('position','static');
			$('.depthTit').css('position','static');//2018-03-21 추가
		});
	},
	side_close: function(){
		$('.dim').hide();
		$(window).scrollTop(0);
		$('.wrap').removeClass('side_open');
		//$('.gnb').css('position','').addClass('fixed');				//2016-07-20 테스트용
		//headerHide.init(); //2018-03-27 추가
		$(window).on('scroll',function(){
			$('.header:not(.detail)').addClass('fixed');
			$('.gnb').addClass('fixed');
			$('.gnb').css('position','fixed');
			//2018-03-21 추가
			$('.depthTit').addClass('fixed');
			$('.depthTit').css('position','fixed');
		});
	}
};
$('.header, .gnb, .depthTit').length && float_header.init(); //2018-03-20 수정


var goods_list = {
	init: function () {
		this.listBtn = $('.btn_list_type');
		this.listBox = $('.goods_list_wrap');
		this.addEvent();
	},
	addEvent: function(){
		this.listBtn.on('click', function(){
			var btn = jQuery(this);
			if( btn.hasClass('list') ){
				$(this).attr('class','btn_list_type album');
				goods_list.listBox.attr('class','goods_list_wrap');
				jQuery.cookie('goodsListType', 'list');
			} else {
				$(this).attr('class','btn_list_type list');
				goods_list.listBox.attr('class','goods_list_wrap album');
				jQuery.cookie('goodsListType', 'album');
			}
		});
	}
}
$('.btn_list_type').length &&  goods_list.init();

//원데이 타임딜 시간 카운트 2018-04-03 수정
var countTimer = {
	init: function(){
		this.addEvent();
	},
	addEvent: function(){
		var time = setInterval(function() {
			var now = new Date().getTime();
			var distance = countDownDate - now;

			var days = Math.floor(distance / (1000 * 60 * 60 * 24));
			if((days == 0)){
		    	document.getElementById('days').style.display = 'none';
		    	document.getElementById('days_txt').style.display = 'none';
		    };
			var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
			if((hours + '').length == 1){
				hours = '0' + hours;
			};
			var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
			if((minutes + '').length == 1){
				minutes = '0' + minutes;
			};
			var seconds = Math.floor((distance % (1000 * 60)) / 1000);
			if((seconds + '').length == 1){
				seconds = '0' + seconds;
			};

			document.getElementById("days").innerHTML = days;
			document.getElementById("days_txt").innerHTML = "일";
			document.getElementById("times").innerHTML = hours + ":" + minutes + ":" + seconds;
			document.getElementById("txt").innerHTML = "남음";

			if (distance < 0) {
				clearInterval(time);
				document.getElementById("days").innerHTML = "기간만료";
				document.getElementById('days_txt').style.display = 'none';
				document.getElementById('times').style.display = 'none';
				document.getElementById('txt').style.display = 'none';
			}
		}, 1000);
	}
};
$('.count_wrap').length && countTimer.init();


//메뉴 depth 추가 2018-03-13
var navDepth = {
	init: function(){
		this.cateMenu = $('.depth_01');
		this.addEvent();
	},
	addEvent: function(){
		var depthSubList = $('.cate_depth_sublist');
		var navWidth = $('.category').width();
		var navWidthHalf = navWidth / 2;
		depthSubList.css({'width' : navWidth});
		depthSubList.hide();

		$('.category ul').children('li:odd').find('.cate_depth_sublist').css({'left': -navWidthHalf});
		$('.category ul').children('li:even').addClass('clear');

		this.cateMenu.on('click', function(e){
			var btn = jQuery(this);
			var sublist = btn.attr('href');
			if($(sublist).is(':visible')){
				btn.parent('li').removeClass('active');
				$(sublist).slideUp(300).removeClass("open");
			}else{
				$('.depth_01').parent('li').removeClass('active');
				btn.parent('li').addClass('active');
				$('.cate_depth_sublist').slideUp(300).removeClass("open");
				$(sublist).slideDown(300).addClass("open");
			}
			e.preventDefault();
		});
	}
};
$('.depth_01').length && navDepth.init();

//2018-03-21 추가
var indicatorHidn = {
	init: function(){
		this.addEvent();
	},
	addEvent: function(){
		if($('.cate_group .swiper-slide').length == 1){
			$('.cate_group .indicator').css({'display':'none'});
		};
		if($('.roll_cate .swiper-slide').length == 1){
			$('.roll_cate .indicator').css({'display':'none'});
		};

		var target_btn = $('.cate_group ol li a');
		$('.cate_group ol li').eq('0').children('a').addClass('on');
		target_btn.click(function(){
			target_btn.removeClass('on');
			$(this).addClass('on');
		});
	}
};

$('.cate_group, .roll_cate').length && indicatorHidn.init();

//메인팝업 js 추가 2018-04-03
var mainRollPop = {
	init: function(){
		this.addEvent();
		this.slider();
	},
	slider: function(){
		var slide = $('.rollpop').slick({
			dots: true,
			infinite: true,
			autoplay: true,
	  		autoplaySpeed: 3000
		});
		$('.slick_next').on('click', function() {
		    $('.rollpop').slick('slickNext');
		});
	},
	addEvent: function(){
		var item_length = $('.rollpop > div').length-1;
		var btn_next = $('.button_box .next');
		var btn_last = $('.button_box .last');
		$('.rollpop').on('beforeChange', function(event, slick, currentSlide, nextSlide){
			if(item_length == nextSlide){
				btn_next.removeClass('show');
				btn_last.addClass('show');
			}else{
				btn_next.addClass('show');
				btn_last.removeClass('show');
			}

		});
	}
};
$('.rollpop').length && mainRollPop.init();

var simple_tab = {
	init: function(){
		this.tabBtn = $('.tab_btn a');
		this.addEvent();
	},
	addEvent: function(){
		this.tabBtn.click(function(e){
			$('.tab_btn a').removeClass('on');
			$(this).addClass('on');

			var content = $(this).attr('href');
			$('.tab_cont .cont_detail').hide();
			$(content).show();
			e.preventDefault();
		});
	}
};
$('.tab_wrap').length && simple_tab.init();

//상품평 상세더보기
var simple_acco = {
	init: function(){
		this.addEvent();
	},
	addEvent: function(){
		$('.accordion_list li .accordion_tit').off('click').on('click', function() {
	        var myTop = $(this).offset().top - $(this).parent('li').css("padding-top").replace(/[^0-9]/g, "");
	        var myH = $('.header_wrap').outerHeight() + $('.gnb_wrap').outerHeight();
	        if($(this).parent().hasClass('view')) {
	            $(this).parent().removeClass('view');
	        } else {
	            $(this).parent().addClass('view');
	            $('html,body').stop().animate({ scrollTop : (myTop - myH) + 'px' }, 200);
	            if (typeof(openCall) == 'function') { openCall() } //open callback
	        }
	    });
	}
};
$('.accordion_list').length && simple_acco.init();

//상품평 사진 롤링
var photo_roll = {
	init: function(){
		this.addEvent();
	},
	addEvent: function(){
		var photo_slide =  new Swiper('.goods_photo', {
			pagination: {
				el: '.swiper-pagination',
				type: 'fraction',
			},
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
			observer: true,
			observeParents: true,
		});

		var winHei = $(window).height();
		$('.zoom_st .goods_photo').css({'height':winHei});
		$('.zoom_st .goods_photo').find('img').css({'max-height':winHei});
	}
};
$('.goods_photo').length && photo_roll.init();

//사진 업로드
var simple_popup = {
	init: function(){
		this.addEvent();
	},
	addEvent: function(){
		$('.pop_btn').click(function(){
			var pop = $(this).closest('.add_photoFile').find('.pop_wrap');
			if(!(pop.hasClass('show'))){
				pop.addClass('show');
			}
		});
		$('.pop_close').click(function(){
			$(this).closest('.pop_wrap').removeClass('show');
		});
	}
};
$('.pop_btn').length && simple_popup.init();

function loadImg(html, $target) {
    if (html.files && html.files[0]){
        var reader = new FileReader();
        reader.onload = function (e) {
            $target.css('display', '');
            $target.append('<div class="img_wrap"><img src="' + e.target.result + '" alt="" /><a href="javascript:void(0);" class="img_delete"></a></div>');
            $target.addClass('on');
        }
        reader.readAsDataURL(html.files[0]);
    }
    //console.log($target.find('input').val());
};

var del_photo = {
	init: function(){
		this.addEvent();
	},
	addEvent: function(){
		$('.add_photoFile li').click(function(){
			var target = $(this).children('.file_wrap');
			if(target.hasClass('on')){
				$(this).find('.img_wrap').detach();
				target.removeClass('on');
				target.find('input').val('');
			}
			//console.log(target.find('input').val());
		});
	}
};
$('.add_photoFile').length && del_photo.init();

var placeholder_line = {
	init: function(){
		this.addEvent();
	},
	addEvent: function(){
		$('.review_write .textarea1 textarea').watermark('· 상품평 작성시 적립금 200원 지급<br/>· 베스트 상품평 선정시 적립금 1,000원 지급<br/>&nbsp;(포토+상품평 50자 이상 작성)',
			{fallback: false}
		);
	}
};
$('.placeH_line').length && placeholder_line.init();

//S : 2018-03-26 추가
// var tvbarDisplay = {
// 	init: function(){
// 		this.addEvent();
// 	},
// 	addEvent: function(){
// 		var classById = $('#lnb1').attr('class');
// 		if(classById == 'current'){
// 			$(".tvDate").css({'display':'block'});
// 		}else{
// 			$(".tvDate").css({'display':'none'});
// 		};
// 	}
// };
// var tvbarFix = {
// 	init: function(){
// 		this.addEvent();
// 	},
// 	addEvent: function(){
// 		$(".tvDate").insertAfter($('.gnb_wrap'));
// 		$('.tvDate').wrap("<div class='tvDate_wrap'></div>");
// 		//$('.depthTit').addClass('fixed');
// 		$(".tvDate li a").click(function(){
// 			$(".tvDate").detach();
// 		});

// 		if(classById == 'current'){
// 			$(".tvDate").css({'display':'block'});
// 		}
// 	}
// };
// $(".tvDate").length && tvbarFix.init();
//E : 2018-03-26 추가

//S : 2018-03-27 추가
// var headerHide = {
// 	init: function(){
// 		this.addEvent();
// 	},
// 	addEvent:function(){
// 		var didScroll;
// 		var lastScrollTop = 0;
// 		var delta = 5;
// 		var navbarHeight = $('.header_wrap').outerHeight();
// 		$(window).scroll(function(event) {
// 		    didScroll = true;
// 		});
// 		setInterval(function() {
// 		    if (didScroll) {
// 		        hasScrolled();
// 		        didScroll = false;
// 		    }
// 		}, 250);

// 		function hasScrolled() {
// 	    	var st = $(this).scrollTop();
// 	    	// Make sure they scroll more than delta
// 	    	if(Math.abs(lastScrollTop - st) <= delta)
// 	    		return;

// 	    	if(st > lastScrollTop && st > navbarHeight){
// 	    		$('.header_wrap').removeClass('nav-down').addClass('nav-up');
// 	    		$('#contents').removeClass('nav-down').addClass('nav-up');
// 	    	}else{
// 	    		if(st + $(window).height() < $(document).height()) {
// 	    			$('.header_wrap').removeClass('nav-up').addClass('nav-down');
// 	    			$('#contents').removeClass('nav-up').addClass('nav-down');
// 	    		}
// 	    	}
// 	    	lastScrollTop = st;
// 	    }
// 	},
// 	resizeOn: function(){
// 		var windowW = $(window).outerWidth();
// 		$('.header_wrap').css('width',windowW);
// 	}
// };
// $('.header_wrap').length && headerHide.init();

// $(document).ready(function(){
// 	headerHide.resizeOn();
// 	$(window).resize(function(){
// 		headerHide.resizeOn();
// 	});
// });
//E : 2018-03-27 추가

// 도서문화상품권 팝업 2018-07-24
$(window).scroll(function (){
	scrpos = $(window).scrollTop();
});
$('.bnlife .fullwidth .ui-pop-btn').click(function(){
	var popScrpos = scrpos;
	$('.container').css({
		'overflow' : 'hidden',
		'height' : '100%',
		'position' : 'fixed'
	});
	console.log('pop'+popScrpos);
	$('.pop_bnlife .layClose').click(function(){
		$('.container').css({
			'overflow' : '',
			'height' : '',
			'position' : ''
		});
		$("html,body").scrollTop(popScrpos);
	});
});

//20180724 적립금 수정
$(".tab-term.ui-tab-btns li").click(function(){
	var perId = $(this).index();
	if(perId < 3){
		$(this).parent().siblings(".accordion_wrap").removeClass("active");
	}
});
$(".btn_period").click(function () {
	var target = $(this).parent();
	var obj = $(target).parent();
	$(obj).siblings(".accordion_wrap").toggleClass("active");
});
