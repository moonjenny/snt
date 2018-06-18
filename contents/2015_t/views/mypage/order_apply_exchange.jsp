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
					<h2><span>교환신청</h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>교환신청</span></h2>
					</nav><!-- 2016-06-24 -->
					<div class="mypage_wrap">
						<div class="orderList_wrap">
							<dl class="order_list">
								<dt class="goods_order">
									<span class="order_date">2015.05.12</span><!-- 2015-06-01 수정 -->
									<span class="order_num">[ 주문번호 <em>00000000000000</em> ]</span><!-- 2015-06-01 수정 -->
								</dt>
								<dd class="goods_list">
									<ul class="order_goods">
										<li>
											<div class="goods">
												<p class="goods_img"><img src="../../img/_tmp/005_1.jpg" alt="" /></p>
												<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
												<div class="goods_price">
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
											</div>
											<!-- /2015-05-12 수정 -->
										</li>
									</ul>
								</dd>
							</dl>
						</div>
						<div class="orderApply_wrap">
							<div class="reason_select">								
								<dl class="form_input"><!-- 2015-05-12 dt 삭제 -->
									<dd>
										<select>
											<option>교환옵션 선택</option>
										</select>
									</dd>
									<dd>
										<select>
											<option>교환사유 선택</option>
										</select>
									</dd>
								</dl>								
								<h3>상세사유</h3><!-- 2015-05-12 추가 -->
								<dl class="form_input"><!-- 2015-05-12 dt 삭제 -->
									<dd>
										<span class="textarea2"><textarea placeholder="상세 입력을 원하시면 여기에 입력해 주시기 바랍니다."></textarea></span>
									</dd>
								</dl>
							</div>
							<div class="exc_delivery">
								<h3>교환 예상 배송비 확인</h3>
								<div class="info_box">
									<dl>
										<dt>왕복 배송비</dt>
										<dd>
											<span class="price"><em>5,000</em>원</span>
										</dd>
									</dl>
								</div>
							</div>
							<!-- 2015-05-12 수정 -->
							<ul class="mark refer">
								<li>* 주문의 진행상태 조회와 주문취소, 반품, 교환 A/S에 대한 문의는 마이페이지 <strong>[주문/배송현황]</strong> 화면에서 확인, 신청하실 수 있습니다.</li>
								<li>* 상담원과 통화를 원하시면 <strong>고객센터 (080-8282-106)</strong>로 전화문의 바랍니다.</li>
							</ul>
							<!-- buttons -->
							<div class="btns_wrap btn2"><!-- 2015-06-01 수정 -->
								<span class="btn size2 bgcolor2"><a href="#">취소</a></span>
								<span class="btn size2 bgcolor4"><a>신청완료</a></span>
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