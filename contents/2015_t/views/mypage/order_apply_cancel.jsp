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
					<h2><span>취소신청</h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>취소신청</span></h2>
					</nav><!-- 2016-06-24 -->
					<div class="mypage_wrap">
						<div class="orderList_wrap">
							<dl class="order_list">
								<dt class="goods_order">
									<span class="order_date">2015.05.12</span>
									<span class="order_num">[ 주문번호 <em>00000000000000</em> ]</span><!-- 2015-05-12 수정 -->
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
						<div class="orderApply_wrap">
							<div class="reason_select">
								<dl class="form_input"><!-- 2015-05-12 dt 삭제 -->
									<dd>
										<select>
											<option>취소사유 선택</option>
										</select>
									</dd>
								</dl>
							</div>
							<!-- 환불계좌정보 -->
							<div class="return_bank">
								<h3>환불계좌 정보</h3>
								<div class="inputbox"><!-- 2015-05-12 수정 -->
									<dl class="form_input2"><!-- 2015-05-12 수정 -->
										<dt>은행</dt>
										<dd>
											<select>
												<option>은행 선택</option>
											</select>
										</dd>
									</dl>
									<dl class="form_input2"><!-- 2015-05-12 수정 -->
										<dt>계좌번호</dt>
										<dd>
											<span class="inputBox"><input type="text" placeholder="계좌번호 입력 ‘-’를 제외하고 적어주세요" name="" tabindex="" autocapitalize="off" /></span>
										</dd>
									</dl>
									<dl class="form_input2"><!-- 2015-05-12 수정 -->
										<dt>예금주</dt>
										<dd>
											<div class="bank_name">
												<span class="inputBox"><input type="text" placeholder="예금주" name="" tabindex="" autocapitalize="off" /></span>
												<p class="account"><span class="btn size2 bgcolor1"><a href="#">계좌인증</a></span></p><!-- 2015-06-01 수정 -->
											</div>
										</dd>
									</dl>
								</div>
							</div>
							<!-- //환불계좌정보 -->
							<!-- buttons --><!-- 2015-06-01 수정, 2015-05-12 수정, 위치변경 -->
							<div class="btns_wrap btn2">
								<span class="btn size2 bgcolor2"><a href="#">취소</a></span>
								<span class="btn size2 bgcolor4"><a>신청완료</a></span>
							</div>
							<!-- /buttons -->
							<!-- 2015-05-12 수정 -->
							<ul class="mark">
								<li>* 주문 취소 시에는 상품 구입시 제공되는 모든 사은품 및 포인트, 혜택 등은 자동으로 취소됩니다.</li>
							</ul>							
							<div class="btns_wrap">
								<span class="btn viewmore bgcolor5"><a>환불 및 결제취소 안내사항 자세히 보기</a></span><!-- 2015-06-01 수정 -->
							</div>
							<!-- /2015-05-12 수정 -->
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