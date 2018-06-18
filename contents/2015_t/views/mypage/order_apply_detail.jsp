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
					<h2><span>취소/교환/반품 상세내역</h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>취소/교환/반품 상세내역</span></h2>
					</nav><!-- 2016-06-24 -->
					<div class="mypage_wrap">
					
						<div class="orderList_wrap">
							<dl class="order_list">
								<dt class="goods_order">
									<span class="order_date">2015.05.12</span>
									<span class="order_num">[ 주문번호 <em>00000000000000</em> ]</span><!-- 2015-05-12 수정 -->
								</dt>
								<dd class="goods_list">
									<div class="goods_state"><!-- 2015-05-12 위치변경, "case" 삭제 2016-07-19 텍스트 대괄호 삭제 -->								
										<span>취소완료</span>
										<!-- 
										<span>교환접수</span>
										<span>교환완료</span>
										-->
									</div>
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
											<!-- 2015-05-12 수정 -->
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
											<!-- /2015-05-12 수정 -->											
										</li>
									</ul>
								</dd>
							</dl>
						</div>						
						<div class="orderDetail_wrap">
							<div class="process"><!-- 2015-05-12 "rbox_bgw" 삭제 -->
								<h3>처리상태</h3>
								<dl>
									<dt>취소 신청일</dt>
									<!--
									<dt>교환 신청일</dt>
									<dt>반품 신청일</dt>
									-->
									<dd>2015.05.04<span>16:41</span></dd><!-- 2015-05-12 수정 -->
								</dl>
								<dl>
									<dt>취소 완료일</dt>
									<!--
									<dt>교환 완료일</dt>
									<dt>반품 완료일</dt>
									-->
									<dd>2015.05.08<span>10:40</span></dd><!-- 2015-05-12 수정 -->
								</dl>
							</div>
							<div class="reason"><!-- 2015-05-12 "rbox_bgw" 삭제, 기타내용 삭제 -->
								<h3>신청사유/내용</h3><!-- 2015-05-12 수정 -->
								<dl>
									<dt>구분</dt>
									<dd>주문취소</dd>
								</dl>
								<dl>
									<dt>사유</dt>
									<dd>[가격불만]</dd>
								</dl>
								<dl>
									<dt>교환배송비</dt>
									<dd>2,500원</dd>
								</dl>
							</div>
							<!-- 2015-05-12 추가 -->
							<p class="refer">* 신청사유에 대한 답변은 나의 1:1문의에서 확인하실 수 있습니다.</p>
							<!-- /2015-05-12 추가 -->
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