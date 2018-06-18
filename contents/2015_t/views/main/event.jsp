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
						<ul class="BannerList">
							<li><a href="#"><img src="../../img/_tmp/event_img1.png" alt="" /></a></li>
							<li><a href="#"><img src="../../img/_tmp/event_img2.png" alt="" /></a></li>
							<li><a href="#"><img src="../../img/_tmp/event_img3.png" alt="" /></a></li>
						</ul>
						<!-- 이벤트 목룍 없을 경우 
						<div class="eventNone">
							<p><img src="../../img/favicon.png" alt="" /></p>
							<p class="event_txt">현재 진행중인 이벤트가 없습니다.</p>
							<p>품질 좋은 상품을 보다 저렴하게<br>이용할 수 있는 이벤트로 찾아오겠습니다.<br>그때까지 잠시 기다려주세요.</p>
						</div>
						//이벤트 목룍 없을 경우 -->
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