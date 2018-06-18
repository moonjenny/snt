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
			<!--header S-->
			<%@ include file="/contents/2015_t/views/includefile/header.jsp"%>
			<!--header E-->
			<!--main S--> 
			<main id="contents">
				<section class="contents colorContents">
					<!-- <span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
					<h2><span>검색</h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>검색</span></h2>
					</nav><!-- 2016-06-24 -->
							
					<div class="topbanner"><!-- 2016-06-16 top배너 추가 -->
						<ul>
							<li><a><img src="../../img/_tmp/010_3.jpg" alt=""></a></li>
						</ul>
					</div>	
					<!-- 검색결과 -->
					<div class="list_nodata type2">
						<p>검색 결과가 없습니다.</p>
						<p>검색어를 다시 한 번 확인해주세요!</p>
					</div>
					<!-- //검색결과 -->	
					<!-- <div class="contents_wrap search">
						<h3><span>쇼핑엔T 추천 상품</h3>
					</div> -->
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
</body>
</html>