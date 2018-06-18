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
				<section class="contents colorContents">
						<!-- <span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>오늘 본 상품</span></h2> -->
						<nav class="gnb sub" id="topNav">
							<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
							<h2><span>오늘 본 상품</span></h2>
						</nav><!-- 2016-06-24 -->
						<div class="error_wrap"><!-- 2016-06-16 내역 없을 경우 추가 -->
							<div class="todaynone">
								<span>오늘 본 상품 내역이 없습니다.</span>
							</div>
						</div>		
						<!-- 상품 목록 --><!-- 2016-06-16 상품리스트 추가 -->
						<div class="goods_list_wrap">
							<div class="goods_wide">
								<div class="goods_img">
									<a><img src="../../img/_tmp/013.jpg" alt="" /></a>
								</div>
								<div class="goods_cont">
									<p class="goods_name">1+1이벤트 얇은 수분 보호막으로 하루종일 촉촉하게</p>
									<div class="goods">
										<!-- 상품가격 -->
										<div class="goods_price">
											<p class="sell">
												판매가 <em>76,200</em>원
											</p>
											<p class="sale">
												<i>쇼핑엔T가</i> <em>43,800</em>원
											</p>
										</div>
										<!-- //상품가격 -->
										<!-- 혜택 -->
										<div class="goods_benefit">
											<p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p>
										</div>
										<!-- //혜택 -->
										<div class="goods_benefit2">
											<span class="rate"><em>20</em>%<span></span></span>
											<span class="sale">일시불 할인</span>
										</div>
									</div>
								</div>
							</div>
							<div class="goods_wide">
								<div class="goods_img">
									<a><img src="../../img/_tmp/014.jpg" alt="" /></a>
								</div>
								<div class="goods_cont">
									<p class="goods_name">[국내초저가] 피현정 에디션 360 탄산 휩 클렌저</p>
									<div class="goods">
										<!-- 상품가격 -->
										<div class="goods_price">
											<!-- <p class="sell">
												판매가 <em>76,200</em>원
											</p>
											<p class="sale">
												<i>쇼핑엔T가</i> <em>43,800</em>원
											</p> -->
											<p class="counsel">상담전용 상품입니다</p>

										</div>
										<!-- //상품가격 -->
										<!-- 혜택 -->
										<div class="goods_benefit">
											<p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p>
										</div>
										<!-- //혜택 -->
										<div class="goods_benefit2">
											<!-- <span class="rate"><em>20</em>%<span></span></span> -->
											<span class="sale">일시불 할인</span>
										</div>
									</div>
								</div>
							</div>
							<div class="goods_wide">
								<div class="goods_img">
									<a><img src="../../img/_tmp/013.jpg" alt="" /></a>
								</div>
								<div class="goods_cont">
									<p class="goods_name">1+1이벤트 얇은 수분 보호막으로 하루종일 촉촉하게</p>
									<div class="goods">
										<!-- 상품가격 -->
										<div class="goods_price">
											<!-- <p class="sell">
												판매가 <em>76,200</em>원
											</p> -->
											<p class="sale">
												<i>쇼핑엔T가</i> <em>43,800</em>원
											</p>
										</div>
										<!-- //상품가격 -->
										<!-- 혜택 -->
										<div class="goods_benefit">
											<p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p>
										</div>
										<!-- //혜택 -->
										<div class="goods_benefit2">
											<span class="rate"><em>20</em>%<span></span></span>
											<!-- <span class="sale">일시불 할인</span> -->
										</div>
									</div>
								</div>
							</div>
							<div class="goods_wide">
								<div class="goods_img">
									<a><img src="../../img/_tmp/014.jpg" alt="" /></a>
								</div>
								<div class="goods_cont">
									<p class="goods_name">[국내초저가] 피현정 에디션 360 탄산 휩 클렌저</p>
									<div class="goods">
										<!-- 상품가격 -->
										<div class="goods_price">
											<p class="sell">
												판매가 <em>76,200</em>원
											</p>
											<p class="sale">
												<i>쇼핑엔T가</i> <em>43,800</em>원
											</p>
										</div>
										<!-- //상품가격 -->
										<!-- 혜택 -->
										<div class="goods_benefit">
											<p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p>
										</div>
										<!-- //혜택 -->
										<div class="goods_benefit2">
											<!-- <span class="rate"><em>20</em>%<span></span></span>
											<span class="sale">일시불 할인</span> -->
										</div>
									</div>
								</div>
							</div>
							<div class="goods_wide">
								<div class="goods_img">
									<a><img src="../../img/_tmp/013.jpg" alt="" /></a>
								</div>
								<div class="goods_cont">
									<p class="goods_name">1+1이벤트 얇은 수분 보호막으로 하루종일 촉촉하게</p>
									<div class="goods">
										<!-- 상품가격 -->
										<div class="goods_price">
											<p class="sell">
												판매가 <em>76,200</em>원
											</p>
											<p class="sale">
												<i>쇼핑엔T가</i> <em>43,800</em>원
											</p>
										</div>
										<!-- //상품가격 -->
										<!-- 혜택 -->
										<div class="goods_benefit">
											<p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p>
										</div>
										<!-- //혜택 -->
										<div class="goods_benefit2">
											<span class="rate"><em>20</em>%<span></span></span>
											<span class="sale">일시불 할인</span>
										</div>
									</div>
								</div>
							</div>
							<div class="goods_wide">
								<div class="goods_img">
									<a><img src="../../img/_tmp/014.jpg" alt="" /></a>
								</div>
								<div class="goods_cont">
									<p class="goods_name">[국내초저가] 피현정 에디션 360 탄산 휩 클렌저</p>
									<div class="goods">
										<!-- 상품가격 -->
										<div class="goods_price">
											<p class="sell">
												판매가 <em>76,200</em>원
											</p>
											<p class="sale">
												<i>쇼핑엔T가</i> <em>43,800</em>원
											</p>
										</div>
										<!-- //상품가격 -->
										<!-- 혜택 -->
										<div class="goods_benefit">
											<p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p>
										</div>
										<!-- //혜택 -->
										<div class="goods_benefit2">
											<span class="rate"><em>20</em>%<span></span></span>
											<span class="sale">일시불 할인</span>
										</div>
									</div>
								</div>
							</div>
							<div class="goods_wide">
								<div class="goods_img">
									<a><img src="../../img/_tmp/013.jpg" alt="" /></a>
								</div>
								<div class="goods_cont">
									<p class="goods_name">1+1이벤트 얇은 수분 보호막으로 하루종일 촉촉하게</p>
									<div class="goods">
										<!-- 상품가격 -->
										<div class="goods_price">
											<p class="sell">
												판매가 <em>76,200</em>원
											</p>
											<p class="sale">
												<i>쇼핑엔T가</i> <em>43,800</em>원
											</p>
										</div>
										<!-- //상품가격 -->
										<!-- 혜택 -->
										<div class="goods_benefit">
											<p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p>
										</div>
										<!-- //혜택 -->
										<div class="goods_benefit2">
											<span class="rate"><em>20</em>%<span></span></span>
											<span class="sale">일시불 할인</span>
										</div>
									</div>
								</div>
							</div>
							<div class="goods_wide">
								<div class="goods_img">
									<a><img src="../../img/_tmp/014.jpg" alt="" /></a>
								</div>
								<div class="goods_cont">
									<p class="goods_name">[국내초저가] 피현정 에디션 360 탄산 휩 클렌저</p>
									<div class="goods">
										<!-- 상품가격 -->
										<div class="goods_price">
											<p class="sell">
												판매가 <em>76,200</em>원
											</p>
											<p class="sale">
												<i>쇼핑엔T가</i> <em>43,800</em>원
											</p>
										</div>
										<!-- //상품가격 -->
										<!-- 혜택 -->
										<div class="goods_benefit">
											<p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p>
										</div>
										<!-- //혜택 -->
										<div class="goods_benefit2">
											<span class="rate"><em>20</em>%<span></span></span>
											<span class="sale">일시불 할인</span>
										</div>
									</div>
								</div>
							</div>
							<div class="goods_wide">
								<div class="goods_img">
									<a><img src="../../img/_tmp/013.jpg" alt="" /></a>
								</div>
								<div class="goods_cont">
									<p class="goods_name">1+1이벤트 얇은 수분 보호막으로 하루종일 촉촉하게</p>
									<div class="goods">
										<!-- 상품가격 -->
										<div class="goods_price">
											<p class="sell">
												판매가 <em>76,200</em>원
											</p>
											<p class="sale">
												<i>쇼핑엔T가</i> <em>43,800</em>원
											</p>
										</div>
										<!-- //상품가격 -->
										<!-- 혜택 -->
										<div class="goods_benefit">
											<p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p>
										</div>
										<!-- //혜택 -->
										<div class="goods_benefit2">
											<span class="rate"><em>20</em>%<span></span></span>
											<span class="sale">일시불 할인</span>
										</div>
									</div>
								</div>
							</div>
							<div class="goods_wide">
								<div class="goods_img">
									<a><img src="../../img/_tmp/014.jpg" alt="" /></a>
								</div>
								<div class="goods_cont">
									<p class="goods_name">[국내초저가] 피현정 에디션 360 탄산 휩 클렌저</p>
									<div class="goods">
										<!-- 상품가격 -->
										<div class="goods_price">
											<p class="sell">
												판매가 <em>76,200</em>원
											</p>
											<p class="sale">
												<i>쇼핑엔T가</i> <em>43,800</em>원
											</p>
										</div>
										<!-- //상품가격 -->
										<!-- 혜택 -->
										<div class="goods_benefit">
											<p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p>
										</div>
										<!-- //혜택 -->
										<div class="goods_benefit2">
											<span class="rate"><em>20</em>%<span></span></span>
											<span class="sale">일시불 할인</span>
										</div>
									</div>
								</div>
							</div>
				            <div class="btns_wrap"><!-- 2016-06-16 더보기 버튼 추가 -->
								<span class="btn viewmore"><a>더보기</a></span>
							</div>   
						</div>
			            <!-- /상품 목록 -->	
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