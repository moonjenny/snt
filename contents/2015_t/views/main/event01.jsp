<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<%@ include file="/contents/2015_t/views/includefile/declare.jsp"%>
</head>
<body>
<%@ include file="/contents/2015_t/views/includefile/skipNavi.jsp"%>
<div class="container">
	<div class="wrap">
		<%@ include file="/contents/2015_t/views/includefile/ctgr_sideBar.jsp"%>

		<div class="wrap_inner">
			<!-- top banner --><!-- 2015-05-27 추가 -->
			<!-- <div class="topbanner">
				<ul>
					<li><a><img src="../../img/_tmp/029.jpg" alt="" /></a></li>
					<li><a><img src="../../img/_tmp/030.jpg" alt="" /></a></li>
					<li><a><img src="../../img/_tmp/031.jpg" alt="" /></a></li>
				</ul>
				<span class="closebanner"><a>닫기</a></span>
			</div>	 -->		
			<!-- /top banner -->
			<!--header S-->
			<%@ include file="/contents/2015_t/views/includefile/header.jsp"%>
			<!--header E-->
			<!--main S-->
			<main id="contents">
				<nav class="gnb main" id="topNav">
					<ul>
						<li><a href="home.jsp">홈</a></li>
						<li><a href="tv_schedule.jsp">TV편성</a></li>
						<li><a href="#">라임</a></li>
						<li><a href="recommend.jsp">T는상품</a></li>
						<li class="current"><a href="event.jsp">이벤트</a></li>
						<li><a href="promotion.jsp">기획전</a></li>					
					</ul>
				</nav>
				<section class="mainContents">
					<!-- 이벤트 배너 -->
					<div class="eventmain">
<div style="margin:-10px;">
	<div class="event_inner">
		<img src="http://img.shoppingntmall.com/event/201802/event_2018022201.jpg" alt="">
		<a href="/customer/insert-saveamt?saveamtFlag=1&rUrl=/plan/event/swipeDetail/2015100022?pageType=1"><img src="http://img.shoppingntmall.com/event/201802/event_2018022202.jpg" alt=""></a>
		<img src="http://img.shoppingntmall.com/event/201802/event_2018022203.jpg" alt="">
		<span class="div_half">
			<a href="https://itunes.apple.com/kr/app/syoping-ent/id1004806037?mt=8" target="_blank"><img src="http://img.shoppingntmall.com/event/201802/event_2018022204.jpg" alt=""></a>
			<a href="http://play.google.com/store/apps/details?id=com.shoppingntmall.mcapp" target="_blank"><img src="http://img.shoppingntmall.com/event/201802/event_2018022205.jpg" alt=""></a>
		</span>
		<img src="http://img.shoppingntmall.com/event/201802/event_2018022206.jpg" alt="">
		<a href="/customer/insert-saveamt?saveamtFlag=2&rUrl=/plan/event/swipeDetail/2015100022?pageType=1"><img src="http://img.shoppingntmall.com/event/201802/event_2018022207.jpg" alt=""></a>
		<img src="http://img.shoppingntmall.com/event/201802/event_2018022208.jpg" alt="">
	</div>
	<div class="note">
		<strong>이벤트 유의사항</strong>
		<ul>
			<li>쇼핑엔티 APP 첫 다운로드 이벤트는 모바일 App에서만 참여가 가능하며 이벤트 기간 내 신규로 App을 설치한 고객님에게만 지급 됩니다.</li>
			<li>첫 구매 이벤트는 모바일 App과 모바일 웹에서 참여가 가능하며 모바일 구매 이력이 없는 고객님에게만 지급 됩니다.</li>
			<li>본 이벤트는 ID당 1회만 참여가 가능합니다.</li>
			<li>기존 App 설치 고객 및 삭제 후 재설치 고객님은 참여하실 수 없습니다.</li>
			<li>지급되는 적립금의 유효기간은 지급일로부터 7일까지 사용가능 합니다.</li>
			<li>본 이벤트는 당사의 사정에 따라 변경 또는 조기 종료 될 수 있습니다.</li>
		</ul>
	</div>
</div>
					</div>
					<!-- //이벤트 배너 -->
					<!-- banner image --><!-- 2015-04-28 배너 추가 -->
					<!-- <div class="eventBan">
						<a href="#"><img src="../../img/_tmp/009.jpg" alt=""></a>
					</div> -->
					<!-- /banner image -->
				</section>
			</main>
			<!--main E-->
			<!--footer S-->
			<%@ include file="/contents/2015_t/views/includefile/footer.jsp"%>
			<!--footer E-->
		</div><!-- end wrap_inner -->
	</div><!-- end wrap -->

	<%@ include file="/contents/2015_t/views/includefile/page_top.jsp"%>
</div><!-- end container -->
<%@ include file="/contents/2015_t/views/includefile/scriptlink.jsp"%>

<script type="text/javascript" src="/contents/2015_t/resources/js/jquery.easing.1.3.min.js"></script><!-- 2015-05-29 추가 -->

<!-- 2015-07-03 -->
<script type="text/javascript">
$(document).ready(function () {
	
$('.topbanner').show();

UI = {
	Load: function(){
		UI.Rolling();
		
	},

	Rolling: function(){
		var ground = $('.topbanner'),
			imgs_wrap = ground.children('.topbanner ul'),
			imgs = imgs_wrap.children(),
			size = imgs.height();

		//default
		imgs_wrap.css('top',-size);
		ground.css("height",+size+"px");
		imgs_wrap.children('li:last').prependTo(imgs_wrap);		
		
		var prev = function(){
			size = imgs.height();
			imgs_wrap.stop().animate({'top':0}, 300, 'easeInExpo', function(){
				$(this).children('li:last').prependTo(this);
				$(this).css({'top':-size});
			});
		}

		var next = function(){
		    size = imgs.height();
			imgs_wrap.stop().animate({'top':-(size*2)}, 300, 'easeInExpo', function(){
				$(this).children('li:first').appendTo(this);
				$(this).css({'top':-size});
			});
		}
		
		var start = function(){
			set_interval = setInterval(function(){
				next();
			}, 5000);//5초 자동롤링
		}
		
		start();
		
	}
}

$(document).ready(function(){
	UI.Load();
});

});
</script>
<script type="text/javascript">        
$(function() {
	$(window).bind('resize', function(e) {
	$('.topbanner').height($('.topbanner ul>li img').height());
	$('.topbanner ul').height($('.topbanner ul>li img').height());
	$('.topbanner').show();


UI = {
	Load: function(){
		UI.Rolling1();
		
	},

	Rolling1: function(){
		var ground = $('.topbanner'),
			imgs_wrap = ground.children('.topbanner ul'),
			imgs = imgs_wrap.children(),
			size = imgs.height();

		//default
		imgs_wrap.css('top',-size);
		ground.css("height",+size+"px");
		imgs_wrap.children('li:last').prependTo(imgs_wrap);		
		
		var prev = function(){
			size = imgs.height();
			imgs_wrap.stop().animate({'top':0}, 300, 'easeInExpo', function(){
				$(this).children('li:last').prependTo(this);
				$(this).css({'top':-size});
			});
		}

		var next = function(){
		    size = imgs.height();
			imgs_wrap.stop().animate({'top':-(size*2)}, 300, 'easeInExpo', function(){
				$(this).children('li:first').appendTo(this);
				$(this).css({'top':-size});
			});
		}
		
		var start = function(){
			set_interval = setInterval(function(){
				next();
			}, 50000000);//5초 자동롤링
		}
		
		start();
		
	}
}
	
		UI.Rolling1();
	});
});
 </script>
<!-- 2015-07-03 -->
</body>
</html>