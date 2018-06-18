<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<%@ include file="/contents/2015_t/views/includefile/declare2.jsp"%>
</head>
<body>
<%@ include file="/contents/2015_t/views/includefile/skipNavi.jsp"%>
<div class="container">
	<div class="wrap">

		<div class="wrap_inner">
			<!--header S-->
			<%@ include file="/contents/2015_t/views/includefile/header2.jsp"%>
			<!--header E-->
			<!--main S-->
			<main id="contents">
				<section class="contents">
				
					<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
					<h2><span>세션만료</span></h2>

					<div class="error_wrap">
						<em class="exclamation">!</em>
						<p><strong>30분간 가입 및 결제를 진행하지 않아<br />서버와의 접속이 끊어졌습니다.</strong></p><!-- 2015-05-18 수정 -->
					</div>
					
					<!-- buttons --><!-- 2015-06-01 수정, 2015-05-18 추가 -->
					<div class="btns_wrap">
						<span class="btn size3 bgcolor5"><a>닫기</a></span>
					</div>
					<!-- /buttons -->
				</section>
				
			</main>
			<!--main E-->
			<!--footer S-->
			<%@ include file="/contents/2015_t/views/includefile/footer2.jsp"%>
			<!--footer E-->
		</div><!-- end wrap_inner -->
	</div><!-- end wrap -->

	<%@ include file="/contents/2015_t/views/includefile/page_top.jsp"%>
</div><!-- end container -->
<%@ include file="/contents/2015_t/views/includefile/scriptlink.jsp"%>
</body>
</html>