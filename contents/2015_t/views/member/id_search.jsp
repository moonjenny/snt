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
				<section class="contents">
					<!-- <span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
					<h2><span>아이디 찾기</span></h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>아이디 찾기</span></h2>
					</nav><!-- 2016-06-24 -->
					<form>
						<div class="memSrchZone">
							<!-- 2015-04-28 수정 -->
							<div class="tit">
								<p>아이디 찾기를 위한 <strong class="emp1">본인인증</strong> 단계입니다.</p>
								<p>휴대폰 인증을 해야 합니다.</p>
							</div>
							<div class="btns_wrap certify"><span class="btn size3 bgcolor5"><a href="#">휴대폰 인증</a></span></div>
							<p class="refer">* 본인인증을 위해 입력하신 개인정보는 본인인증기관에서 수집하는 정보이며, 수집된 정보는 본인인증 외 어떠한 용도로도 이용되거나 별도 저장되지 않습니다.</p>
							<!-- /2015-04-28 수정 -->
						</div>
					</form>
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