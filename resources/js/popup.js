$.fn.popSnt = function (options) {
	var opts= $.extend({
			popupBox : "#popup_box_0",
			linkBanner : "#link_banner_0",
			popupCloseButton : "#button_popup_close_0",
			popupTodayCloseButton : "#button_today_close_0",
			TodayClose : false,
			cookieName : "isClose",
			closeFlag  : "1", //1:오늘 하루 안보기, 2:더 이상 보지않기 
            popupCnt   : "1"
		}, options);
	
	return this.each(function (){
		var self = this,
			$self = $(this),
			$popupBox = $self.find(opts.popupBox),
			$bannerImage = $popupBox.find(".link_banner > img" ),
			//$bannerImage = $popupBox.find(opts.linkBanner),
			$popupCloseButton = $popupBox.find(opts.popupCloseButton),
			$popupTodayCloseButton = $popupBox.find(opts.popupTodayCloseButton);

		//레이어 열기
		function layer_open(){
			$self.show();
			$popupBox.show();
			//layer_resize();
			$(window).on("touchmove", function(e){
				e.preventDefault();
			});
		}

		//레이어 닫기
		function layer_close(){
			$self.hide();
			$(window).off("touchmove");
		}
		
		//윈도우 리사이징 /*2018-02-06 로딩오류로 주석처리*/
		// $(window).on("load resize orientationchange", layer_resize);
		// function layer_resize(){
		// 	if ($(window).width() < $(window).height()){
		// 		$bannerImage.css({ width:$(window).width() * 0.7, height:"auto" });
		// 	}else{
		// 		$bannerImage.css({ width:"auto", height:$(window).height() * 0.7 / $bannerImage.length });
		// 	}
		// 	$popupBox.css({ marginLeft:-$popupBox.width() / 2, marginTop:-$popupBox.height() / 2 });
		// }

		//포커스
		/*
		$self.on("focusin focusout", function(e){
			TweenMax.killDelayedCallsTo(layer_close);
			switch(e.type){
				case "focusout" :
					TweenMax.delayedCall(0.01, layer_close);
				break;
			}
		});
		*/
		//닫기 버튼 클릭
		$popupCloseButton.on("click", function(e){
			e.preventDefault();
			layer_close();
		});

		//닫기 버튼 클릭 //2018-03-28 뭘 눌러도 팝업 close되서 function삭제
		// $self.on("click", function(e){
		// 	e.preventDefault();
		// 	layer_close();
		// });
		
		// 쿠키값 저장
		function popupSetcookie(name, value, expiredays){
			var todayDate = new Date();
			todayDate.setDate(todayDate.getDate() + expiredays);
			document.cookie = name + "=" + escape(value) + "; path=/; expires = " + todayDate.toGMTString() + ";";
		}

		//오늘 하루 그만보기 클릭
		$popupTodayCloseButton.on("click", function(e){
			e.preventDefault();
			if(opts.closeFlag = "2"){
			    popupSetcookie(opts.cookieName, "done", 365*24*60*60*1000); //더 이상 보지않기
			}else{
				popupSetcookie(opts.cookieName, "done", 1); //오늘 하루 안보기
			}
			layer_close();
		});

		//쿠키값 처리
		function getCookieVal(offset) {
			var endstr = document.cookie.indexOf(";", offset);

			if(endstr == -1) endstr = document.cookie.length;
			return unescape(document.cookie.substring(offset, endstr));
		}

		//쿠키값 처리
		function GetCookie(name) {
			var arg = name + "=";
			var alen = arg.length;
			var clen = document.cookie.length;
			var i = 0;
			while (i < clen) {
				var j = i + alen;
				
				if(document.cookie.substring(i, j) == arg)
					return getCookieVal(j);
				i= document.cookie.indexOf("", i) + 1;
				if(i == 0) break;
			}
			return null;
		}

		//오늘하루 그만보기 비활성,활성화
		if(!opts.TodayClose) {
			layer_open();
		} else{
			if(GetCookie(opts.cookieName)!="done"){
				layer_open();
			}
		}
	});
};
