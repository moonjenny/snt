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
			<!--main S-->
			<main id="contents">
				<section class="contents"><!-- 2015-05-18 수정 -->
					<!-- <span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span> --><!-- gnb와 이전버튼 삭제 -->
					<h2><span>시스템 장애 안내</span></h2>

					<div class="error_wrap">
						<em class="examine">X</em>
						<p><strong>시스템 점검중입니다.</strong></p>
						<p>이용에 불편 드려 죄송합니다.</p>					
						<div class="boxtype1 aligncenter">
							<p><strong>점검시간</strong> : 2015년 4월 1일 (월) 09:00 ~ 11:00 (2시간)</p>
							<p class="refer">※ 상기 작업 시간은 사정에 의해 변경될 수 있습니다.</p>
						</div>
					</div>
					
				</section>
			</main>
			<!--main E-->
			
		</div><!-- end wrap_inner -->
	</div><!-- end wrap -->

	<%@ include file="/contents/2015_t/views/includefile/page_top.jsp"%>

</div><!-- end container -->
<%@ include file="/contents/2015_t/views/includefile/scriptlink.jsp"%>
</body>
</html>