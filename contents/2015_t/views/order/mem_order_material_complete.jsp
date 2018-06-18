<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<%@ include file="/contents/2015_t/views/includefile/declare.jsp"%>
<!-- html 화면 확인용 임시 스크립트 : 개발 미적용 -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$(".order_wrap .order_goods:nth-of-type(2)").hide();
	$(".order_wrap .order_goods:nth-of-type(3)").hide();
	$("#counsellorinfoh3").hide();
	$("#counsellorinfoh3 + .order_wrap").hide();
	$(".orderComplete p:nth-of-type(3)").hide();
	$(".orderComplete p:nth-of-type(5)").hide();
	
	$(".type2").click(function () {
		$(".order_wrap .order_goods:nth-of-type(2)").show();
	});
	
}); 
</script>
<!-- /html 화면 확인용 임시 스크립트 : 개발 미적용 -->
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
					<h2><span>주문완료</span></h2>
					<!-- 주문완료 -->
					<div class="orderComplete">
						<p>○○○ 고객님 감사합니다.</p>
						<p>정상적으로 완료되었습니다.</p>
						<!-- 무형유상 공통 -->
						<p>추후 상담사가 연락드리겠습니다</p>
						<!-- /무형유상 공통 -->
						<p><span>주문내역/정보를 확인하시기 바랍니다.</span></p>
						<!-- 무형유상 상품 -->
						<p><span>상담내역/정보를 확인하시기 바랍니다.</span></p>
						<!-- /무형유상 상품 -->
						<div class="order_num">
							<p><span>주문번호 : <em>20130124037942</em></span></p>
							<p><span>고객님의 비회원 주문 비밀번호는 <br /><em>20121013</em> 입니다.</span></p>
						</div>
					</div>
					<!-- //주문완료 -->
					
					<div class="orderZone">
						<!-- 주문상품정보 -->
						<h3 class="order_tit">1. 주문 상품 정보</h3>
						<div class="order_wrap ordergoods"><!-- 2015-05-02 class 추가 -->
							<ul class="order_goods">
								<li>
									<div class="goods">
										<p class="goods_img"><img src="../../img/_tmp/005_1.jpg" alt="" /></p>
										<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
										<div class="goods_price">
											<del><em>287,100</em>원</del>
											<span><em>139,700</em>원</span>
										</div>
									</div>
									<!-- 2015-04-30 수정 -->
									<div class="goods_append">
										<p>
											<em>옵션</em>
											<span>바다를 품은 육포 2BOX</span>
										</p>
										<p>
											<em>수량</em>
											<span>1개</span>
										</p>
										<p>
											<em>사은품</em>
											<span>강화유리 접시 5P 화이트/1개</span>
											<span class="gift_option">[사은품 옵션 : 꽃무늬 유리]<span>
										</p>
									</div>
									<!-- /2015-04-30 수정 -->
								</li>
							</ul>
							<ul class="order_goods">
								<li>
									<div class="goods">
										<p class="goods_img"><img src="../../img/_tmp/002.jpg" alt="" /></p>
										<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
										<div class="goods_price">
											<del><em>287,100</em>원</del>
											<span><em>139,700</em>원</span>
										</div>
									</div>
									<!-- 2015-04-30 수정 -->
									<div class="goods_append">
										<p>
											<em>옵션</em>
											<span>바다를 품은 육포 2BOX</span>
										</p>
										<p>
											<em>수량</em>
											<span>1개</span>
										</p>
									</div>
									<!-- /2015-04-30 수정 -->
								</li>
							</ul>
							<ul class="order_goods">
								<li>
									<div class="goods">
										<p class="goods_img"><img src="../../img/_tmp/002.jpg" alt="" /></p>
										<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
										<p class="goods_counsel">상담 전용 상품입니다.</p>
									</div>
								</li>
							</ul>
							<!-- 2015-04-30 총주문금액 삭제 -->
						</div>
							
						<h3 class="order_tit orderacount">2. 결제/가격 정보</h3><!-- 2015-05-03 추가 -->						
						<!-- 결제방법 --><!-- 2015-05-04 수정 -->
						<div class="order_wrap payway">
							<div class="method">
								<p><em>결제수단</em><span>신용카드</span></p>
								<p><em>카드종류</em><span>KB카드</span></p>
								<p><em>납부방식</em><span>일시불</span></p>
							</div>
						</div>
						<!-- //결제방법 -->			
						<div class="total_wrap">
							<ul class="goods">
								<li>
									<dl>
										<dt>총 상품가격</dt><!-- 2015-06-15 수정 -->
										<dd>
											<span class="price"><em>328,700</em>원</span>
										</dd>
									</dl>
								</li>
								<li>
									<!-- 2015-04-30 수정 -->
									<div class="discount">								
										<dl>
											<dt>상품 할인</dt>
											<dd><span class="price minus"><em>100</em>원</span></dd>
										</dl>
										<dl>
											<dt>스마트폰 할인</dt>
											<dd><span class="price minus"><em>1,000</em>원</span></dd>
										</dl>										
										<dl>
											<dt>쿠폰 사용</dt>
											<dd><span class="price minus"><em>900</em>원</span></dd>
										</dl>										
										<dl>
											<dt>일시불 할인</dt>
											<dd><span class="price minus"><em>12,000</em>원</span></dd>
										</dl>
										<dl>
											<dt>적립금 사용</dt>
											<dd><span class="price minus"><em>2,500</em>원</span></dd>
										</dl>
										<dl>
											<dt>배송비</dt>
											<dd><span class="price plus"><em>2,500</em>원</span></dd>
										</dl>
									</div>
									<!-- /2015-04-30 수정 -->
								</li>
							</ul>
							<div class="payment">
								<dl>
									<dt>총 결제금액<span>(할인적용, 배송비 포함)</span></dt><!-- 2015-04-30 수정 -->
									<dd>
										<span class="price"><em>276,500</em>원</span>
									</dd>
								</dl>
							</div>
							<div class="benefit">								
								<div class="save">
									<!-- 2015-05-02 수정 -->
									<dl>
										<dt>적립혜택<span>(적립금)</span></dt>										
										<dd><span class="price"><em>30</em>원</span></dd>
									</dl>
									<!-- /2015-05-02 수정 -->
								</div>
							</div>
						</div>						
						
						<h3 class="order_tit" id="counsellorinfoh3">2. 상담자 정보</h3>
						<div class="order_wrap">
							<div class="complete_info">								
								<dl>
									<dt>이름</dt>
									<dd>홍길동</dd>
								</dl>
								<dl>
									<dt>휴대전화</dt>
									<dd>000-0000-0000</dd>
								</dl>
							</div>							
						</div>
						
						<!-- 배송 정보 -->
						<h3 class="order_tit" id="deliverinfoh3">3. 배송 정보</h3><!-- 2015-05-04 수정 -->
						<div class="order_wrap">
							<div class="complete_info">								
								<dl>
									<dt>받는 고객 정보</dt><!-- 2015-04-30 띄어쓰기 수정 -->
									<dd>홍길동</dd>
								</dl>
								<dl>
									<dt>휴대전화</dt>
									<dd>000-0000-0000</dd>
								</dl>
								<dl>
									<dt>전화번호</dt>
									<dd>000-0000-0000</dd>
								</dl>
								<dl>
									<dt>주소</dt>
									<dd>000-000<br />
										서울특별시 중구 퇴계로 24 SK남산그린빌딩<br />
									</dd>
								</dl>								
								<dl>
									<dt>배송메모</dt>
									<dd>빠른 배송 부탁드립니다. 도착시 전화주세요.</dd>
								</dl>
							</div>							
						</div>
						<!-- //배송 정보 -->
						
						<!-- 2015-06-04 수정, 2015-06-01, 2015-05-04 -->
						<div class="order_wrap btns_wrap">
							<span class="btn fullwidth bgcolor5"><a>쇼핑 계속하기</a></span>
						</div>
						<div class="order_wrap btns_wrap btn2">
							<span class="btn bgcolor5"><a>쇼핑 계속하기</a></span>
							<span class="btn bgcolor4"><a>배송지 변경하기</a></span>
							<!---
							<span class="btn bgcolor4"><a>상담내용 수정</a></span>
							->
						</div>
						<!-- /수정 -->
						
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