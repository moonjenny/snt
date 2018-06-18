/*
 * bshopping web ui js - (c)bshopping
 */

/* UI - 메인 */
var ui_main = {
    init: function(){

        this.pages = jQuery(".page");
        this.pageNum = this.pages.length;
        this.menus = jQuery(".gnb li");
        this.indicator = jQuery(".indicator a");
        this.wh = jQuery(window).height();
        this.currentIdx = 0;
        this.pageY = [];
        this.isMoveByPage = true;

        this.resize();
        this.animation.init();
        this.addEvent();
    },

    addEvent: function(){
        this.menus.on('click', function(){
            var idx = jQuery(this).index();
            switch(idx){
                case 0: ui_main.movePage(idx); break;
                case 1:
                case 2: ui_main.movePage(idx + 2); break;
            }
        });

        this.indicator.on('click', function(){
            ui_main.movePage(jQuery(this).index());
        });

        jQuery(window).on('scroll', this.scroll);
        jQuery(window).on('resize', this.resize);
    },

    addWheelEvent: function(){
        this.pages.parent().on('mousewheel', function(event) {
            if(ui_main.isMoving) return false;
            if(event.deltaY < 0){
                if(ui_main.currentIdx < ui_main.pageNum-1) ui_main.movePage(ui_main.currentIdx + 1);
            } else if(event.deltaY > 0) {
                if(ui_main.currentIdx > 0) ui_main.movePage(ui_main.currentIdx - 1);
            }
            return false;
        });
    },

    removeWheelEvent: function(){
        this.pages.parent().off('mousewheel');
    },

    indicate: function(paramIdx){
        this.indicator.eq(paramIdx).addClass('active').siblings().removeClass('active');
        this.menus.find('a').removeClass('active');
        switch(paramIdx){
            case 0:
            case 1:
            case 2: this.menus.eq(0).find('a').addClass('active'); break;
            case 3: this.menus.eq(1).find('a').addClass('active'); break;
            case 4: this.menus.eq(2).find('a').addClass('active'); break;
        }
    },

    movePage: function(paramIdx){
        if(this.currentIdx == paramIdx) return;
        else this.currentIdx = paramIdx;
        ui_main.isMoving = true;
        var ty = this.pages.eq(paramIdx).offset().top - 60;
        TweenMax.to(window, 1.5, {scrollTo:{y:ty}, ease:Expo.easeInOut, overwrite:1, onComplete:function(){ ui_main.isMoving = false; }});
        this.indicate(this.currentIdx);
        ui_main.animation.animate(paramIdx, 1);
    },

    animation: {
        init: function(){
            this.pageArr = [this.page0, this.page1, this.page2, this.page3,this.page4];
            for(var i=0; i<this.pageArr.length; i++){
                this.pageArr[i].init();
            }

            this.animate(ui_main.currentIdx, 0);

        },

        animate: function(paramPageIdx, paramDelay){
            for(var i=0; i<this.pageArr.length; i++){
                if(i == paramPageIdx) this.pageArr[i].start(paramDelay);
                else this.pageArr[i].reverse(paramDelay);
            }

        },

        page0: {
            init: function(){
                this.wrap = jQuery('.page.service1');
                this.tv1 = this.wrap.find(".img1");
                this.tv2 = this.wrap.find(".img2");
                this.inContents = this.tv2.children('.img2_cont').css({'opacity':0,'right':'-393px'});
            },

            start: function(paramDelay){
                if(this.active) return;
                this.active = true;
                var page0 = this;
                setTimeout(function(){
                    page0.tv2.fadeIn();
                    TweenMax.to(page0.inContents, 0.7, {delay:0.3, opacity:1, right:0, ease:Expo.easeInOut});
                }, (paramDelay + 4) * 1000 + 500);
            },

            reverse: function(paramDelay){
                if(this.active) {
                    var page0 = this;
                    setTimeout(function () {
                        page0.tv2.hide();
                        page0.inContents.css({opacity: 0, right: "-393px"});
                    }, paramDelay * 1000 + 500);
                    this.active = false;
                }

            }
        },
        page1: {
            init: function(){
                this.wrap = jQuery('.page.service2');
                this.items = this.wrap.find(".whiteZone .centerZone li");

                this.items.eq(4).siblings().css("opacity", 0);
                this.setPosition(this.items.eq(0), 385);
                this.setPosition(this.items.eq(1), 194);
                this.setPosition(this.items.eq(2), -10);
                this.setPosition(this.items.eq(3), -209);
                this.setPosition(this.items.eq(4), -393);
            },

            setPosition: function(paramElement, paramX){
                paramElement.css({
                    "overwrite":1,
                    //"-ms-transform": "translateX("+paramX + "px)",
                    //"-moz-transform": "translateX("+paramX + "px)",
                    //"-webkit-transform": "translateX("+paramX + "px)",
                    "transform": "translateX("+paramX + "px)"
                });
            },

            transitionPosition: function(paramElement, paramOpacity, paramTargetX, paramDelay){
                TweenMax.to(paramElement, 1.2, {
                    "delay":paramDelay,
                    "overwrite":1,
                    "opacity":paramOpacity,
                    //"-ms-transform": "translateX("+paramTargetX + "px)",
                    //"-moz-transform": "translateX("+paramTargetX + "px)",
                    //"-webkit-transform": "translateX("+paramTargetX + "px)",
                    "transform": "translateX("+paramTargetX + "px)",
                    ease:Expo.easeOut
                });
            },

            start: function(paramDelay){
                if(this.active) return;
                this.active = true;
                this.transitionPosition(this.items.eq(0), 1, 0, paramDelay);
                this.transitionPosition(this.items.eq(1), 1, 0, paramDelay + 0.2);
                this.transitionPosition(this.items.eq(2), 1, 194, paramDelay + 0.4);
                this.transitionPosition(this.items.eq(3), 1, 194, paramDelay + 0.1);
            },

            reverse: function(paramDelay){
                if(this.active) {
                    this.transitionPosition(this.items.eq(0), 0, 385, paramDelay);
                    this.transitionPosition(this.items.eq(1), 0, 194, paramDelay);
                    this.transitionPosition(this.items.eq(2), 0, -10, paramDelay);
                    this.transitionPosition(this.items.eq(3), 0, -209, paramDelay);
                    this.active = false;
                }
            }
        },
        page2: {
            init: function(){

            },

            start: function(){

            },

            reverse: function(){

            }
        },
        page3: {
            init: function(){
                this.wrap = jQuery('.page.partner');
                this.items = this.wrap.find("span[class^=cate]");
                this.pos = [0, 150, -100, 100, -150, 0, -100, -100, 0, -150, 100, -100, 150, 0, 100, 100];
                this.items.css("opacity", 0);
                for(var i=0; i<this.pos.length/2; i++){
                    this.setPosition(this.items.eq(i), this.pos[i*2], this.pos[i*2+1]);
                }
            },

            setPosition: function(paramElement, paramX, paramY){
                paramElement.css({
                    "overwrite":1,
                    //"-ms-transform": "translateX("+paramX + "px, "+ paramY+"px)",
                    //"-moz-transform": "translateX("+paramX + "px, "+ paramY+"px)",
                    //"-webkit-transform": "translateX("+paramX + "px, "+ paramY+"px)",
                    "transform": "translate("+paramX + "px, "+ paramY+"px)"
                });
            },

            transitionPosition: function(paramElement, paramOpacity, paramTargetX, paramTargetY, paramDelay){
                TweenMax.to(paramElement, 0.7, {
                    "delay":paramDelay,
                    "overwrite":1,
                    "opacity":paramOpacity,
                    //"-ms-transform": "translateX("+paramTargetX + "px, "+ paramTargetY+"px)",
                    //"-moz-transform": "translateX("+paramTargetX + "px, "+ paramTargetY+"px)",
                    //"-webkit-transform": "translateX("+paramTargetX + "px, "+ paramTargetY+"px)",
                    "transform": "translate("+paramTargetX + "px, "+ paramTargetY+"px)",
                    ease:Back.easeOut
                });
            },

            start: function(paramDelay){
                if(this.active) return;
                this.active = true;
                for(var i=0; i<this.pos.length/2; i++){
                    this.transitionPosition(this.items.eq(i), 1, 0, 0, paramDelay + i * 0.1);
                };
            },

            reverse: function(paramDelay){
                if(this.active) {
                    for (var i = 0; i < this.pos.length / 2; i++) {
                        this.transitionPosition(this.items.eq(i), 0, this.pos[i * 2], this.pos[i * 2 + 1], paramDelay);
                    };
                    this.active = false;
                }
            }
        },
        page4: {
            init: function(){

            },

            start: function(){

            },

            reverse: function(){

            }
        }

    },

    scroll: function(){
        for(var i = 0; i<5; i++){
            if(ui_main.pageY[i] <= jQuery(window).scrollTop() && jQuery(window).scrollTop() < ui_main.pageY[i+1] ) {
                if(!ui_main.isMoving) {
                    ui_main.indicate(i);
                    ui_main.animation.animate(i, 0);
                }
                return;
            }
        }
    },

    resize: function(){
        if(jQuery(window).height() > 800) {
            ui_main.wh = jQuery(window).height();
            ui_main.addWheelEvent();
        } else {
            ui_main.wh = 800;
            ui_main.removeWheelEvent();
        }

        ui_main.pages.height(ui_main.wh - 60 + "px");
        ui_main.pages.each(function(i,el) {
            ui_main.pageY[i] = i * (ui_main.wh - 60);
        });
        ui_main.pageY[ui_main.pageNum] = ui_main.pageY[ui_main.pageNum-1] + ui_main.wh - 60;
    }
};
window.scrollTo(0,0);
ui_main.init();


var faq = {
    init: function(){
        this.wrap = jQuery(".page.customer");
        this.tab = this.wrap.find(".tab li");
        this.tabKeyword = ['order', 'shipping', 'cancel', 'point', 'membership', 'service'];
        this.questionList = this.wrap.find('.faqList li');
        this.questionWrap = this.wrap.find('.view').find('.question');
        this.answerWrap = this.wrap.find('.view').find('.answer');
        this.data = null;
        this.loadData();
        this.addEvent();
    },

    loadData: function(){
        jQuery.getJSON("../resources2014/js/faq.json", function(data){
            faq.data = data;
            faq.changeCategory(faq.tabKeyword[0]);
            faq.changeQna(0);
        });
    },

    addEvent: function(){
        this.tab.on('click', function(){
            if(!jQuery(this).hasClass('active')){
                jQuery(this).addClass('active').siblings().removeClass('active');
                faq.changeCategory(faq.tabKeyword[jQuery(this).index()]);
            }
        });

        this.questionList.on('click', function(){
            if(!jQuery(this).hasClass('active')){
                faq.changeQna(jQuery(this).index());
            }
        });
    },

    changeCategory: function(paramKeyword){
        this.categoryData = this.data[paramKeyword];
        this.questionList.hide();
        for(var i=0; i<10; i++){
            var newElement = '<span class="num@num">@num</span>@answer';
            if(i < this.categoryData.length) {
                this.questionList.eq(i).stop().delay(i*70).empty().append(newElement.replace('@num', landingZero2(i + 1)).replace('@num', landingZero2(i + 1)).replace('@answer', this.categoryData[i].question)).fadeIn('fast');
            }
        }
        this.changeQna(0);
    },

    changeQna: function(paramIdx){
        var newQuestion = '<span class="q">Q</span>' + this.categoryData[paramIdx].question;
        var newAnswer = '<span class="a">A</span>' + this.categoryData[paramIdx].answer;
        this.questionWrap.stop().hide().empty().append(newQuestion).fadeIn();
        this.answerWrap.stop().hide().empty().delay(100).append(newAnswer).fadeIn();
        this.questionList.eq(paramIdx).addClass('active').siblings().removeClass('active');
    }
};
faq.init();

function landingZero2(paramNum){
    var n = paramNum.toString();
    if(n.length < 2){
        return '0' + n;
    } else {
        return n;
    }
}