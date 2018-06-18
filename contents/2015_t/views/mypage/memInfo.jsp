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
					<h2><span>회원정보 수정</h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>회원정보 수정</span></h2>
					</nav><!-- 2016-06-24 -->
					<form>
						<div class="memInfoZone">
							<div class="tit">
								<p>본인 확인을 위해<br /><strong class="emp1">비밀번호</strong>를 입력해 주세요.</p><!-- 2015-05-10 수정 -->
							</div>
							<div class="memInfoStep">
								<div class="info_box">
									<dl>
										<dt>아이디</dt>
										<dd>skbshopping</dd>
									</dl>
								</div>
								<dl class="form_input2">
									<dt>비밀번호</dt>
									<dd>
										<span class="inputBox"><input type="password" name="pw" tabindex="1" autocapitalize="off" /></span>
										<!-- 2015-05-10 수정
										<p class="message iconed emp2">비밀번호를 입력해주세요.</p>
										<p class="message iconed emp2">비밀번호가 일치하지 않습니다.</p>
										-->
									</dd>
								</dl>
								<!-- buttons --><!-- 2015-05-10 수정 -->
								<div class="btns_wrap">
									<span class="btn size3 bgcolor4"><a>확인</a></span>
								</div>
								<!-- /buttons -->
							</div>
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