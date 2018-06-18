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
					<h2><span>간편결제 본인확인</span></h2>
					<div class="memCertifyZone simple">
						<div class="tit step0">
							<p>안녕하세요. 쇼핑엔T입니다.</p>
							<p><strong class="emp1">김쇼핑</strong> 고객님이 맞으십니까?</p>
							<p>맞으시면, <strong class="emp2">예</strong>를 눌러서 <br />간편결제를 진행하세요.</span></p>
						</div>
						<div class="btns_wrap">
							<span class="btn size3 bgcolor2"><a href="#">아니오</a></span><!-- 2015-06-01 수정 -->
							<span class="btn size3 bgcolor4"><a href="#">예</a></span><!-- 2015-06-01 수정 -->
						</div>
					</div>
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