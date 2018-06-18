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
					<h2><span>회원가입</span></h2>
					<form>
						<div class="memCompleteZone">
							<!-- 2015-04-29 수정 -->
							<p><span>홍길동</span>님!<br />TV및 모바일 회원가입이<br />완료되었습니다.</p><!-- 2015-05-08 수정 -->
							<p>쇼핑엔T 회원이 되신 것을<br />축하드리며, 다양한 혜택과 서비스를<br />경험하실 수 있습니다.</p>
							<div class="btns_wrap">
								<span class="btn size3 bgcolor4"><a href="#">확인</a></span>
							</div>
							<!-- /2015-04-29 수정 -->
						</div>
					</form>
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