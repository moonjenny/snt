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
						<li class="current"><a href="lime.jsp">라임</a></li>
						<li><a href="recommend.jsp">T는상품</a></li>
						<li><a href="event.jsp">이벤트</a></li>
						<li><a href="promotion.jsp">기획전</a></li>					
					</ul>
				</nav>
				<section class="mainContents">
					<!-- 상품 배너 -->
					<div class="eventmain">
						<ul class="limeBanner">
							<li class="limeLeft"><a href="#"><img src="../../img/_tmp/event_img6.png" alt="" /></a></li>
							<li><a href="#"><img src="../../img/_tmp/event_img7.png" alt="" /></a></li>
							<li><a href="#"><img src="../../img/_tmp/event_img8.png" alt="" /></a></li>
						</ul>
						<ul class="BannerList">
							<li><a href="#"><img src="../../img/_tmp/event_img9.png" alt="" /></a></li>
							<li><a href="#"><img src="../../img/_tmp/event_img10.png" alt="" /></a></li>
							<li><a href="#"><img src="../../img/_tmp/event_img11.png" alt="" /></a></li>
						</ul>
					</div>
					<!-- //상품 배너 -->
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
</body>
</html>