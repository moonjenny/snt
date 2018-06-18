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
				<section class="contents" >
					<!-- <span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
					<h2><span>아이디 찾기</span></h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>아이디 찾기</span></h2>
					</nav><!-- 2016-06-24 -->
					<form>
						<!-- 2015-04-29 수정 -->
						<div class="memSrchZone">
							<div class="tit">
								<p>고객님께서 가입하신 <strong class="emp1">아이디</strong>입니다.</p>
								<p class="message form"><label for="id"><input type="text" id="id" value="sdfgsdfgsdfgsdg" readonly="readonly" class="aligncenter" /></label></p>
							</div>
							<div class="btns_wrap"><span class="btn size3 bgcolor4"><a href="#">로그인</a></span></div>
							<p class="direction aligncenter">고객님 비밀번호가 기억나지 않으세요?</p>
							<div class="btns_wrap"><span class="btn size3 bgcolor2"><a href="#">비밀번호 찾기</a></span></div><!-- 2015-05-28 수정 -->
						</div>
						<!-- /2015-04-29 수정 -->
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