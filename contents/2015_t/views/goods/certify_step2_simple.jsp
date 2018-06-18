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
					<h2><span>간편결제</span></h2>
					<form>
						<ol class="step half">
							<!-- 2015-05-07 수정 -->
							<li><span><u>1</u>주문자정보</span></li><!-- 2016-06-13 텍스트 수정 -->
							<li class="current"><span><u>2</u>약관동의</span></li>
							<!-- /2015-05-07 수정 -->
						</ol>
						<div class="memAgreeZone">
							<div class="tit"><!-- 2016-06-15 텍스트 추가 -->
								<p>고객님은 아직 모바일 비회원이십니다.</p>
								<p><strong class="emp1">상품 할인, 적립금 지급</strong> 등 회원에게만 주어지는 특별한 혜택을</p>
								<p>받으실려면 <strong class="emp1">회원가입 후</strong> 이용바랍니다.</p><br>
								<p>비회원이더라도 아래 약관에 동의하신 후 주문 가능합니다.</p>
							</div>				
							<!-- 2016-06-15 위치 수정 -->
							<div class="whole_agree">
								<p class="check">
									<input type="checkbox" id="agreeall" />
									<label for="agreeall">회원 서비스 약관 전체동의</label>
								</p>
							</div>
							<!-- /2016-06-15 위치 수정 -->
							<div class="agree">
								<dl>
									<dt>이용약관</dt>
									<dd>
										<div class="check_box">
											<input type="checkbox" id="agree1" />
											<p><label for="agree1">약관에 동의합니다.</label><a href="#"><em class="emIco"></em></a></p>
										</div>
									</dd>
								</dl>
								<dl>
									<dt>물품 관련 메시지</dt>
									<dd>
										<div class="check_box">
											<input type="checkbox" id="agree4" />
											<p><label for="agree4">결제/배송/반품/교환/환불 등과 관련된 SMS 수신동의</label><a href="#"><em class="emIco"></em></a></p>
										</div>
									</dd>
								</dl>
							</div>
							<!-- 2016-06-15 추가 -->
							<div class="btns_wrap btn2">
								<span class="btn size2 bgcolor2"><a href="#">이전단계</a></span>
								<span class="btn size2 bgcolor4"><a href="#">다음단계</a></span>
							</div>
							<div class="btns_wrap">
								<span class="btn fullwidth bgcolor5"><a href="#">모바일 회원가입</a></span>
							</div>
							<!-- /2016-06-15 추가 -->
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