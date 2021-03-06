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
					<h2><span>비밀번호 변경안내</span></h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>비밀번호 변경안내</span></h2>
					</nav><!-- 2016-06-24 -->
					<form>
						<!-- 2015-04-29 수정 -->
						<div class="pw_change">
							<div class="tit alignleft">
								<p>고객님의 소중한 개인정보를 보호하기 위해 <br /><strong class="emp1">6개월 이상(180일)</strong> 비밀번호를 변경하지 않은 고객님들께 <strong class="emp1">비밀번호 변경을 안내</strong>하고 있습니다.</p>
								<p><strong class="emp1">‘다음에 변경하기’</strong> 버튼을 눌러 변경을 연기하시면 6개월 후 다시 안내해 <span class="ib">드립니다.</span> 비밀번호를 주기적으로 변경하셔서 개인정보 도용으로 인한 <span class="ib">피해를 예방하세요.</span></p>
							</div>
							<div class="pw_change">
								<div>
									<dl class="form_input2">
										<dt><label for="pw1">기존 비밀번호</label></dt>
										<dd>
											<span class="inputBox"><input type="password" name="pw1" tabindex="1" autocapitalize="off" /></span>
										</dd>
									</dl>
									<!--
									<p class="message emp2">비밀번호가 일치하지 않습니다.</p>
									<p class="message emp2">‘영문소문자’와 ‘숫자’로 조합하여 8자~15자로 입력해 주세요.</p>
									-->
								</div>
								<div>
									<dl class="form_input2">
										<dt><label for="pw1">새 비밀번호 입력</label></dt>
										<dd>
											<span class="inputBox"><input type="password" name="pw1" tabindex="1" autocapitalize="off" /></span>
										</dd>
									</dl>
									<!-- 
									<p class="message emp2">새 비밀번호를 입력해 주세요.</p>
									<p class="message emp2">‘영문소문자’와 ‘숫자’로 조합하여 8자~15자로 입력해 주세요.</p>
									<p class="message emp2">기존 비밀번호와 동일한 비밀번호는 사용하실 수 없습니다.</p>
									<p class="message emp3">사용 가능한 비밀번호입니다.</p>
									 -->
								</div>
								<div>
									<dl class="form_input2">
										<dt><label for="pw2">새 비밀번호 확인</label></dt>
										<dd>
											<span class="inputBox"><input type="password" name="pw2" tabindex="1" autocapitalize="off" /></span>
										</dd>
									</dl>
									<!--									
									<p class="message">새 비밀번호 확인을 입력해 주세요.</p>
									<p class="message emp2">비밀번호가 일치하지 않습니다.</p>
									-->
								</div>
								<p class="refer"><span class="emp2">* ‘영문소문자’와 ‘숫자’로 조합하여 8자~15자로 입력해 주세요.</span></p> <!-- 2016-06-13 : 클래스 추가 -->
								<div class="btns_wrap btn2">
									<span class="btn size2 bgcolor2"><a href="#">다음에 변경하기</a></span>
									<span class="btn size2 bgcolor4"><a href="#">변경하기</a></span>
								</div>
							</div>
							<!-- /2015-04-29 수정 -->
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