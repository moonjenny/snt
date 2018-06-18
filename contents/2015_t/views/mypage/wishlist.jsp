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
					<h2><span>찜한 상품</h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>찜한 상품</span></h2>
					</nav><!-- 2016-06-24 -->
					<!-- 2015-05-12 추가 -->
					<div class="tit head">
						<p><strong class="emp1">고객님이 찜한 상품 내역을 보여드립니다.</strong></p>
					</div>
					<!-- /2015-05-12 추가 -->
					<div class="mypage_wrap wishlist"><!-- 2015-05-12 수정 -->
						<div class="result_wrap">
							<p class="count">
								<input type="checkbox" /> 전체 상품 <span class="num">(총 <em>23</em>개)</span>
							</p>
						</div>
						<div class="wish_list">							
							<ul class="order_goods">
								<li>
									<div class="goods_small">
										<span class="goods_check"><input type="checkbox" /></span>
										<div class="goods_img"><img src="../../img/_tmp/001.jpg" alt="" /></div>
										<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
										<div class="goods_price">
											<del><em>287,100</em>원</del>
											<span><em>139,700</em>원</span>
										</div>
									</div>
								</li>
							</ul>
							<ul class="order_goods">
								<li>
									<div class="goods_small">
										<span class="goods_check"><input type="checkbox" /></span>
										<!-- 일시품절 상품 표시 -->
										<p class="soldout"><span><em>일시품절</em></span></p>
										<!-- //일시품절 상품 표시 -->
										<div class="goods_img">
											<img src="../../img/_tmp/002.jpg" alt="" />
										</div>
										<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
										<p class="goods_counsel">상담 전용 상품입니다.</p>
									</div>
								</li>
							</ul>
							<ul class="order_goods">
								<li>
									<div class="goods_small">
										<span class="goods_check"><input type="checkbox" /></span>
										<!-- 일시품절 상품 표시 -->
										<p class="soldout"><span><em>일시품절</em></span></p>
										<!-- //일시품절 상품 표시 -->
										<div class="goods_img">
											<img src="../../img/_tmp/001.jpg" alt="" />
										</div>
										<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
										<div class="goods_price">
											<del><em>287,100</em>원</del>
											<span><em>139,700</em>원</span>
										</div>
									</div>
								</li>
							</ul>
						</div>						
						<!-- 2015-05-13 수정 -->
						<div class="list_nodata">
							<p>찜한 상품이 없습니다.</p>
						</div>
						<!-- /2015-05-13 수정 -->
						<!-- 2015-05-12 수정 -->
						<div class="btns_wrap btn2">
							<span class="btn size2 bgcolor2"><a>선택상품 삭제</a></span>
							<span class="btn size2 bgcolor4"><a>선택상품 장바구니 이동</a></span>						
						</div>
						<!-- /2015-05-12 수정 -->
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