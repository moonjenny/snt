/*
 * bshopping ui js - (c)bshopping,
 * bshopping ui js - (c)bshopping,
 */


/* 최소 높이값 지정  */
jQuery('.contents').css('min-height', jQuery(window).height() - jQuery('header').height() + 'px');

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
    jQuery('.contents').css('min-height', jQuery(window).height() - jQuery('header').height() + 'px');
    resizeLists.forEach(function(element, index){ element.call(); });
});
/* end of resize */

/* 사이드바 좌 오픈 클로즈 함수  */
var sidebar = {
    init: function(){
        this.windowHeight =  jQuery(window).height();
        this.windowWidth = jQuery(window).width();
        this.wrap = jQuery('.wrap').css('width', 640 - 90 + jQuery(window).width() + 'px');
        this.wrapInner = this.wrap.find('.wrap_inner').css('width', jQuery(window).width() + 'px');
        this.leftsidebar = this.wrap.find('.nav_sideBar').css('height', jQuery(window).height() + 'px');
        this.leftsidebar.find('.nav_side').css('height', '100%');
        this.rightsidebar = this.wrap.find('.myp_sideBar').css('height', jQuery(window).height() + 'px');
        this.rightsidebar.find('.myp_side').css('height', '100%');
        this.dim = this.wrapInner.find('> .dim');
        this.closeBtn = this.wrap.find('.sideClose');
        this.opened = false;
        if(isGinger) {
            this.leftsidebar.find('.nav_side').addClass('overthrow');
            this.rightsidebar.find('.myp_side').addClass('overthrow');
        };
        this.addEvent();
        resizeLists.push(this.resize);
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
    },

    close: function(){
        this.closeBtn.css('transform','translate3d(0,0,0)');
        if(isLowAndroid) this.wrap.css({'left':'-275px'});
        else this.wrap.css('transform','translate3d(0,0,0)');
        setTimeout(function(){ sidebar.wrapInner.css({'height':'auto'}) }, 300);
        this.dim.hide();

        goods.optionBox.active && goods.optionBox.showBox();
        ui_more.active && ui_more.addEvent();
        enableFloating = true;
        this.opened = false;
    },

    resize: function(){
        sidebar.windowHeight = jQuery(window).height();
        sidebar.windowWidth = jQuery(window).width();
        sidebar.wrap.css('width',640 - 90 + sidebar.windowWidth + 'px');
        sidebar.wrapInner.css({'width':sidebar.windowWidth + 'px', 'top':'0px'});
        if(sidebar.opened) {
            sidebar.wrapInner.css('height',sidebar.windowHeight + 'px');
            sidebar.leftsidebar.css('height',sidebar.windowHeight +'px');
            sidebar.rightsidebar.css('height',sidebar.windowHeight +'px');
            sidebar.dim.css({'top':0, 'left':0, 'width':'100%', 'height':'100%'});
        }
    }
};
if(isGinger) setTimeout( function(){ sidebar.init(); }, 1000);
else sidebar.init();
jQuery('a.nav_aside').on('click', function(){ sidebar.open('c'); });
jQuery('a.myp_aside').on('click', function(){ sidebar.open('m'); });
/* end of 사이드바 */

/*로그인 포커스*/
jQuery('span.inputBox').on({
    'focusin': function(){ jQuery(this).addClass('focus'); },
    'focusout': function(){ jQuery(this).removeClass('focus'); }
});
/* end of 로그인 포커스 */

/*
 검색버튼 & 검색바
 */
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
        this.searchBtn.addClass('active')
        this.searchBar.show().find('input[type="text"]').focus();
    },

    hideSearchBar: function(){
        this.searchBtn.removeClass('active')
        this.searchBar.hide().find('input[type="text"]').blur();
    }
};
jQuery('a.search').length && ui_search.init();
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
        var tabBtnList = paramBtnWrap.find("li[class!='ui-tab-enabled']").find('a').css('transition', 'all 300ms');
        tabBtnList.length && tabBtnList.on('click', function(){
            var btn = jQuery(this);
            if(btn.hasClass('disabled') || btn.hasClass('current')) return;
            var targets = paramBtnWrap.nextAll('.ui-tab-content').hide();
            btn.addClass('current').parent().siblings().find('a').removeClass('current');
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

/* UI - accordion */
var ui_accordion = {
    init: function(){
        this.accordionBtn = jQuery('.ui-accordion-btn:not(".ui-evt-bound")');
        this.addEvent();
    },

    addEvent: function(){
        this.accordionBtn.on('click', function(){
            var acdnWrap = jQuery(this).parent();
            if(acdnWrap.hasClass('active')) acdnWrap.removeClass('active');
            else{ 
            	acdnWrap.addClass('active');
            	acdnWrap.find("input").first().focus(); //@@@ 2014-12-15 추가
            }
        }).addClass('ui-evt-bound');
    }
};
jQuery('.ui-accordion-btn').length && ui_accordion.init();
/* end of UI - accordion  */

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

/*
 결제 - 오케이캐시백 적립 받기
 */
var ui_ocb_save = {
    init: function(){
        this.btn = jQuery('#ocb-save-btn');
        this.target = jQuery('.skp_agree_wrap');
        this.cancelBtn = this.target.find('.btn_cancel');
        this.addEvent();
    },

    addEvent: function(){
        this.btn.on('click', function(){
            if(ui_ocb_save.btn.hasClass('active')) ui_ocb_save.close();
            else ui_ocb_save.open();
        });
        this.cancelBtn.on('click', function(){ ui_ocb_save.close(); });
    },
    open: function(){
        this.btn.addClass('active');
        this.target.show();
    },

    close: function(){
        this.btn.removeClass('active');
        this.target.hide();
    }
};
jQuery('#ocb-save-btn').length && ui_ocb_save.init();
/* end of 오케이캐시백 적립 받기  */

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
                if(btn.hasClass('btn_white3')){
                    btn.removeClass('btn_white3').addClass('btn_gray3').find('em').removeClass('opt_arwUp').addClass('opt_arwDown');
                    target.hide();
                } else {
                    btn.addClass('btn_white3').removeClass('btn_gray3').find('em').addClass('opt_arwUp').removeClass('opt_arwDown');
                    target.show();
                }
            }).addClass('ui-evt-bound');
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
            this.stars = jQuery('ul.star_score').find('li');
            this.addEvent();
        },

        addEvent: function(){
            this.stars.find('span').on('click', function(){
                mypage.star_score.setScore(jQuery(this).parent().index());
            });
        },

        setScore: function(paramIdx){
            var starScore = this, cnt = 0;
            for(var i=0; i<5; i++){
                if(i <= paramIdx){
                    if(starScore.stars.eq(i).find('span').hasClass('active')){
                        cnt += 1;
                    } else {
                        setTimeout(function(){ starScore.stars.eq(cnt).find('span').css('opacity',0).addClass('active').animate({'opacity':1}, 200); cnt+=1; }, i*50);
                    }
                } else {
                    this.stars.eq(i).find('span').removeClass('active');
                }
            }
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

            if(!isGinger) float_topBtn.css('transform', 'translate(0px, -70px)');
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
            this.optionWrap.css({'transition-druation':'0ms'}).css({'bottom':'-320px'});
        },

        showBox: function(){
            this.optionWrap.css({'transition-druation':'300ms', 'bottom':'0px'});
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
    }
};
jQuery('.ui-detail-option').length && goods.optionBox.init();
jQuery('.ui-goods-list-btn').length && goods.list.init();
/* end of 오케이캐시백 적립 받기  */


/* main - 편성표 */
var main = {
    schedule: {
        init: function(){
            this.goodsList = jQuery('.scdList').find('.goods_wrap');
            this.goodsList.each(function(i, el){ main.schedule.addEvent(el); });
            this.goOnair();
        },

        addEvent: function(paramEl){
            var goodsItem = jQuery(paramEl),
                goodsTogetherList = goodsItem.find('.together_list'),
                openBtn = goodsItem.find('a.btn');
            if(goodsTogetherList.find('li').length > 6){
                goodsTogetherList.find('li').eq(5).nextAll().hide();
                openBtn.on('click', function(){
                    goodsTogetherList.find('li').eq(5).nextAll().slideDown();
                    openBtn.hide();
                });
            } else {
                openBtn.hide();
            }
        },

        goOnair: function(){
            var onAirTarget = jQuery('.scdList').find('.tvOnair');
            onAirTarget.find('.goods_wrap').find('a.btn').trigger('click');
            if(isGinger) setTimeout(function(){ jQuery('html, body').animate({'scrollTop': onAirTarget.offset().top -10}, 300); }, 1000);
            else jQuery('html, body').animate({'scrollTop': onAirTarget.offset().top -10}, 300);
        }
    }
};
jQuery('.scdList').length && main.schedule.init();

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
var ui_loading = {
    active: false,
    init: function(){
        this.loading = jQuery('.ui-more-loading');
        if(isGinger) this.loading.find('img').attr('src', this.loading.find('img').attr('src').replace('png', 'gif'));
    },
    attachLoading: function(){ this.loading.addClass('active'); },
    detachLoading: function(){ this.loading.removeClass('active'); }
};
jQuery('.ui-more-loading').length && ui_loading.init();


/*
 * placeholder
 */
var ui_placeholder = {
    init: function(){
        this.placeholder = jQuery('.ui-placeholder');
        this.addEvent();
    },
    addEvent: function(){
        this.placeholder.on('click', function(){ jQuery(this).prev().focus(); })
        this.placeholder.prev().on({
            'focusin':function(){ ui_placeholder.placeholder.hide(); },
            'focusout':function(){ this.value.length < 1 && ui_placeholder.placeholder.show(); }
        });
    }
};
jQuery('.ui-placeholder').length && ui_placeholder.init();