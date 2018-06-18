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
						<ol class="step half"><!-- 2016-06-29 : 약관동의 삭제 -->
							<li><span><u>1</u>가입확인</span></li>
							<li class="current"><span><u>2</u>회원정보</span></li>
						</ol>
						<div class="memInforZone">
						
							<div class="readonly">
								<dl class="form_input2">
									<dt>이름</dt>
									<dd>홍길동</dd>
								</dl>
								<dl class="form_input2">
									<dt>아이디</dt>
									<dd>frank1977</dd>
								</dl>
								<dl class="form_input2">
									<dt>이메일</dt>
									<dd>frankachieve@gmail.com</dd>
								</dl>
							</div>
							<dl class="form_input">
								<dt>휴대폰 전화</dt>
								<dd>
									<div class="phone_area">
										<p>
											<span>
												<select name="" tabindex="6" disabled="disabled">
	                                                  <option value="">010</option>
	                                                  <option value="">011</option>
	                                                  <option value="">016</option>
	                                                  <option value="">017</option>
	                                                  <option value="">018</option>
	                                                  <option value="">019</option>
	                                            </select>
											</span>
										</p>
										<p>
											<span>
												<em>-</em>
												<span class="inputBox"><input type="tel" value="0000" name="tel1" tabindex="4" autocapitalize="off" disabled="disabled"/></span>
											</span>
										</p>
										<p>
											<span>
												<em>-</em>
												<span class="inputBox"><input type="tel" value="0000" name="tel2" tabindex="5" autocapitalize="off" disabled="disabled"/></span>
											</span>
										</p>
									</div>
								</dd>
							</dl>
							<dl class="form_input">
								<dt>TV 비밀번호</dt>
								<dd>
									<div class="tv_pw_area">
										<span class="caution">TV에서 사용할 비밀번호 숫자 4자리 입력</span><!-- 2015-05-08 수정 -->
										<span class="inputBox"><input type="password" name="pw1" tabindex="2" autocapitalize="off" /></span>
									</div>
									<!-- 2015-05-08 수정
									<p class="message emp2">TV 비밀번호를 입력해 주세요.</p>
									-->
								</dd>
							</dl>
							<dl class="form_input">
								<dt>TV 비밀번호 확인</dt>
								<dd>
									<span class="inputBox"><input type="password" name="pw2" tabindex="3" autocapitalize="off" /></span>
									<!-- 2015-05-08 수정
									<p class="message emp2">비밀번호 중복확인을 하셔야 합니다.</p>
									<p class="message emp2">입력한 TV 비밀번호 확인이 일치하지 않습니다.</p>
									 -->
								</dd>
							</dl>							
							<!-- 2015-05-08 수정 -->
							<div class="btns_wrap btn2">
								<span class="btn size2 bgcolor2"><a href="#">취소</a></span><!-- 2015-06-01 수정 -->
								<span class="btn size2 bgcolor4"><a href="#">회원가입</a></span>
							</div>
							<!-- /2015-05-08 수정 -->
							
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