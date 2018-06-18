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
					<h2><span>회원탈퇴</h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>회원탈퇴</span></h2>
					</nav><!-- 2016-06-24 -->
					<div class="memOutZone">
						<div class="tit">
							<p>회원탈퇴 시 보유하신 적립금 및 쿠폰 등<br />멤버십 정보가 <strong class="emp1">즉시 삭제</strong>됩니다.</p><!-- 2015-05-12 수정 -->
						</div>
						<h3 class="mypage_tit">보유 적립금 / 쿠폰 정보</h3><!-- 2015-05-12 수정 -->
						<div class="mypage_wrap">
							<div class="info_box">
								<!-- 2015-05-12 수정 -->
								<dl>
									<dt>적립금</dt>
									<dd><p class="emp2">1500원</p></dd>
								</dl>
								<dl>
									<dt>쿠폰</dt>
									<dd>
										<p>2,000원 할인쿠폰</p>
										<p>무료배송 쿠폰 X 2</p>
										<p>10% 추가적립 쿠폰 X 2</p>
									</dd>
								</dl>
								<!-- /2015-05-12 수정 -->
							</div>
						</div>
						<h3 class="mypage_tit">회원 탈퇴 시 유의사항</h3>
						<div class="mypage_wrap">
							<div class="out_regard">
								<p>서비스 이용에 만족을 드리지 못해 죄송합니다.</p>
								<p>쇼핑엔T는 회원탈퇴 후 부정이용 방지를 위하여 15일간 재가입이 불가하오니, 신중하게 결정해주시기 바랍니다.</p>
								<p>회원탈퇴 시 회원정보 및 보유하신 적립금 등 혜택정보가 삭제되며, 데이터는 복구되지 않습니다. 관계법령에 의해 보존이 필요한 데이터에 한하여 구매관련정보는 보존됩니다.</p>
								<!-- 2015-05-12 수정 -->
								<ul class="mark dot">
									<li>계약 및 청약철회 등에 관한 기록 : 5년</li>
									<li>대금결제 및 재화 등의 공급에 관한 기록 : 5년</li>
									<li>신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년</li>
									<li>소비자의 불만 또는 분쟁 처리에 관한 기록 : 3년</li>
									<li>성명, CI, DI, 아이디, 비밀번호, 이메일, 로그기록, 접속IP : 30일</li>
								</ul>
								<!-- /2015-05-12 수정 -->
								<p><strong class="emp1">고객님께서 불편하셨던 점, 아쉬웠던 점을 알려주시면 앞으로 더 나은 모습으로 찾아 뵙겠습니다.</strong></p>
								<ul class="form_input">
									<li>
										<input type="radio" id="cause1" />
										<label for="cause1">서비스 장애가 잦아서</label>
									</li>
									<li>
										<input type="radio" id="cause2" />
										<label for="cause2">이벤트 및 무료서비스 혜택이 적어서</label>
									</li>
									<li>
										<input type="radio" id="cause3" />
										<label for="cause3">불만 및 불편사항에 대한 고객응대가 나빠서</label>
									</li>
									<li>
										<input type="radio" id="cause4" />
										<label for="cause4">이용빈도가 낮고 개인정보 유출이 우려되어</label>
									</li>
									<li>
										<input type="radio" id="cause5" />
										<label for="cause5">탈퇴 후 재가입을 위해</label>
									</li>
									<li>
										<div class="out_cause">
											<p>
												<input type="radio" id="cause6" />
												<label for="cause6">기타</label>
											</p>
											<span class="inputBox"><input type="text" /></span>
										</div>										
									</li>
								</ul>								
							</div>
							<!-- buttons --><!-- 2015-05-12 수정, 위치변경 -->
							<div class="btns_wrap btn2">
								<span class="btn size2 bgcolor2"><a href="#">취소</a></span><!-- 2015-06-01 수정 -->
								<span class="btn size2 bgcolor4"><a>탈퇴</a></span>
							</div>
							<!-- /buttons -->
						</div>
					</div>
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