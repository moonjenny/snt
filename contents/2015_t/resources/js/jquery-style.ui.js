
$(document).ready(function(e) {

	

	// 상단 gnb 고정
	gnbPosition = $(".gnb").offset() ;
	gnbPositionAct = function () {
		var scrollT = $(window).scrollTop();
		var menuH = gnbPosition.top ;
		if (scrollT > menuH ) {
			$(".gnb>ul").addClass("fixed");
		}else{
			$(".gnb>ul").removeClass("fixed");
			
		}
	};
	$(window).on("load resize scroll",function(){
		$(".gnb").length && gnbPositionAct();
		setTimeout(function(){ $(".gnb").length && gnbPositionAct(); }, 1000);
	});
	
	
	tabindexAct = function(){
		$("input[type=text]  ,input[type=number] ,input[type=email] ,input[type=tel] ,input[type=password ]").each(function(index, element) {
			$(this).attr("tabindex", index ) ;
		});
	};
	tabindexAct();
	
	
	// 홈 오늘본상품 슬라이드
	var todaySlideList = jQuery('#today-slide').find('.swipe-wrap').find('> li'),
		todayBtime = jQuery('#todayBtime'),
		makeHtml = '<em>todayBtimeStr</em> 방송';
	if(todaySlideList.length > 1) {
		var todaySwipe = Swipe(document.getElementById('today-slide'), {
			callback: function(index, elem){ changeBtime(index); }
		});
		jQuery('#today-arrow-prev').on('click', function () { todaySwipe.prev(); });
		jQuery('#today-arrow-next').on('click', function () { todaySwipe.next(); });
	} else {
		jQuery('#today-arrow-prev').hide();
		jQuery('#today-arrow-next').hide();
	};
	changeBtime(0);
	function changeBtime(paramIndex){ todayBtime.html(makeHtml.replace('todayBtimeStr', jQuery('#todayBtime_'+paramIndex).val())); };
	
	
	
	// 홈 이벤트 슬라이드
	var homeEventSlideList = jQuery('#homeEvent-slide').find('.swipe-wrap').find('> li');
	if(homeEventSlideList.length > 1) {
		var homeEventSwipe = Swipe(document.getElementById('homeEvent-slide'), {
			callback: function(index, elem){
				jQuery('#homeEvent-circle').find('a').eq(index).addClass('active').siblings().removeClass('active');
			},
			auto: 3000
		});
		jQuery('#homeEvent-arrow-prev').on('click', function () {
			eventSwipe.prev();
		});
		jQuery('#homeEvent-arrow-next').on('click', function () {
			eventSwipe.next();
		});
	} else {
		jQuery('#homeEvent-circle').hide();
		jQuery('#homeEvent-arrow-prev').hide();
		jQuery('#homeEvent-arrow-next').hide();
	};
	
	
	// 홈 기획전 슬라이드 
	var homePromoSlideList = jQuery('#homePromo-slide').find('.swipe-wrap').find('> li');
	if(homePromoSlideList.length > 1) {
		var homePromoSwipe = Swipe(document.getElementById('homePromo-slide'), {
			callback: function(index, elem){ changeBtime(index); }
		});
		jQuery('#homePromo-arrow-prev').on('click', function () { homePromoSwipe.prev(); });
		jQuery('#homePromo-arrow-next').on('click', function () { homePromoSwipe.next(); });
	} else {
		jQuery('#homePromo-arrow-prev').hide();
		jQuery('#homePromo-arrow-next').hide();
	};
	


	$(".orderZone .order_wrap>.order_info").each(function(index, element) {
		if( $(this).size() == 1 ){
			$(this).addClass("only");
		}
	});
	
	
	
	

	
	// 최소 높이값 지정  //
	contentsHeight = function(){
		$('#contents').css('min-height', $(window).height() - $('header').outerHeight() - $('footer').outerHeight() ) ;
		$('.nav_sideBar').css('height', $(window).height());
	};
	$(window).on("load resize", function(){
		contentsHeight();
	});	
	
	
	// 심플모드 일때 네비 숨기기
	if( $(".wrap .nav_sideBar").is(":visible") ){
		$(".wrap").removeClass("simple");
	}else{
		$(".wrap").addClass("simple");
		$(".header h1 a").attr("href","javascript:;");
	}
	
	
	// 상품리스트 홀짝 
	goodsImgUlListSet = function(){
		var ulList= $('.goods_wrap ul.goods_list');
		ulList.find(">li:nth-child(odd)").addClass("odd");
		ulList.find(">li:nth-child(even)").addClass("even");
	};
	//goodsImgUlListSet();
	
	
	// 상품옵션 "사은품" 찾아서 addClass
	$("ul.order_goods>li .goods_append dl.info dt").each(function(index, element) {
    	if( $(this).text() == "사은품" || $(this).text() == "사은품 옵션" ){
			$(this).parent().addClass("gift");
		}    
    });
	
	
	
	$(".priceInfo  a.btnDisPrice").on("click",function(){	
		if(  $(".priceInfo .popDisPrice").is(":visible") ){
			$(".priceInfo .popDisPrice").hide();
		}else{
			$(".priceInfo .popDisPrice").show();
		}
	});
	$(".priceInfo .popDisPrice a.close").on("click",function(){
		$(".priceInfo .popDisPrice").hide();
	});

	
	
	
	
	//////  상품리스트  이미지형,리스트형 토글선택 //////////
	uiProductListFunc = function(){
		
		$good_list = $(".contents .goods_list , .mainContents .goods_list");
		
		$("ul.list_view li a.list").on("click",function(){	
			$(this).parent().parent().find("a").removeClass("active");
			$(this).addClass("active");
			$good_list.removeClass("image");
			$good_list.addClass("list");
		});
		$("ul.list_view li a.image").on("click",function(){
			$(this).parent().parent().find("a").removeClass("active");
			$(this).addClass("active");
			$good_list.removeClass("list");
			$good_list.addClass("image");
		});
		
		if(  $("ul.list_view li a.list").hasClass("active")  ){
			$("ul.list_view li a.list").trigger("click");
			$good_list.addClass("list");
		}
		if(  $("ul.list_view li a.image").hasClass("active")  ){
			$("ul.list_view li a.image").trigger("click");
			$good_list.addClass("image");
		}
	};
	uiProductListFunc();
	
	
	

	
	goodsInfoMenu = function(M){

		$(".goodsInfoMenu>ul>li.m"+ M +"").addClass("active").siblings().removeClass('active');
		$(".goodsInfoTab>li.ctn"+ M +"").addClass("active").siblings().removeClass('active');
		
		
		var goodsInfoTab = $(".goodsInfoTab").offset();
		
		$("html, body").animate({scrollTop:goodsInfoTab.top - 38},300);
	};
	

	
	// 상품상세 탭메뉴 위치.
	goodsInfoPosition = $(".goodsInfoMenu .menu").offset() ;
	goodsInfoPositionAct = function () {
		
		// 탭메뉴 포지션 픽스
		var scrollT = $(window).scrollTop();
		var menuH = goodsInfoPosition.top ;
		
		if (scrollT > menuH ) {
			
			$(".goodsInfoMenu>ul").addClass("fixed");

		}else{
			$(".goodsInfoMenu>ul").removeClass("fixed");
			goodsInfoPosition = $(".goodsInfoMenu .menu").offset() ;
		}
		
		// ctn2높이 확대버튼 포지션 픽스
		var goodsInfoCtn2Pos = $(".goodsInfoTab>li.ctn2").offset();
		var ctn2T = goodsInfoCtn2Pos.top - 38;
		var ctn2H = ( $(".goodsInfoTab>li.ctn2").height() - 80);
		var ctn2B = ctn2T + ctn2H  ; 
		if( scrollT > ctn2T  && scrollT < ctn2B ) {
			$(".floating_btn_zoom").addClass("fixed");
		}else{
			$(".floating_btn_zoom").removeClass("fixed");
		}
	};
	
	
	$(window).on("load resize scroll",function(){
		$(".goodsInfoMenu").length && goodsInfoPositionAct();
	});

	
	
  	// 탭형식컨텐츠 ///////
	uiTabBoxAct = function(){ 
		$(".uiTabBox>li>.tit>a").on("click focus" , function() {
			$(this).parent().parent().parent().children(".ctn").removeClass("active");
			$(this).parent().parent().addClass("active");
			$(this).parent().parent().parent().find('.tit span.blind').remove();
			$(this).append('<span class="blind">&nbsp;현재 위치</span>');
	
		});
		
		$('.uiTabBox').each(function(index){	
			var uiTabBox = $(this);
			var titWidth = 0;
			var liEmt = uiTabBox.children("li").size();	
			for( c=1 ; c<= liEmt ; c++){
				uiTabBox.find('>li:nth-child('+c+')>.tit').css("left", titWidth  );
				var titWidth = titWidth + uiTabBox.find('>li:nth-child('+c+')>.tit').outerWidth();
				//console.log(  uiTabBox.find('li:nth-child('+c+') .tit').css("width")  );
			}
		});
		//alert("dd")	
	};
	$(".uiTabBox").length && uiTabBoxAct();
	
	$(window).on("resize",function(){
		uiTabBoxAct();
	});
	
	
	

	
	// 상품선택 첵크
	var	goodsCheck = {
		init:function(){
			$("ul.order_goods li .goods_check input[type=checkbox]:checked").parent().parent().parent().addClass("selected");
			$check = $("ul.order_goods li .goods_check input[type=checkbox]");
			this.addEvent();
		},
		addEvent: function(){
			$check.on("change",function(){
				if( $(this).is(":checked") ){
					$(this).parent().parent().parent().addClass("selected");
				}else{
					$(this).parent().parent().parent().removeClass("selected");
				}
			});
		}
	};
	$("ul.order_goods li .goods_check input[type=checkbox]").length && goodsCheck.init();	

	

	// 팝업윈도우창닫기
	$(".popWindow .popHead .btnClose").on("click",function(){ 
		window.self.close();
	});
	
	
	
	// 기간조회 열기 닫기
	$(".accordion_wrap .period .accordion_btn ul.btn_multi li a").on("click",function(){
		if( $(".accordion_wrap .period").hasClass("active") ){
			$("ul.period_month").removeClass("off");
		}else{
			$("ul.period_month").addClass("off");
		}
	});
	
	
});
