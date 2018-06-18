var APP_SCHEMA = "netplay://";
var gVolumeTimeout = gBrightTimeout = null;
var startVol = oldVol = startBright = oldBright = startP = 0;
var startPageY = endPageY = startPageX = endPageX = null;
var gCurVolume=gCurBright=0;
var gMaxVolume=15;
var gCurrent = gDuration = 0;
var deviceType = "android";
var gMode = "";
var gSetup = null;
var gMute = true;
var gLinkUrl = "";

jQuery(function() {
	//페이지 로드 시 SNS 페이지는 최초 숨김
	jQuery( document ).ready(function() {
		jQuery('.sns_wrap').hide();
	});
	
	//동영상 컨트롤 영역 터치 시작 시 발생 이벤트
    jQuery('.play_wrap').on('touchstart', function(e) {
        if(deviceType == 'iOS') {
            var width = jQuery(this).width();
            startPageY = endPageY = e.originalEvent.targetTouches[0].pageY;

            // top menu, bottom menu click 시 제외
            if(e.originalEvent.targetTouches[0].pageY < 40 || e.originalEvent.targetTouches[0].pageY > jQuery(this).height() - 40 - 30) return;
            
            //middle menu 값 false 시 제외
            if(gSetup != null && gSetup[gMode].menu.middle!="true") return;
            //화면의 2/3 이상인 영역 터치시 볼륨 조절(IOS의 경우 컨트롤 노출만 발생)
            
            /* 볼륨조절, 밝기조절 기능 제외
            if(e.originalEvent.targetTouches[0].pageX > width/3*2) {
                window.location = APP_SCHEMA+"setVol?";
                return;
            }
            //화면의 1/3 이하인 영역 터치시 해상도 조절(IOS의 경우 컨트롤 노출만 발생)
            else if(e.originalEvent.targetTouches[0].pageX < width/3) {
                window.location = APP_SCHEMA+"setBright?";
                return;
            }
            */
        }
    })
    //동영상 컨트롤 영역 터치 무브 시 발생 이벤트
    .on('touchmove', function(e) {
    	//IOS일 경우 처리하지 않음
        if(deviceType=='iOS') return;

        var half = jQuery(this).width()/2;
    
        // touchmove 초기 발생 시 
        if(startPageY == null) {
            // top menu, bottom menu click 시 제외
            if(e.originalEvent.targetTouches[0].pageY < 40 || e.originalEvent.targetTouches[0].pageY > jQuery(this).height() - 40 - 30) return;
            //middle menu 값 false 시 제외
            if(gSetup != null && gSetup[gMode].menu.middle!="true") return;

            startPageY = endPageY = e.originalEvent.targetTouches[0].pageY;
            
            if(e.originalEvent.targetTouches[0].pageX > half+10) {
                startVol = oldVol = gCurVolume; 
            }
            else if(e.originalEvent.targetTouches[0].pageX < half-10) {
                startBright = oldBright = gCurBright;
            }
            
            return;
        }

        endPageY = e.originalEvent.targetTouches[0].pageY;
        
        //변경된 값이 20보다 작을 경우 볼륨/해상도 조절하지 않음
        if(Math.abs(startPageY - endPageY) < 20) return;

        var move_per = (startPageY - endPageY)/jQuery(this).height();
        
        //화면의 절반+10 영역 터치 시 볼륨 조절
        if(e.originalEvent.targetTouches[0].pageX > half+10) {
            var vol = Math.round(startVol + (gMaxVolume * move_per));
            if(vol < 0) vol=0;
            else if(vol >= gMaxVolume) vol = gMaxVolume;

            if(oldVol != vol) {
                window.location = APP_SCHEMA+"setVol?" + vol;
                setVol(vol);
                old_vol = vol;
            }
        }
        //화면의 절반+10 영역 터치시 이전 해상도 조절
        else if(e.originalEvent.targetTouches[0].pageX < half-10) {
            var bright = Math.round(startBright + 100 * move_per);
            if(bright < 0) bright=0;
            else if(bright >= 100) bright = 100;

            if(oldBright != bright) {
                window.location = APP_SCHEMA+"setBright?" + bright;
                setBright(bright);
                oldBright = bright;
            }
        }
    })
     //동영상 컨트롤 영역 터치 종료시 발생 이벤트
    .on('touchend', function(e) {

        var y = e.originalEvent.changedTouches[0].pageY;
        var x = e.originalEvent.changedTouches[0].pageX;
        var width = jQuery(this).width();
        
        //안드로이드
        var a = (y > 40 && y < jQuery(this).height() - 40 - 30  // top, bottom 영역 제외
            && (startPageY==null || Math.abs( startPageY - y) < 20));  // 20 이하시 click(menuHide) 으로 처리
        //IOS 경우 1/3 영역보다 크고 2/3 작은 영역 이거나 top, bottom 영역일 경우 click(menuHide) 으로 처리
        var i =  (x >= width/3 && x <= width/3*2 && y>40 && y < jQuery(this).height()-40-30);
     // 아이폰 i대신 true 사용, 동영상 퍼블이 결정되어 위치가 지정되었을때 터치했을경우 사라지지 않는 영역을 재계산해서 넣어야함
        var c = deviceType == 'android' ? a : true;  
        
        if(c) {
        	//컨트롤 메뉴 숨김처리
        	window.location = APP_SCHEMA + "hideMenu?";
        	
        	//볼륨 타이머가 있는 경우 타이머 초기화 후 볼륨 컨트롤 숨김
            if(gVolumeTimeout) {
                clearTimeout(gVolumeTimeout);
                jQuery('.sun_music').hide();
                jQuery('.volume_b').hide();
                jQuery('.music_text').hide();
                gVolumeTimeout = null;
            };
            //해상도 타이머가 있는 경우 타이머 초기화 후 해상도 컨트롤 숨김
            if(gBrightTimeout) {
                clearTimeout(gBrightTimeout);
                jQuery('.sun_light').hide();
                jQuery('.bright_b').hide();
                jQuery('.light_text').hide();
                gBrightTimeout = null;
            }
        }
        startPageY = endPageY = null;
        
    });
    
    //Seek Bar 영역 터치 시작 시 발생 이벤트
    jQuery('.timeline').on('touchstart', function(e) {
        var p = jQuery('.timeline .point');
        var x = e.originalEvent.targetTouches[0].pageX;

        if( x > p.offset().left - 10 && x < p.offset().left + p.width() + 10) {
            startPageX = endPageX = x;
            startP = gCurrent;
            return;
        }
        else {
            startPageX = endPageX = null;
        }
    })
    //Seek Bar 영역 터치 무브 시 발생 이벤트
    .on('touchmove', function(e) {
        var p = jQuery('.timeline .point');
        
        if(startPageX != null) {
            endPageX = e.originalEvent.targetTouches[0].pageX;

            var min = jQuery(this).offset().left;
            var max = jQuery(this).offset().left + jQuery(this).width();
            if(endPageX <= min) endPageX = min;
            else if (endPageX >= max) endPageX = max;

            var move_per = (endPageX - startPageX) / jQuery(this).width();
            var curP = Math.round(startP + move_per * gDuration);
            if(curP < 0) curP =0;
            else if (curP >= gDuration) curP = gDuration;
            
            setSeek(curP);
        }
    })
    //Seek Bar 영역 터치 종료 시 발생 이벤트
    .on('touchend', function(e) {
    	//플레이어 재생 시점 변경
        window.location = APP_SCHEMA+"seek?" + Math.round(gCurrent);
        e.stopPropagation();
    });

    //플레이어 Zoom모드로 변경 - 버튼 기능 다른 위치로 변경
//    jQuery('.play_wrap div.side_out').click(function(e) {
//        window.location = APP_SCHEMA+"small?";
//    });

 	//플레이어 Full모드로 변경 -  버튼기능 다른 위치로 변경
//    jQuery('.play_wrap .btn_all').click(function(e) {
//        window.location = APP_SCHEMA+"full?";
//    });

    //CallBack 함수 실행 영역
    jQuery('.play_wrap li.callback').click(function(e) {
    	var id = jQuery(this).attr('data-id');
    	//관련 상품 보기일 경우 실행
    	if(id == "product"){
    		if(jQuery('.play_pop_wrap').css('display') == "block"){
    			//컨트롤 숨김 타임아웃 설정
    			window.location = APP_SCHEMA + "setTimeOutFlag?true";
    			
    			jQuery('.play_pop_wrap').hide();
    		}
    		else{
    			//컨트롤 숨김 타임아웃 설정해제
    			window.location = APP_SCHEMA + "setTimeOutFlag?false";
    			
    			jQuery('.play_pop_wrap').show();
    		}
    	}
    	else{
    		//해당 CallBack 아이디에 따른 스크립트 실행
    		window.location = APP_SCHEMA+ jQuery(this).attr('data-id');
    	}
    });
    
    //플레이어 정지
    jQuery('.btn_stop').click(function(e) {
        window.location = APP_SCHEMA + "stop?";
        jQuery(this).hide();
        jQuery('.btn_play').show();
    });
    
    //플레이어 재생
    jQuery('.btn_play').click(function(e) {
        window.location = APP_SCHEMA + "play?";
        jQuery(this).hide();
        jQuery('.btn_stop').show();
    });
    
    //해상도, 볼륨 버튼 노출
//    jQuery('.btn_vol').click(function(e) {
//    	//IOS의 경우 앱 컨트롤 노출
//        if(deviceType == 'iOS') {
//            window.location = APP_SCHEMA + "config?";
//        }
//        else {
//            if( jQuery('.sun_music:visible').length!=0 && jQuery('.sun_light:visible').length!=0) {
//            	jQuery('.sun_music').hide();
//            	jQuery('input.volume_b').hide();
//            	jQuery('.sun_light').hide();
//            	jQuery('input.bright_b').hide();
//            }
//            else {
//                setBright(gCurBright);
//                setVol(gCurVolume);
//            }
//            
//            jQuery('.light_text').hide();
//            jQuery('.music_text').hide();
//        }
//    });
    
    jQuery('.func1').click(function() {
        window.location=APP_SCHEMA + "mute?"+ gMute;
        gMute = !gMute
//        jQuery(this).hide();
//        jQuery('input.mute').show();
    });
    
    jQuery('.func2').click(function() {
        window.location=APP_SCHEMA + "small?";
        jQuery('.timeline_area').hide();
    });
    
    jQuery('.func3').click(function() {
        window.location=APP_SCHEMA + "full?";
        gMute = !gMute
        jQuery('.timeline_area').show();
    });
    
    jQuery('.func4').click(function() {
        window.location=APP_SCHEMA + "default?";
        gMute = !gMute
        jQuery('.timeline_area').show();
    });
    
    jQuery('.func5').click(function() {
        window.location=APP_SCHEMA + "buy?path=http://"+ window.location.host + gLinkUrl ;
        gMute = !gMute
    });
    
    jQuery('.func6').click(function() {
        window.location=APP_SCHEMA + "close?"+ gMute;
        gMute = !gMute
    });

    //재생 시점 5초 앞으로 이동
    jQuery('.btn_prev').click(function() {
        gCurrent = gCurrent - 5000;
        window.location = APP_SCHEMA + "seek?" + Math.round(gCurrent);
        setSeek(gCurrent);
    });

    //재생 시점 5초 뒤로으로 이동
    jQuery('.btn_next').click(function() {
        gCurrent = gCurrent + 5000;
        window.location = APP_SCHEMA + "seek?" + Math.round(gCurrent);
        setSeek(gCurrent);
    });
    
    //기본 정의 이벤트 동작 멈춤 처리
    jQuery('body').on('touchmove', function(e) {
        e.preventDefault();
    });
    
    //특정 이벤트 발생시 상위 이벤트 멈춤 처리 start
    jQuery('.play_pop_wrap').on('touchstart', function(e) {
    	e.stopPropagation();
    }).on('touchmove', function(e) {
    	e.stopPropagation();
    }).on('touchend', function(e) {
    	e.stopPropagation();
    });
    
    jQuery('.product').on('touchstart', function(e) {
    	e.stopPropagation();
    }).on('touchmove', function(e) {
    	e.stopPropagation();
    }).on('touchend', function(e) {
    	e.stopPropagation();
    });
    
    jQuery('.sns').on('touchstart', function(e) {
    	e.stopPropagation();
    }).on('touchmove', function(e) {
    	e.stopPropagation();
    }).on('touchend', function(e) {
    	e.stopPropagation();
    });
    //특정 이벤트 발생시 상위 이벤트 멈춤 처리 end
    
    //관련 상품 보기 영역 닫기
    jQuery('.pop_close02').click(function(e) {
    	//컨트롤 숨김 타임아웃 설정
    	window.location = APP_SCHEMA + "setTimeOutFlag?true";
    	
    	jQuery('.play_pop_wrap').hide();
    	e.stopPropagation();
    });
    
    //sns 영역 노출
    jQuery('.btn_sns').click(function(e) {
    	if(jQuery('.sns_wrap').css('display') == "block"){
    		jQuery('.sns_wrap').hide();
    		jQuery(this).removeClass('on');
    	}
    	else{
    		jQuery('.sns_wrap').show();
    		jQuery(this).addClass('on');
    	}
    	
    	e.stopPropagation();
    });
    
    //플레이어 종료
    jQuery('.close').click(function(e) {
    	window.location = APP_SCHEMA+"close?";
    });
});

/* App에서 컨트롤 스크립트에 호출되는 함수 */
function setPlayer(mode, width, height, max_volume, playing, live, duration, bright, volume)
{	
    if(deviceType == "android") {
        var r = window.devicePixelRatio;
        width = width / r;
        height = height / r;
        gMaxVolume = max_volume;

        gCurBright = bright;
        gCurVolume = volume;
    }
    gMode = mode;
    
    //Full 모드일 경우에 특정 컨트롤 노출 여부
    if(gMode == 'full'){
    	jQuery('.sns_deem').show();
    	jQuery('.btn_all').hide();
    }
    else{
    	jQuery('.sns_deem').hide();
    	jQuery('.btn_all').show();
    }
    
    //특정모드의 top 속성에 따른 상위 컨트롤 노출 여부
    if(gSetup != null && gSetup[gMode].menu.top!="true") {
    	jQuery('.side_out').hide();
    }
    else{
    	jQuery('.side_out').show();
    }

    //특정모드의 middle 속성의 따른 중간 컨트롤 노출 여부
    if(gSetup != null && gSetup[gMode].menu.middle!="true") {
    	jQuery('.btn_vol').hide();
        jQuery('.btn_sns').hide();
    }
    else{
    	jQuery('.btn_vol').show();
    	jQuery('.btn_sns').hide();
        //jQuery('.btn_sns').show();
    }

    //특정모드의 bottom 속성의 따른 하위 컨트롤 노출여부
    if(gSetup != null && gSetup[gMode].menu.bottom!="true") {
    	jQuery('.timeline').hide();
    	jQuery('.time_text').hide();
    }
    else {
    	//실시간 동영상의 경우 Seek Bar 숨김처리
        if(live) {
            jQuery('.timeline').hide();
            jQuery('.time_text').hide();
        }
        else {
        	jQuery('.timeline').show();
        	jQuery('.time_text').show();
            gDuration = duration;
            jQuery('.end_time').html(secToHHMMSS(gDuration));
            setSeek(gCurrent);
        }
        
        //동영상 플레이 상태에 따른 재생/정지 버튼 노출
        if(playing) {
        	jQuery('.btn_play').hide();
        	jQuery('.btn_stop').show();
        }
        else {
        	jQuery('.btn_play').show();
        	jQuery('.btn_stop').hide();
        }
    }

    //특정모드의 custom 속성의 따른 Custom 컨트롤 노출여부
    if(gSetup != null && gSetup[gMode].menu.custom!="true"){
    	jQuery('.custom').hide();
    }
    else{
    	jQuery('.custom').show();
    }
}

//볼륨 조절
function setVol(value) 
{
	//조절 값이 0 이거나 최대인 경우 제외
    if(value < 0 || value > gMaxVolume) return;

    var vol = jQuery('.sun_music');
    var vol_val = jQuery('#volume_value');
    
    gCurVolume = value;
    
    //볼륨 컨트롤 이미지 조절
    vol_val.css('top', (100 - gCurVolume/gMaxVolume * 100) + '%')
        .css('height', (gCurVolume/gMaxVolume * 100) + '%');

    //볼륨 컨트롤 노출 시 해상도 텍스트 숨김
    vol.show();
    jQuery('.volume_b').show();
    jQuery('.light_text').hide();
    
    //볼륨 텍스트 노출
    jQuery('.music_text').html("<em></em>" + value).show();

    //볼륨 타이머 초기화
    if(gVolumeTimeout) clearTimeout(gVolumeTimeout);
    
    //볼륨 타이머 설정
    gVolumeTimeout = setTimeout(function() {
    	jQuery('.sun_music').hide();
    	jQuery('.volume_b').hide();
    	jQuery('.music_text').hide();
        gVolumeTimeout = null;
    }, 3000);
}

//해상도 조절
function setBright(value) 
{
	//조절 값이 0 이거나 최대인 경우 제외
    if(value < 0 || value > 100) return;

    var bright = jQuery('.sun_light');
    var bright_val = jQuery('#bright_value');

    gCurBright = value;
    //해상도 컨트롤 이미지 조절
    bright_val.css('top', (100 - gCurBright) + '%')
        .css('height', gCurBright+ '%');

    //해상도 컨트롤 노출 시 볼륨 텍스트 숨김
    bright.show();
    jQuery('.bright_b').show();
    jQuery('.music_text').hide();
    
    //해상도 텍스트 노출
    jQuery('.light_text').html("<em></em>" + value + "%").show();

    //해상도 타이머 초기화
    if(gBrightTimeout) clearTimeout(gBrightTimeout);
    
    //해상도 타이머 설정
    gBrightTimeout = setTimeout(function() {
    	jQuery('.sun_light').hide();
    	jQuery('input.bright_b').hide();
    	jQuery('.light_text').hide();
        gBrightTimeout = null;
    }, 3000);
}

//재생 시점 변경
function setSeek(current) 
{
	//재생 시점이 0보다 작을 경우 0으로 셋팅
    if(current <= 0 ) current = 0;
    
    //재생 시점이 종료시간보다 작을 경우 종료시간으로 셋팅
    if(current >= gDuration) current = gDuration;

    gCurrent = current;
    
    //Seek Bar 이미지 조절
    jQuery('#seek_value').css('width', (current/gDuration*100) + '%');
    jQuery('.timeline .point').css('left', current/gDuration * jQuery('.timeline').width());
    
    //플레이 시간 변경
    jQuery('.start_time').html(secToHHMMSS(current));
}

//밀리세컨트 값 시분초로 변경
function secToHHMMSS(millisecond)
{
    var date = new Date(millisecond);
    var hh = date.getUTCHours();
    var mm = date.getUTCMinutes();
    var ss = date.getSeconds();
    if (hh > 12) {hh = hh - 12;}
    if (hh < 10) {hh = "0"+hh;}
    if (mm < 10) {mm = "0"+mm;}
    if (ss < 10) {ss = "0"+ss;}
    var t = (hh == '00' ? '00:' : hh+ ':' ) + mm+":"+ss;
    return t;
}


//디바이스 셋팅, 플레이 시 IOS의 경우 음소거 버튼 숨김처리(IOS의 경우 볼륨 컨트롤 불가)
function setDevice(device) 
{
    if(jQuery.inArray(device, ['android', 'iOS'])==-1 ) {
        return false;
    }
    else {
        deviceType = device;
        /*
        if(deviceType == 'iOS') {
        	//음소거 버튼 숨김
        }
        */
        return true;
    }
}

//버퍼링 상테에 따른 로딩 바 width 조절
function setBufferingBar(percent) {
    //Seek Bar 이미지 조절
    jQuery('#load_status').css('width', (percent) + '%');
}

//Web View의 host 페이지로 Url 이동
function navigateMainWeb(host)
{
     var key = encodeURIComponent(host); 
     window.location = APP_SCHEMA+"navigateMainWeb?q=" + key +"";
}

//App에서 컨트롤 View의 설정 값에 데이터 셋팅
function setupVideo(q) 
{
	var tempSetup = JSON.parse(q);
    
    jQuery('.play_product_list').html("");
    
    //관련상품 보기 페이지 셋팅
    if(tempSetup.callback != undefined){
        jQuery.get('/api/player/goodslist?goodsCode=' + tempSetup.callback.product, function(data) {
        	jQuery('.play_product_list').html(data);
        });
        
        //androidVersion = tempSetup.callback.androidVersion;
        //iosVersion = tempSetup.callback.iosVersion;
    }
    
    gSetup = jQuery.extend(gSetup, tempSetup);
}

//컨트롤 Hide시 발생하는 함수
function hideControl()
{
	jQuery('.play_pop_wrap').hide();
	jQuery('.sns_wrap').hide();
	jQuery('.btn_sns').removeClass('on');
}

function setTitle(title) {
	jQuery('.func_title').text(title);
}

function setLinkUrl(link) {
	gLinkUrl = link;
}

function setMode(val){
	// small, default, full
	//음소거
	//최소화
	//최대화
	//일반화면
	//사기
	//닫기
	//상품 제목
	//재생 버튼 및 시간바
	/* jQuery('.func1').hide();
	jQuery('.func2').hide();
	jQuery('.func3').hide();
	jQuery('.func4').hide();
	jQuery('.func5').hide();
	jQuery('.func6').hide();
	jQuery('.func_title').hide();
	jQuery('.timeline_area').hide(); */ //2016-06-21
	
	switch(val){
	case "small":
		/* jQuery('.func3').show();
		jQuery('.func6').show(); */
		jQuery('.play_wrap').attr('class','play_wrap small'); //2016-06-21
		break;
	case "default":
		/* jQuery('.func1').show();
		jQuery('.func2').show();
		jQuery('.func3').show();
		jQuery('.func5').show();
		jQuery('.func6').show(); */
		jQuery('.play_wrap').attr('class','play_wrap'); //2016-06-21
		break;
	case "full":
		/* jQuery('.func1').show();
		jQuery('.func2').show();
		jQuery('.func4').show();
		jQuery('.func5').show();
		jQuery('.func6').show();
		jQuery('.func_title').show();
		jQuery('.timeline_area').show(); */
		jQuery('.play_wrap').attr('class','play_wrap full'); //2016-06-21
		break;
	}
}

