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
				<nav class="gnb main" id="topNav">
					<ul>
						<li id="lnb0" class="current"><a>홈</a></li>
						<li id="lnb1"><a>TV편성</a></li>
						<li id="lnb2"><a>라임</a></li>
						<li id="lnb3"><a>T는상품</a></li>
						<li id="lnb4"><a>이벤트</a></li>
						<li id="lnb5"><a>가정의달 게르마늄 특가전</a></li>
						<li id="lnb6"><a>lnb6</a></li>
					</ul>
				</nav>

				<div id="homeSlider" class="swipe">
					<div class="swipe-wrap">
						<!-- home -->
						<section class="mainContents" id="homeCont0">
							<!-- top banner -->
							<div class="topbanner" >
								<ul>
									<li><a><img src="../../img/banner_lime.jpg" alt="" /></a></li>
								</ul>
								<span class="closebanner"><a>닫기</a></span>
							</div>
							<!-- /top banner -->
							<!-- 실시간방송상품 -->
							<div class="onairGoods">
								<!-- 동영상 --><!-- 2016-06-17 -->
								<div class="vod_wrap" style="display:none"><!-- 클래스 추가 : 기본모드 vod_wrap, 가로모드 vod_wrap full, 하단 축소 모드 vod_wrap small -->
									<p class="ctr">
										<span></span>
										<span></span>
										<span></span>
										<span></span>
										<span></span>
									</p>
									<span class="blank pic"><img src="../../img/blank_vod.gif" alt="" /></span>
								</div>
								<!-- 동영상 //-->
								<div class="onairGoodsIn"><!-- 2016-06-17 : div 추가 -->
									<div class="goods_wide">
										<div class="goods_img">
											<img src="../../img/_tmp/014.jpg" alt="" />
											<span class="btm"><img src="../../img/onair_img_btm.png" alt="" /></span>
											<span class="btn_play"><a></a></span>
										</div>
										<div class="goods_cont">
											<p class="goods_name01">필립스 아쿠아트리오 프로 FC7088</p>
											<div class="goods">
												<!-- 상품가격 -->
												<div class="goods_price">
													<!-- <p class="sell">
														판매가 <em>76,200</em>원
													</p>
													<p class="sale">
														<i>쇼핑엔티가</i> <em>10,766,000</em>원
													</p> -->
													<!-- 201806 가격정책 start -->
													<div class="price_info01">
														<i class="blind">할인율</i><span class="discount">10%</span>
														<i class="blind">최종가</i><span class="price_tx01">10,766,000<span class="unit">원</span></span>
														<i class="blind">정상가</i><span class="price_tx02">10,796,000원</span>
													</div>
													<div class="price_info01">
														<span class="price_shop">쇼핑엔티가</span>
														<i class="blind">최종가</i><span class="price_tx01">10,766,000<span class="unit">원</span></span>
														<i class="blind">정상가</i><span class="price_tx02">10,796,000원</span>
													</div>
													<!-- //201806 가격정책 end -->
												</div>
												<!-- //상품가격 -->
												<!-- 혜택 -->
												<div class="goods_benefit">
													<p><span>사은품</span></p>
													<p><span>무이자12</span></p>
													<p><span>무료배송</span></p>
												</div>
												<!-- //혜택 -->
												<!-- <div class="goods_benefit2">
													<span class="rate"><em>20</em>%<span></span></span>
													<span class="sale">일시불 할인</span>
												</div> -->
											</div>
										</div>
									</div>
									<!-- 온에어 - 재생 및 재생시간 -->
									<p class="time">
										<span class="onair"><em>ON AIR</em></span>
										<span>
											남은시간 : <em>00:22:45</em>
										</span>
									</p>
									<!-- <p class="time">
										<span class="onair"><em>ON AIR</em></span>
										<span id="time" enddate="2016/06/30 11:43:00" sysdate="2016/06/30 10:14:51" lefttime="">
											남은시간 : <em class="leftTime"></em>
										</span>
									</p> -->
									<!-- 온에어 - 재생 및 재생시간 //-->
									<!-- buttons -->
									<div class="btns_wrap btn2">
										<span class="btn with_prd"><a href="#">함께하는 상품<em>2</em></a></span>
										<span class="btn bgcolor4"><a href="#">구매하기</a></span>
									</div>
									<!-- /buttons -->
									<!-- 함께파는 상품 -->
									<div class="with_goods_wrap my_goods_wrap">
										<ul class="goods_list">
											<li>
												<div class="goods">
													<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
													<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
													<!-- 상품가격 -->
													<div class="goods_price">
														<!--201806 가격정책 start -->
														<div class="price_info02">
															<i class="blind">할인율</i><span class="discount">10%</span>
															<i class="blind">정상가</i><span class="price_tx02">1,008,000원</span>
															<i class="blind">최종가</i><span class="price_tx01">1,008,000<span class="unit">원</span></span>
														</div>
														<!-- //201806 가격정책 end -->
													</div>
													<!-- //상품가격 -->
													<!-- 혜택 -->
													<div class="goods_benefit">
														<p><span>사은품</span></p>
														<p><span>무이자12</span></p>
														<p><span>무료배송</span></p>
													</div>
													<!-- //혜택 -->
												</div>
											</li>
											<li>
												<div class="goods">
													<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
													<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
													<!-- 상품가격 -->
													<div class="goods_price">
														<!-- 201806 가격정책 start -->
														<div class="price_info02">
															<i class="blind">정상가</i><span class="price_tx02">1,008,000원</span>
															<i class="blind">최종가</i><span class="price_tx01">1,008,000<span class="unit">원</span></span>
														</div>
														<!-- //201806 가격정책 end -->
													</div>
													<!-- //상품가격 -->
													<!-- 혜택 -->
													<div class="goods_benefit">
														<p><span>사은품</span></p>
														<p><span>무이자12</span></p>
														<p><span>무료배송</span></p>
													</div>
													<!-- //혜택 -->
												</div>
											</li>
											<li>
												<div class="goods">
													<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
													<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
													<!-- 상품가격 -->
													<div class="goods_price">
														<p class="counsel">상담 전용 상품입니다.</p>
													</div>
													<!-- //상품가격 -->
													<!-- 혜택 -->
													<div class="goods_benefit">
														<p><span>사은품</span></p>
														<p><span>무이자12</span></p>
														<p><span>무료배송</span></p>
													</div>
													<!-- //혜택 -->
												</div>
											</li>
											<li>
												<div class="goods">
													<p class="soldout"><span><em>일시품절</em></span></p>
													<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
													<div class="goods_name">무방부제 무발색제 </div>
													<!-- 상품가격 -->
													<div class="goods_price">
														<!-- 201806 가격정책 start -->
														<div class="price_info02">
															<i class="blind">할인율</i><span class="discount">10%</span>
															<i class="blind">정상가</i><span class="price_tx02">1,008,000원</span>
															<i class="blind">최종가</i><span class="price_tx01">1,008,000<span class="unit">원</span></span>
														</div>
														<!-- //201806 가격정책 end -->
													</div>
													<!-- //상품가격 -->
													<!-- 혜택 -->
													<div class="goods_benefit">
														<p><span>사은품</span></p>
														<p><span>무이자12</span></p>
														<p><span>무료배송</span></p>
													</div>
													<!-- //혜택 -->
												</div>
											</li>
										</ul>
										<span class="btn_close"></span>
									</div>
									<!-- 함께파는 상품 //-->
								</div>
							</div>
							<!-- //실시간방송상품 -->

							<!-- 다음 방송 상품 -->
							<div class="next_goods_wrap goods_wide">
								<div class="goods_top">
									<h3>
										다음 방송 상품
										<span class="time"><span></span>다음 방송시간 <em>09:00 ~ 10:20</em></span>
									</h3>
									<span class="tv_link">TV편성표</span>
								</div>
								<div class="goods_img">
									<a><img src="../../img/_tmp/014.jpg" alt="" /></a>
								</div>
								<div class="goods_cont">
									<p class="goods_name02">펠치넬리 프레야 파워 쇼퍼백 3종세트</p>
									<div class="goods">
										<!-- 상품가격 -->
										<div class="goods_price">
											<!-- <p class="sell">
												판매가 <em>76,200</em>원
											</p>
											<p class="sale">
												<i>쇼핑엔티가</i> <em>43,800</em>원
											</p> -->
											<!-- 201806 가격정책 start -->
											<div class="price_info01">
												<span class="price_shop">쇼핑엔티가</span>
												<i class="blind">최종가</i><span class="price_tx01">10,766,000<span class="unit">원</span></span>
												<i class="blind">정상가</i><span class="price_tx02">10,796,000원</span>
											</div>
											<!-- //201806 가격정책 end -->
										</div>
										<!-- //상품가격 -->
										<!-- 혜택 -->
										<div class="goods_benefit">
											<p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p>
										</div>
										<!-- //혜택 -->
										<!-- <div class="goods_benefit2">
											<span class="rate"><em>5</em>%<span></span></span>
											<span class="sale">일시불 할인</span>
										</div> -->
									</div>
								</div>
							</div>
							<!-- 다음 방송 상품 //-->

							<!-- 롤링배너 -->
							<div class="rollBan">
								<div class="slideZone">
									<div id="ban-slide" class="imgSlide">
										<ul class="BannerList swiper-wrapper" >
											<li class="swiper-slide"><a href="#"><img src="../../img/_tmp/010_3.jpg" alt=""></a></li>
											<li class="swiper-slide"><a href="#"><img src="../../img/_tmp/010_3.jpg" alt=""></a></li>
											<li class="swiper-slide"><a href="#"><img src="../../img/_tmp/010_3.jpg" alt=""></a></li>
										</ul>
									</div>
								</div>
								<p id="ban-circle" class="slideCircle"></p>
							</div>
							<!-- //롤링배너 --><!-- 2016-06-15 -->

							<!-- 베스트상품 -->
							<div class="rollBan best">
								<div class="goods_top">
									<h3>베스트상품</h3>
									<p>늘 고객님만 생각하고 또 생각합니다</p>
								</div>
								<div class="slideZone">
									<div id="ban-slide2" class="imgSlide">
										<ul class="swiper-wrapper">
											<li class="swiper-slide">
												<div class="goods_wide">
													<div class="goods_img">
														<a><img src="../../img/_tmp/014.jpg" alt="" /></a>
														<span  class="rank">01</span>
													</div>
													<div class="goods_cont">
														<p class="goods_name">[신일] 더센쿡 다용도 믹서기 더센쿡 다용도 믹서기 더센쿡 다용도 믹서기 (텀블러) [SMX-SB2BMX-SB2B]</p>
														<div class="goods">
															<!-- 상품가격 -->
															<div class="goods_price">
																<!-- 201806 가격정책 start -->
																<div class="price_info01">
																	<i class="blind">할인율</i><span class="discount">10%</span>
																	<i class="blind">최종가</i><span class="price_tx01">10,766,000<span class="unit">원</span></span>
																	<i class="blind">정상가</i><span class="price_tx02">10,796,000원</span>
																</div>
																<!-- //201806 가격정책 end -->
															</div>
															<!-- //상품가격 -->
															<!-- 혜택 -->
															<div class="goods_benefit">
																<p><span>사은품</span></p>
																<p><span>무이자12</span></p>
																<p><span>무료배송</span></p>
															</div>
															<!-- //혜택 -->
														</div>
													</div>
												</div>
											</li>
											<li class="swiper-slide">
												<div class="goods_wide">
													<div class="goods_img">
														<a><img src="../../img/_tmp/014.jpg" alt="" /></a>
														<span  class="rank">02</span>
													</div>
													<div class="goods_cont">
														<p class="goods_name">[국내초저가] 피현정 에디션 360 탄산 휩 클렌저 클렌저클렌저클렌저</p>
														<div class="goods">
															<!-- 상품가격 -->
															<div class="goods_price">
																<!-- 201806 가격정책 start -->
																<div class="price_info01">
																	<span class="price_shop">쇼핑엔티가</span>
																	<i class="blind">최종가</i><span class="price_tx01">10,766,000<span class="unit">원</span></span>
																	<i class="blind">정상가</i><span class="price_tx02">10,796,000원</span>
																</div>
																<!-- //201806 가격정책 end -->
															</div>
															<!-- //상품가격 -->
															<!-- 혜택 -->
															<div class="goods_benefit">
																<p><span>사은품</span></p>
																<p><span>무이자12</span></p>
																<p><span>무료배송</span></p>
															</div>
															<!-- //혜택 -->
														</div>
													</div>
												</div>
											</li>
											<li class="swiper-slide">
												<div class="goods_wide">
													<div class="goods_img">
														<a><img src="../../img/_tmp/014.jpg" alt="" /></a>
														<span  class="rank">03</span>
													</div>
													<div class="goods_cont">
														<p class="goods_name">[국내초저가] 피현정 에디션 360 탄산 휩 클렌저</p>
														<div class="goods">
															<!-- 상품가격 -->
															<div class="goods_price">
																<!-- 201806 가격정책 start -->
																<div class="price_info01">
																	<i class="blind">할인율</i><span class="discount">10%</span>
																	<i class="blind">최종가</i><span class="price_tx01">10,766,000<span class="unit">원</span></span>
																	<i class="blind">정상가</i><span class="price_tx02">10,796,000원</span>
																</div>
																<!-- //201806 가격정책 end -->
															</div>
															<!-- //상품가격 -->
															<!-- 혜택 -->
															<div class="goods_benefit">
																<p><span>사은품</span></p>
																<p><span>무이자12</span></p>
																<p><span>무료배송</span></p>
															</div>
															<!-- //혜택 -->
														</div>
													</div>
												</div>
											</li>
											<li class="swiper-slide">
												<div class="goods_wide">
													<div class="goods_img">
														<a><img src="../../img/_tmp/014.jpg" alt="" /></a>
														<span  class="rank">04</span>
													</div>
													<div class="goods_cont">
														<p class="goods_name">[국내초저가] 피현정 에디션 360 탄산 휩 클렌저</p>
														<div class="goods">
															<!-- 상품가격 -->
															<div class="goods_price">
																<!-- 201806 가격정책 start -->
																<div class="price_info01">
																	<i class="blind">할인율</i><span class="discount">10%</span>
																	<i class="blind">최종가</i><span class="price_tx01">10,766,000<span class="unit">원</span></span>
																	<i class="blind">정상가</i><span class="price_tx02">10,796,000원</span>
																</div>
																<!-- //201806 가격정책 end -->
															</div>
															<!-- //상품가격 -->
															<!-- 혜택 -->
															<div class="goods_benefit">
																<p><span>사은품</span></p>
																<p><span>무이자12</span></p>
																<p><span>무료배송</span></p>
															</div>
															<!-- //혜택 -->
														</div>
													</div>
												</div>
											</li>
											<li class="swiper-slide">
												<div class="goods_wide">
													<div class="goods_img">
														<a><img src="../../img/_tmp/014.jpg" alt="" /></a>
														<span  class="rank">05</span>
													</div>
													<div class="goods_cont">
														<p class="goods_name">[국내초저가] 피현정 에디션 360 탄산 휩 클렌저</p>
														<div class="goods">
															<!-- 상품가격 -->
															<div class="goods_price">
																<!-- 201806 가격정책 start -->
																<div class="price_info01">
																	<i class="blind">할인율</i><span class="discount">10%</span>
																	<i class="blind">최종가</i><span class="price_tx01">10,766,000<span class="unit">원</span></span>
																	<i class="blind">정상가</i><span class="price_tx02">10,796,000원</span>
																</div>
																<!-- //201806 가격정책 end -->
															</div>
															<!-- //상품가격 -->
															<!-- 혜택 -->
															<div class="goods_benefit">
																<p><span>사은품</span></p>
																<p><span>무이자12</span></p>
																<p><span>무료배송</span></p>
															</div>
															<!-- //혜택 -->
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>

							</div>
							<!-- 베스트상품 //-->

							<!-- 내가 담아놓은 상품 -->
							<div class="my_goods_wrap">
								<div class="goods_top">
									<h3>내가 담아놓은 상품</h3>
									<span class="btn_all_view"><a>전체보기</a></span>
								</div>
								<ul class="goods_list">
									<li>
										<div class="goods">
											<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
											<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
											<!-- 상품가격 -->
											<div class="goods_price">
												<!-- 201806 가격정책 start -->
												<div class="price_info02">
													<i class="blind">할인율</i><span class="discount">10%</span>
													<i class="blind">정상가</i><span class="price_tx02">1,008,000원</span>
													<i class="blind">최종가</i><span class="price_tx01">1,008,000<span class="unit">원</span></span>
												</div>
												<!-- //201806 가격정책 end -->
											</div>
											<!-- //상품가격 -->
											<!-- 혜택 -->
											<div class="goods_benefit">
												<p><span>사은품</span></p>
												<p><span>무이자12</span></p>
												<p><span>무료배송</span></p>
											</div>
											<!-- //혜택 -->
										</div>
									</li>
									<li>
										<div class="goods">
											<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
											<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
											<!-- 상품가격 -->
											<div class="goods_price">
												<!-- 201806 가격정책 start -->
												<div class="price_info02">
													<i class="blind">정상가</i><span class="price_tx02">1,008,000원</span>
													<i class="blind">최종가</i><span class="price_tx01">1,008,000<span class="unit">원</span></span>
												</div>
												<!-- //201806 가격정책 end -->
											</div>
											<!-- //상품가격 -->
											<!-- 혜택 -->
											<div class="goods_benefit">
												<p><span>사은품</span></p>
												<p><span>무이자12</span></p>
												<p><span>무료배송</span></p>
											</div>
											<!-- //혜택 -->
										</div>
									</li>
								</ul>
							</div>
							<!-- 내가 담아놓은 상품 //-->

							<!-- T는 상품 -->
							<div class="goods_top">
								<h3>T는 상품</h3>
							</div>
							<!-- 상품 목록 -->
							<div class="goods_list_wrap">
								<div class="goods_wide">
									<div class="goods_img">
										<a><img src="../../img/_tmp/013.jpg" alt="" /></a>
									</div>
									<div class="goods_cont">
										<p class="goods_name02">1+1이벤트 얇은 수분 보호막으로 하루종일 촉촉하게 얇은 수분 보호막으로 하루종일 촉촉하게</p>
										<div class="goods">
											<!-- 상품가격 -->
											<div class="goods_price">
												<!-- 201806 가격정책 start -->
												<div class="price_info01">
													<i class="blind">할인율</i><span class="discount">10%</span>
													<i class="blind">최종가</i><span class="price_tx01">10,766,000<span class="unit">원</span></span>
													<i class="blind">정상가</i><span class="price_tx02">10,796,000원</span>
												</div>
												<!-- //201806 가격정책 end -->
											</div>
											<!-- //상품가격 -->
											<!-- 혜택 -->
											<div class="goods_benefit">
												<p><span>사은품</span></p>
												<p><span>무이자12</span></p>
												<p><span>무료배송</span></p>
											</div>
											<!-- //혜택 -->
										</div>
									</div>
								</div>
								<div class="goods_wide">
									<div class="goods_img">
										<a><img src="../../img/_tmp/013.jpg" alt="" /></a>
									</div>
									<div class="goods_cont">
										<p class="goods_name02">1+1이벤트 얇은 수분 보호막으로 하루종일 촉촉하게</p>
										<div class="goods">
											<!-- 상품가격 -->
											<div class="goods_price">
												<!-- 201806 가격정책 start -->
												<div class="price_info01">
													<span class="price_shop">쇼핑엔티가</span>
													<i class="blind">최종가</i><span class="price_tx01">10,766,000<span class="unit">원</span></span>
													<i class="blind">정상가</i><span class="price_tx02">10,796,000원</span>
												</div>
												<!-- //201806 가격정책 end -->
											</div>
											<!-- //상품가격 -->
											<!-- 혜택 -->
											<div class="goods_benefit">
												<p><span>사은품</span></p>
												<p><span>무이자12</span></p>
												<p><span>무료배송</span></p>
											</div>
											<!-- //혜택 -->
										</div>
									</div>
								</div>
								<div class="goods_wide">
									<div class="goods_img">
										<a><img src="../../img/_tmp/013.jpg" alt="" /></a>
									</div>
									<div class="goods_cont">
										<p class="goods_name02">1+1이벤트 얇은 수분 보호막으로 하루종일 촉촉하게</p>
										<div class="goods">
											<!-- 상품가격 -->
											<div class="goods_price">
												<!-- 201806 가격정책 start -->
												<div class="price_info01">
													<span class="price_shop">쇼핑엔티가</span>
													<i class="blind">최종가</i><span class="price_tx01">10,766,000<span class="unit">원</span></span>
												</div>
												<!-- //201806 가격정책 end -->
											</div>
											<!-- //상품가격 -->
											<!-- 혜택 -->
											<div class="goods_benefit">
												<p><span>사은품</span></p>
												<p><span>무이자12</span></p>
												<p><span>무료배송</span></p>
											</div>
											<!-- //혜택 -->
										</div>
									</div>
								</div>
								<div class="goods_wide">
									<div class="goods_img">
										<a><img src="../../img/_tmp/013.jpg" alt="" /></a>
									</div>
									<div class="goods_cont">
										<p class="goods_name02">1+1이벤트 얇은 수분 보호막으로 하루종일 촉촉하게</p>
										<div class="goods">
											<!-- 상품가격 -->
											<div class="goods_price">
												<!-- 201806 가격정책 start -->
												<div class="price_info01">
													<span class="price_shop">쇼핑엔티가</span>
													<i class="blind">최종가</i><span class="price_tx01">10,766,000<span class="unit">원</span></span>
												</div>
												<!-- //201806 가격정책 end -->
											</div>
											<!-- //상품가격 -->
											<!-- 혜택 -->
											<!-- //혜택 -->
										</div>
									</div>
								</div>
								<!-- <div class="goods_wide">
									<div class="goods_img">
										<a><img src="../../img/_tmp/014.jpg" alt="" /></a>
									</div>
									<div class="goods_cont">
										<p class="goods_name02">[국내초저가] 피현정 에디션 360 탄산 휩 클렌저</p>
										<div class="goods">
											상품가격
											<div class="goods_price">
												<p class="counsel">상담전용 상품입니다</p>
											</div>
											//상품가격
											혜택
											<div class="goods_benefit">
												<p><span>사은품</span></p>
												<p><span>무이자12</span></p>
												<p><span>무료배송</span></p>
											</div>
											//혜택
										</div>
									</div>
								</div> -->
							</div>
							<!-- T는 상품 //-->

							<!-- 이벤트&혜택 -->
							<div class="eventBan">
								<!-- 2015-04-21 타이틀 삭제 -->
								<ul class="BannerList">
									<li><a href="#"><img src="../../img/banner_app.jpg" alt="" /></a></li>
								</ul>
							</div>
							<!-- //이벤트&혜택 -->
						</section>
						<!-- TV편성 -->
						<section class="mainContents" id="homeCont1">
							<!--2018-02-13 tv편성 날짜노출 수정------------------>
							<div class="tvDate">
								<ol>
									<li><a onclick="goUrl('/broadcast/main?fromDate=2015/06/03')"><span>06월 03일</span></a></li>
									<li><span>06월 04일</span></li>
									<li><a onclick="goUrl('/broadcast/main?fromDate=2015/06/05')"><span>06월 05일</span></a></li>
								</ol>
							</div>
							<!--//2018-02-13 tv편성 날짜노출 수정------------------>
							<div class="scdList">
								<ol>
									<li>
										<div class="tv_time"><span></span></div>
										<div class="goods_box">
											<dl>
												<dt>
													<span class="time">방송시간 <em>09:00 ~ 10:20</em></span>
													<span class="movie"><a href="#">방송알림</a></span>
												</dt>
												<dd>
													<div class="goods_wrap">
														<ul class="goods_list">
															<li>
																<div class="goods">
																	<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
																	<div class="goods_name">무방부제 무발색제 싱가포르</div>
																	<!-- 201806 가격정책 start -->
																	<!-- 상품가격 -->
																	<div class="price_info02">
																		<i class="blind">할인율</i><span class="discount">10%</span>
																		<i class="blind">정상가</i><span class="price_tx02">1,008,000원</span>
																		<i class="blind">최종가</i><span class="price_tx01">1,008,000<span class="unit">원</span></span>
																	</div>
																	<!-- //상품가격 -->
																	<!-- //201806 가격정책 end -->
																	<!-- 혜택 -->
																	<div class="goods_benefit">
																		<p><span>사은품</span></p>
																		<p><span>무이자12</span></p>
																		<p><span>무료배송</span></p>
																	</div>
																	<!-- //혜택 -->
																</div>
															</li>
														</ul>

														<div class="btns_wrap">
															<span class="btn full bgcolor7"><a href="#">방송중 구매가능</a></span>
														</div>

														<ul class="goods_list together_list">
															<li>
																<div class="goods">
																	<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
																	<div class="goods_name">무방부제 무발색제 화적포 무방부제 무발색제 화적포무방부제 무발색제 화적포</div>
																	<!-- 201806 가격정책 start -->
																	<!-- 상품가격 -->
																	<div class="price_info02">
																		<i class="blind">할인율</i><span class="discount">10%</span>
																		<i class="blind">정상가</i><span class="price_tx02">1,008,000원</span>
																		<i class="blind">최종가</i><span class="price_tx01">1,008,000<span class="unit">원</span></span>
																	</div>
																	<!-- //상품가격 -->
																	<!-- //201806 가격정책 end -->
																	<!-- 혜택 -->
																	<div class="goods_benefit">
																		<p><span>사은품</span></p>
																		<p><span>무이자12</span></p>
																		<p><span>무료배송</span></p>
																	</div>
																	<!-- //혜택 -->
																</div>
																<!-- 혜택 -->
															</li>
															<li>
																<div class="goods">
																	<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
																	<div class="goods_name">무방부제 무발색제 화적포</div>
																	<!-- 201806 가격정책 start -->
																	<!-- 상품가격 -->
																	<div class="price_info02">
																		<i class="blind">정상가</i><span class="price_tx02">1,008,000원</span>
																		<i class="blind">최종가</i><span class="price_tx01">1,008,000<span class="unit">원</span></span>
																	</div>
																	<!-- //상품가격 -->
																	<!-- //201806 가격정책 end -->
																	<!-- 혜택 -->
																	<div class="goods_benefit">
																		<p><span>사은품</span></p>
																		<p><span>무이자12</span></p>
																		<p><span>무료배송</span></p>
																	</div>
																	<!-- //혜택 -->
																</div>
															</li>
														</ul>
													</div>
												</dd>
											</dl>
										</div>
									</li>
									<li>
										<div class="tv_time"><span></span></div>
										<div class="goods_box">
											<dl>
												<dt>
													<span class="time">방송시간 <em>12:00 ~ 13:00</em></span>
												</dt>
												<dd>
													<div class="goods_wrap">
														<ul class="goods_list">
															<li>
																<div class="goods">
																	<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
																	<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
																	<!-- 상품가격
																	<div class="goods_price">
																		<p  class="counsel">상담전용 상품입니다</p>
																	</div>
																	<!-- //상품가격 -->
																	<!-- 201806 가격정책 start -->
																	<!-- 상품가격 -->
																	<div class="price_info02">
																		<i class="blind">할인율</i><span class="discount">10%</span>
																		<i class="blind">정상가</i><span class="price_tx02">1,008,000원</span>
																		<i class="blind">최종가</i><span class="price_tx01">1,008,000<span class="unit">원</span></span>
																	</div>
																	<!-- //상품가격 -->
																	<!-- //201806 가격정책 end -->
																	<!-- 혜택 -->
																	<div class="goods_benefit">
																		<p><span>사은품</span></p>
																		<p><span>무이자12</span></p>
																		<p><span>무료배송</span></p>
																	</div>
																	<!-- //혜택 -->
																</div>
															</li>
														</ul>

														<div class="btns_wrap">
															<span class="btn full bgcolor7"><a href="#">구매하기</a></span>
														</div>

														<!-- <div class="btns_wrap">
															<span class="btn viewmore"><a>더보기</a></span>
														</div> -->
													</div>
												</dd>
											</dl>
										</div>
									</li>
									<li class="tvOnair">
										<div class="tv_time"><span></span></div>
										<div class="goods_box">
											<dl>
												<dt>
													<em class="onair">On Air</em>
													<span class="time"><em>남은시간 00:33:32</em></span>
													<span class="movie"><a href="#">방송보기</a></span>
												</dt>
												<dd>
													<div class="goods_wrap">
														<div class="goods_wide">
															<div class="goods_img">
																<a><img src="../../img/_tmp/013.jpg" alt="" /></a>
															</div>
															<div class="goods_cont">
																<p class="goods_name01">1+1이벤트 얇은 수분 보호막으로 하루종일 촉촉하게</p>
																<div class="goods">
																	<!-- 201806 가격정책 start -->
																	<!-- 상품가격 -->
																	<div class="goods_price">
																		<div class="price_info01">
																			<i class="blind">할인율</i><span class="discount">10%</span>
																			<i class="blind">최종가</i><span class="price_tx01">10,766,000<span class="unit">원</span></span>
																			<i class="blind">정상가</i><span class="price_tx02">10,796,000원</span>
																		</div>
																	</div>
																	<!-- //상품가격 -->
																	<!-- 상품가격 -->
																	<div class="goods_price">
																		<div class="price_info01">
																			<span class="price_shop">쇼핑엔티가</span>
																			<i class="blind">최종가</i><span class="price_tx01">10,766,000<span class="unit">원</span></span>
																			<i class="blind">정상가</i><span class="price_tx02">10,796,000원</span>
																		</div>
																	</div>
																	<!-- //상품가격 -->
																	<!-- //201806 가격정책 end -->
																	<!-- 혜택 -->
																	<div class="goods_benefit">
																		<p><span>사은품</span></p>
																		<p><span>무이자12</span></p>
																		<p><span>무료배송</span></p>
																	</div>
																	<!-- //혜택 -->
																</div>
															</div>
														</div>
														<div class="btns_wrap">
															<span class="btn full bgcolor4"><a href="#">구매하기</a></span>
														</div>
														<ul class="goods_list together_list">
															<li>
																<div class="goods">
																	<!-- 일시품절 상품 표시 -->
																	<p class="soldout"><span><em>일시품절</em></span></p>
																	<!-- //일시품절 상품 표시 -->
																	<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
																	<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
																	<!-- 201806 가격정책 start -->
																	<!-- 상품가격 -->
																	<div class="price_info02">
																		<i class="blind">할인율</i><span class="discount">10%</span>
																		<i class="blind">정상가</i><span class="price_tx02">1,008,000원</span>
																		<i class="blind">최종가</i><span class="price_tx01">1,008,000<span class="unit">원</span></span>
																	</div>
																	<!-- //상품가격 -->
																	<!-- //201806 가격정책 end -->
																	<!-- 혜택 -->
																	<div class="goods_benefit">
																		<p><span>사은품</span></p>
																		<p><span>무이자12</span></p>
																		<p><span>무료배송</span></p>
																	</div>
																	<!-- //혜택 -->
																</div>
															</li>
															<li>
																<div class="goods">
																	<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
																	<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
																	<!-- 201806 가격정책 start -->
																	<!-- 상품가격 -->
																	<div class="price_info02">
																		<i class="blind">정상가</i><span class="price_tx02">1,008,000원</span>
																		<i class="blind">최종가</i><span class="price_tx01">1,008,000<span class="unit">원</span></span>
																	</div>
																	<!-- //상품가격 -->
																	<!-- //201806 가격정책 end -->
																	<!-- 혜택 -->
																	<div class="goods_benefit">
																		<p><span>사은품</span></p>
																		<p><span>무이자12</span></p>
																		<p><span>무료배송</span></p>
																	</div>
																	<!-- //혜택 -->
																</div>
															</li>
														</ul>
														<div class="btns_wrap">
															<span class="btn viewmore"><a>함께파는 상품<em>(8)</em> 더보기</a></span>
														</div>
													</div>
												</dd>
											</dl>
										</div>
									</li>
									<li>
										<div class="tv_time"><span></span></div>
										<div class="goods_box">
											<dl>
												<dt>
													<span class="time">방송시간 <em>12:00 ~ 13:00</em></span>
												</dt>
												<dd>
													<div class="goods_wrap">
														<ul class="goods_list">
															<li>
																<div class="goods">
																	<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
																	<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
																	<!-- 상품가격 -->
																	<div class="goods_price">
																		<p  class="counsel">상담전용 상품입니다</p>
																	</div>
																	<!-- //상품가격 -->
																	<!-- 혜택 -->
																	<div class="goods_benefit">
																		<p><span>사은품</span></p>
																		<p><span>무이자12</span></p>
																		<p><span>무료배송</span></p>
																	</div>
																	<!-- //혜택 -->
																</div>
															</li>
														</ul>

														<div class="btns_wrap">
															<span class="btn full bgcolor7"><a href="#">상담신청하기</a></span>
														</div>

														<!-- <div class="btns_wrap">
															<span class="btn viewmore"><a>더보기</a></span>
														</div> -->
													</div>
												</dd>
											</dl>
										</div>
									</li>
								</ol>
							</div>
						</section>
						<!-- 라임 -->
						<section class="mainContents" id="homeCont2">
							<!-- 상품 배너 -->
							<div class="eventmain">
								<ul class="limeBanner">
									<li class="limeLeft"><a href="#"><img src="../../img/_tmp/event_img6.png" alt="" /></a></li>
									<li><a href="#"><img src="../../img/_tmp/event_img7.png" alt="" /></a></li>
									<li><a href="#"><img src="../../img/_tmp/event_img8.png" alt="" /></a></li>
								</ul>
								<ul class="BannerList">
									<li><a href="#"><img src="../../img/_tmp/event_img9.png" alt="" /></a></li>
									<li><a href="#"><img src="../../img/_tmp/event_img10.png" alt="" /></a></li>
									<li><a href="#"><img src="../../img/_tmp/event_img11.png" alt="" /></a></li>
								</ul>
							</div>
							<!-- //상품 배너 -->
						</section>
						<!-- T는상품 -->
						<section class="mainContents" id="homeCont3">
							<!-- top banner -->
							<div class="topbanner" >
								<ul>
									<li><a><img src="../../img/banner_lime.jpg" alt="" /></a></li>
								</ul>
								<span class="closebanner"><a>닫기</a></span>
							</div>
							<!-- /top banner -->
							<!-- 베스트상품 목록 -->
							<div class="goods_top">
								<h2>베스트상품</h2>
							</div>
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
													<i>쇼핑엔티가</i> <em>43,800</em>원
												</p>
											</div>
											<!-- //상품가격 -->
											<!-- 혜택 -->
											<div class="goods_benefit">
												<p><span>사은품</span></p>
												<p><span>무이자12</span></p>
												<p><span>무료배송</span></p>
											</div>
											<div class="goods_benefit2">
												<span class="rate"><em>20</em>%<span></span></span>
												<span class="sale">일시불 할인</span>
											</div>
											<!-- //혜택 -->
										</div>
									</div>
								</div>
								<div class="goods_wide rank">
									<div class="goods_img">
										<a><img src="../../img/_tmp/001.jpg" alt="" /></a>
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
													<i>쇼핑엔티가</i> <em>43,800</em>원
												</p>
												<!-- <p class="counsel">상담전용 상품입니다</p> -->
											</div>
											<!-- //상품가격 -->
										</div>
									</div>
									<!-- 혜택 -->
									<div class="goods_benefit_wp">
										<div class="goods_benefit">
											<p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p>
										</div>
										<div class="goods_benefit2">
											<span class="rate"><em>20</em>%<span></span></span>
											<span class="sale">일시불 할인</span>
										</div>
									</div>
									<!-- //혜택 -->
								</div>
								<div class="goods_wide rank">
									<div class="goods_img">
										<a><img src="../../img/_tmp/001.jpg" alt="" /></a>
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
													<i>쇼핑엔티가</i> <em>43,800</em>원
												</p> -->
												<p class="counsel">상담전용 상품입니다</p>
											</div>
											<!-- //상품가격 -->
										</div>
									</div>
									<!-- 혜택 -->
									<div class="goods_benefit_wp">
										<div class="goods_benefit">
											<p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p>
										</div>
										<div class="goods_benefit2">
											<!-- <span class="rate"><em>20</em>%<span></span></span> -->
											<span class="sale">일시불 할인</span>
										</div>
									</div>
									<!-- //혜택 -->
								</div>
								<div class="goods_wide rank">
									<div class="goods_img">
										<a><img src="../../img/_tmp/001.jpg" alt="" /></a>
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
													<i>쇼핑엔티가</i> <em>43,800</em>원
												</p>
												<!-- <p class="counsel">상담전용 상품입니다</p> -->
											</div>
											<!-- //상품가격 -->
										</div>
									</div>
									<!-- 혜택 -->
									<div class="goods_benefit_wp">
										<div class="goods_benefit">
											<!-- <p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p> -->
										</div>
										<div class="goods_benefit2">
											<span class="rate"><em>20</em>%<span></span></span>
											<!-- <span class="sale">일시불 할인</span> -->
										</div>
									</div>
									<!-- //혜택 -->
								</div>
								<div class="goods_wide rank">
									<div class="goods_img">
										<a><img src="../../img/_tmp/001.jpg" alt="" /></a>
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
													<i>쇼핑엔티가</i> <em>43,800</em>원
												</p>
												<!-- <p class="counsel">상담전용 상품입니다</p> -->
											</div>
											<!-- //상품가격 -->
										</div>
									</div>
									<!-- 혜택 -->
									<div class="goods_benefit_wp">
										<div class="goods_benefit">
											<p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p>
										</div>
										<div class="goods_benefit2">
											<!-- <span class="rate"><em>20</em>%<span></span></span>
											<span class="sale">일시불 할인</span> -->
										</div>
									</div>
									<!-- //혜택 -->
								</div>
								<div class="goods_wide rank">
									<div class="goods_img">
										<a><img src="../../img/_tmp/001.jpg" alt="" /></a>
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
													<i>쇼핑엔티가</i> <em>43,800</em>원
												</p>
												<!-- <p class="counsel">상담전용 상품입니다</p> -->
											</div>
											<!-- //상품가격 -->
										</div>
									</div>
									<!-- 혜택 -->
									<div class="goods_benefit_wp">
										<div class="goods_benefit">
											<!-- <p><span>사은품</span></p>
											<p><span>무이자12</span></p>
											<p><span>무료배송</span></p>-->
										</div>
										<div class="goods_benefit2">
											<!-- <span class="rate"><em>20</em>%<span></span></span>
											<span class="sale">일시불 할인</span> -->
										</div>
									</div>
									<!-- //혜택 -->
								</div>
							</div>
							<!-- 베스트상품 //-->
							<!-- T는 상품 목록 -->
							<div class="goods_top">
								<h3>T는 상품</h3>
							</div>
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
													<i>쇼핑엔티가</i> <em>43,800</em>원
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
													<i>쇼핑엔티가</i> <em>43,800</em>원
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
										<p class="goods_name">1+2이벤트 얇은 수분 보호막으로 하루종일 촉촉하게 얇은 수분 보호막으로 하루종일 촉촉하게</p>
										<div class="goods">
											<!-- 상품가격 -->
											<div class="goods_price">
												<p class="sell">
													판매가 <em>76,200</em>원
												</p>
												<p class="sale">
													<i>쇼핑엔티가</i> <em>43,800</em>원
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
													<i>쇼핑엔티가</i> <em>43,800</em>원
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
												<p class="sell">
													판매가 <em>76,200</em>원
												</p>
												<p class="sale">
													<i>쇼핑엔티가</i> <em>43,800</em>원
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
							</div>
							<!--T는 상품 목록 //-->
							<div class="ui-more-loading"><img src="../../img/loading.png" alt="" /></div>
						</section>
						<!-- 이벤트 -->
						<section class="mainContents" id="homeCont4">
							<!-- 이벤트 배너 상세 -->
							<h2 class="sub_tit"><span>5월엔 매직이벤트</span></h2><!-- 2016-06-14 : 클래스 수정 -->
							<div class="eventBan">
								<ul class="BannerDetail">
									<li><img src="../../img/_tmp/event_img4.png" alt="" /></li>
								</ul>
							</div>
							<!-- //이벤트 배너 상세 -->

							<!-- 이벤트 배너 -->
							<div class="eventmain">
								<ul class="BannerList">
									<li><a href="#"><img src="../../img/_tmp/event_img1.png" alt="" /></a></li>
									<li><a href="#"><img src="../../img/_tmp/event_img2.png" alt="" /></a></li>
									<li><a href="#"><img src="../../img/_tmp/event_img3.png" alt="" /></a></li>
								</ul>
								<!-- 이벤트 목룍 없을 경우 -->
								<div class="eventNone">
									<p><img src="../../img/favicon.png" alt="" /></p>
									<p class="event_txt">현재 진행중인 이벤트가 없습니다.</p>
									<p>품질 좋은 상품을 보다 저렴하게<br>이용할 수 있는 이벤트로 찾아오겠습니다.<br>그때까지 잠시 기다려주세요.</p>
								</div>
								<!--//이벤트 목룍 없을 경우 -->
							</div>
							<!-- //이벤트 배너 -->
							<!-- banner image --><!-- 2015-04-28 배너 추가 -->
							<!-- <div class="eventBan">
								<a href="#"><img src="../../img/_tmp/009.jpg" alt=""></a>
							</div> -->
							<!-- /banner image -->
						</section>
						<!-- 기획전 -->
						<section class="mainContents" id="homeCont5">
							<div class="eventmain">
								<ul class="BannerList">
									<li>
										<a href="http://m.shoppingntmall.com/plan/event/swipeDetail/2018030305?pageType=1">
											<img src="//img.shoppingntmall.com/banner/944/1000944.jpg" alt="" onerror="this.src=&quot;/resources/img/empty/image_W.jpg&quot;">
										</a>
									</li>
								</ul>
								<select onchange="selectLimeDetail('2018030301', this.value , '90000018')" id="select_90000018">
									<option value="">전체보기</option>
									<option value="01">세트</option>
									<option value="02">단품</option>
								</select>
							</div>
							<div class="list_select">
								<p class="list_total">TOTAL <span>600</span>개</p>
								<ul class="list_sort">
									<li>
										<select>
											<option>인기순</option><!-- 2015-04-27 인기순 추가 -->
											<option>최신순</option>
											<option>낮은가격순</option>
											<option>높은가격순</option>
										</select>
										<!-- 2015-04-27 sort 선택 삭제 -->
									</li>
									<li><a class="btn_list_type"></a></li>
								</ul>
							</div>
							<!-- /sorting -->
							<div class="goods_list_wrap">
								<div class="goods_wide_out">
									<div class="goods_wide">
										<div class="goods_img">
											<p class="soldout"><span><em>일시품절</em></span></p><!-- 2016-06-21 : 품절 예시 -->
											<a>
												<img src="../../img/_tmp/014.jpg" alt="" />
												<img src="../../img/_tmp/014_s.jpg" alt="" class="s" />
											</a><!-- 2016-06-21 -->
										</div>
										<div class="goods_cont">
											<p class="goods_name">[국내초저가] 피현정 에디션 360 탄산 휩 클렌저 세트</p>
											<div class="goods">
												<!-- 상품가격 -->
												<div class="goods_price">
													<!-- <p class="sell">
														<em>76,200</em>원
													</p>
													<p class="sale">
														<em>43,800</em>원
													</p> -->
													<p class="sell">
														<i>판매가</i> <em>76,200</em>원
													</p><!-- 2016-06-24 : 판매가 i 태그 추가 -->
													<p class="sale">
														<i>쇼핑엔티가</i> <em>43,800</em>원
													</p>
												</div>
												<!-- //상품가격 -->
												<!-- 혜택 -->
												<div>
													<div class="goods_benefit">
														<!-- <p><span>사은품</span></p>
														<p><span>무이자12</span></p> -->
														<p><span>무료배송</span></p>
														<p class="single"><span>일시불</span></p>
													</div>
													<!-- //혜택 -->
													<div class="goods_benefit2">
														<span class="rate"><em>20</em>%<span></span></span>
														<span class="sale">일시불 할인</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="goods_wide_out">
									<div class="goods_wide">
										<div class="goods_img">
											<a>
												<img src="../../img/_tmp/014.jpg" alt="" />
												<img src="../../img/_tmp/014_s.jpg" alt="" class="s" />
											</a>
										</div>
										<div class="goods_cont">
											<p class="goods_name">[국내초저가] 피현정 에디션 360 탄산 휩 클렌저</p>
											<div class="goods">
												<!-- 상품가격 -->
												<div class="goods_price">
													<p class="sell">
														<i>판매가</i> <em>76,200</em>원
													</p>
													<p class="sale">
														<i>쇼핑엔티가</i> <em>43,800</em>원
													</p>
												</div>
												<!-- //상품가격 -->
												<!-- 혜택 -->
												<div class="goods_benefit">
													<p><span>사은품</span></p>
													<p><span>무이자12</span></p>
													<p><span>무료배송</span></p>
													<p class="single"><span>일시불</span></p>
												</div>
												<!-- //혜택 -->
												<div class="goods_benefit2">
													<span class="rate"><em>20</em>%<span></span></span>
													<span class="sale">일시불 할인</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="goods_wide_out">
									<div class="goods_wide">
										<div class="goods_img">
											<a>
												<img src="../../img/_tmp/014.jpg" alt="" />
												<img src="../../img/_tmp/014_s.jpg" alt="" class="s" />
											</a>
										</div>
										<div class="goods_cont">
											<p class="goods_name">[국내초저가] 피현정 에디션 360 탄산 휩 클렌저 세트</p>
											<div class="goods">
												<!-- 상품가격 -->
												<div class="goods_price">
													<p class="sell">
														<i>판매가</i> <em>76,200</em>원
													</p>
													<p class="sale">
														<i>쇼핑엔티가</i> <em>43,800</em>원
													</p>
												</div>
												<!-- //상품가격 -->
												<!-- 혜택 -->
												<div class="goods_benefit">
													<p><span>사은품</span></p>
													<p><span>무이자12</span></p>
													<p><span>무료배송</span></p>
													<p class="single"><span>일시불</span></p>
												</div>
												<!-- //혜택 -->
												<div class="goods_benefit2">
													<span class="rate"><em>20</em>%<span></span></span>
													<span class="sale">일시불 할인</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="goods_wide_out">
									<div class="goods_wide">
										<div class="goods_img">
											<a>
												<img src="../../img/_tmp/014.jpg" alt="" />
												<img src="../../img/_tmp/014_s.jpg" alt="" class="s" />
											</a>
										</div>
										<div class="goods_cont">
											<p class="goods_name">[국내초저가] 피현정 에디션 360 탄산 휩 클렌저 세트</p>
											<div class="goods">
												<!-- 상품가격 -->
												<div class="goods_price">
													<p class="sell">
														<i>판매가</i> <em>76,200</em>원
													</p>
													<p class="sale">
														<i>쇼핑엔티가</i> <em>43,800</em>원
													</p>
												</div>
												<!-- //상품가격 -->
												<!-- 혜택 -->
												<div class="goods_benefit">
													<p><span>사은품</span></p>
													<p><span>무이자12</span></p>
													<p><span>무료배송</span></p>
													<p class="single"><span>일시불</span></p>
												</div>
												<!-- //혜택 -->
												<div class="goods_benefit2">
													<span class="rate"><em>20</em>%<span></span></span>
													<span class="sale">일시불 할인</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
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
<script type="text/javascript" src="/contents/2015_t/resources/js/test.ui.js"></script>
<script type="text/javascript">
// DEBUG 여부를 확인하기 위한 설정.
var _debug = true;
window.addEventListener('load', function(){window.scrollTo(0,1);});

var version = new Date().getTime() / 1000;

var searchList = []; // 최근 검색어 쿠키 저장 리스트

var ie = (function(){
	var undef,
	v = 3,
	div = document.createElement('div'),
	all = div.getElementsByTagName('i');
	while(
		div.innerHTML = '<!--[if gt IE ' + (++v) + ']><i></i><![endif]-->',
		all[0]
	);
	return v > 4 ? v : undef;
}());

$LAB
.queueScript("/resources/js/mypage/jquery.number.min.js")
.queueScript(ie < 9 ? '/resources/js/mypage/html5.js' : '')
.queueScript(ie < 9 ? '/resources/js/mypage/jquery.xdr-transport.js' : '')
.queueScript("/resources/js/comUtil.js?"+version)


var commonAjax = function(target_url, target_data, target_dataType, target_method) {
	return jQuery.ajax({
		url : target_url,
		type : target_method,
		data : target_data,
		dataType : target_dataType
	});
};

var commonJsonAjax = function(target_url, target_data, target_dataType, target_method) {
	return jQuery.ajax({
		url : target_url,
		type : target_method,
		data : target_data,
		dataType : target_dataType,
		cache:false,
        timeout : 30000,
        contentType : "application/json;charset=UTF-8",
        dataType : target_dataType,
        data: JSON.stringify(target_data)
	});
};

var commonJsonAjaxSync = function(target_url, target_data, target_dataType, target_method) {
	return jQuery.ajax({
		url : target_url,
		type : target_method,
		data : target_data,
		dataType : target_dataType,
		cache:false,
		async: false,
        timeout : 30000,
        contentType : "application/json;charset=UTF-8",
        dataType : target_dataType,
        data: JSON.stringify(target_data)
	});
};

function setMenuTop(height) {
	//$('.gnb').css('top', Number(height));
}

// 앱 카테고리 사이드바 제어
function sideOpen() {
	appCloseVideo();
	sidebar.open('c');
	retrieveCategoryBanner();
	topBarHide();
	appBarHide();
}

// 앱 검색바 제어
function searchOpen() {
	appCloseVideo();
	ui_search.viewSearchBar();
	showSearch();
	topBarHide();
	appBarHide();
	jQuery('#searchKeywordName').select();
    jQuery('#searchKeywordName').focus();
}

// dim 상태 해제 시 앱 구현 바 복구
$(".dim, .sideClose").on('click', function(){ topBarShow(); appBarShow(); });

//검색어 조회후 입력
commonAjax("/goods-search/recommKeyward", '', "json", "GET")
.done(function(data, textStatus, jqXHR){
	if(data.code =="200"){
		var keywardArr = data.data;
		if(keywardArr.length>0){
			var randomVlaue = Math.floor(Math.random() * keywardArr.length);
			var keywardBanner = keywardArr[randomVlaue];
			var text = keywardBanner.textContents;
			var link = keywardBanner.linkUrl;
			jQuery('#searchKeywordName').attr('placeholder', text);
			jQuery('#searchKeywordName').attr('link', link);
		}
    }
});

function goSearch(){
	var searchKeyword = jQuery('#searchKeywordName').val();
	var pageNo = jQuery('#pageNo').val();
	var query = jQuery('#query').val();
	var url = "";

	searchKeyword = searchKeyword.trim();

	var re = /[.~!@\#$%^&*\-=+|\\/:;?"`<>'_]/gi;

    if(re.test(searchKeyword)){
    	alert("특수문자는 입력할 수 없습니다.");
		event.preventDefault();
		return;
	}

	if (searchKeyword == null || searchKeyword == '' ) {
		var linkUrl = jQuery('#searchKeywordName').attr('link');
		if(linkUrl!= null && linkUrl !=''){
			window.location.href =  "http://dev-m.shoppingntmall.com" +jQuery('#searchKeywordName').attr('link');
		}else{
    		alert("검색어를 입력해주세요");
    		return;
		}
	} else {
	    if(comUtil.isEmpty(query)){
		    url = "/goods-search/search/"+ encodeURIComponent(searchKeyword);
		}else{
		    url = "/goods-search/search/"+ encodeURIComponent(searchKeyword)+ "?query="+query;
		}

		try{
			if(jQuery.cookie('searchList').split(',').indexOf(searchKeyword) != -1){
    		}else{
    			searchList.push(searchKeyword);
    			jQuery.cookie('searchList', searchList, { path: '/' });
    		}
		}catch(e){

		}

		window.location.href = "http://dev-m.shoppingntmall.com" + url;
	}
}

// 로그인을 체크한다.
function checkLogin(forwardUrl) {
	if (confirm('로그인 후 이용 가능합니다.\n로그인페이지로 이동하시겠습니까?')) {
		if (comUtil.isEmpty(forwardUrl)) {
			window.location.replace('/member/login');
		}
		else {
			window.location.replace('/member/login?forwardUrl=' + encodeURIComponent(forwardUrl));
		}
	}
}

// 로그인을 체크한다.
function checkLoginAlert(forwardUrl) {
    alert("로그인 후 이용 가능합니다.")
    if (comUtil.isEmpty(forwardUrl)) {
        window.location.replace('/member/login');
    }
    else {
        window.location.replace('/member/login?forwardUrl=' + encodeURIComponent(forwardUrl));
    }
}

// 로그인을 체크한다.
function login(id) {
	if(id != '' && id != undefined && id != null){
		window.location.replace('/member/login?memId=' + id);
	}else{
		window.location.replace('/member/login');
	}
	//window.location.replace("/html/index.html#!/login");
}

function logout() {
	if (confirm('로그아웃 하시겠습니까?')) {
		window.location.replace("/member/logout");
	}
}

function aLoginCheck(forwardUrl) {
	var param = {};

	if( forwardUrl ) {
		param['forwardUrl'] = forwardUrl;
	}

	commonAjax('/member/login/check', param, 'json', 'post')
	.done(function(data, textStatus, jqXHR) {
		if( data.code == 200 ) {
			window.location.replace(data.replaceUrl);
		}
	}).fail(function(jqXHR, textStatus, errorThrown) {
		if( _debug ) console.log("에러", "실패 : " + errorThrown);
	});
}

function goCustMain() {
    window.location="http://dev-m.shoppingntmall.com/customer/main";
}

function goApp() {
	var iOsAgent = "true";
	var AndroidAgent = "false";
	var AppFlag = "false";

	if(AppFlag == "false"){
		if(iOsAgent == "true") {
			window.location.replace("https://itunes.apple.com/kr/app/syoping-ent/id1004806037?mt=8");
		} else if(AndroidAgent == "true") {
			// window.location.replace("http://play.google.com/store/apps/details?id=com.shoppingntmall.mcapp");
			window.location.replace("market://details?id=com.shoppingntmall.mcapp");
		} else {
			alert("휴대폰에서 앱을 설치 해주십시오.");
		}
	} else {
	    // alert("쇼핑엔티 앱 \n 오픈 준비중입니다.\n 잠시만 기다려 주시기 바랍니다.");
	}
}

function goTop(){
  window.scrollTo(0,1);
}

jQuery('input#searchKeywordName').on('keydown', function(e){
	if (13 == e.which) {
		goSearch();
	}
});

function isIOSWeb(){
	var mobileKeyWords = new Array('iPhone', 'iPod','iPad');
	var iosYn = 0;
	for (var i = 0 ; i < mobileKeyWords.length ; i++){
		//모바일 디바이스로 접속일때
		if (navigator.userAgent.match(mobileKeyWords[i]) != null){
			iosYn = 1;
		}
	}
	return iosYn;
}

function isIOS(){
    return /iP(hone|od|ad)/.test(navigator.userAgent);
}
function isAndroid(){
    return /(Android)/.test(navigator.userAgent);
}

function isApp(){
    return /(shoppingntapp)/.test(navigator.userAgent);
}

function playVideo(_url, playerIdx, goodsCode, goodsName, live, price, endDate){
    var movieUrl = _url;

	if(!confirm('실시간 방송을 시청하시려면, 3G/4G 환경에서는 사용자 요금에 따라 요금이 부가될 수 있습니다. 시청하시겠습니까?')){
		if(endDate) {
    		endDate = new Date(endDate);
    	    var curDate = new Date();
    	    var leftTime = (endDate - curDate) / 1000;
    	    jQuery('#time').attr('leftTime', leftTime);
		} else {
    		endDate = new Date();
    	}
        return false;
    }

	if(endDate) {
    	endDate = new Date(endDate);
        var curDate = new Date();
        var leftTime = (endDate - curDate) / 1000;
        jQuery('#time').attr('leftTime', leftTime);
	} else {
		endDate = new Date();
	}

    if(_url != ""){

		var lbsParam = {
			said				:"LBSTEST",
			asset_id			:"10010",
			zone				:"HOT",
			path				:_url,
			request_bit_rate	:"S",
			stream_count		:"2",
			ad_path				:"none",
			protocol			:"HTTP",
			otu_encoding		:"0",
			otu_expirementime	:"120",
			client_ip			:"LBSTEST",
			said				:"0.0.0.0",
			level				:"0"
		}
		if(live){
			lbsParam.svc = "LIVE";
		}else{
			lbsParam.svc = "VOD";
		}
		commonAjax("/videoUrl", lbsParam, "json", "POST")
			.done(function(data, textStatus, jqXHR) {
    			try{
    				var resultData = JSON.parse(data.data);
    				movieUrl = resultData.content[0].content_otu;
        			if (isApp()) {
                        live = live || "false";
                        var playParams = {
                            "src" : movieUrl,
                            "live" : live,
            				"linkUrl" : ( goodsCode != "" ? "/display/goods/"+goodsCode : "" ),
            				"price" : price,
            				"playerX" : playerIdx,
            				"title" : goodsName,
            				"endDate" : endDate
                        };
                        window.location = "netplay://playVideo?q=" + JSON.stringify(playParams);
                 	}else {
                        window.location = movieUrl;
                	}
    			}catch(e){
            		alert('동영상이 존재하지 않습니다.');
    			}
        	}).fail(function(jqXHR, textStatus, errorThrown) {
    	});
		/*
		if (isApp()) {
            live = live || "false";
            var playParams = {
                "src" : movieUrl,
                "live" : live,
				"linkUrl" : ( goodsCode != "" ? "/display/goods/"+goodsCode : "" ),
				"price" : price,
				"playerX" : playerIdx,
				"title" : goodsName,
				"endDate" : endDate
            };
            window.location = "netplay://playVideo?q=" + JSON.stringify(playParams);
     	}else {
            window.location = movieUrl;
    	}
		*/

    }else{
		alert('동영상이 존재하지 않습니다.');
    }
}

function setupVideo(type, playerIdx, menuArr)
{

console.log(JSON.stringify(menuArr));
    var r = 1;
    var heightP = 0;

	if(typeof endDate == "undefined") {
		endDate = "0";
	}

    // 임시
    if (isIOS() && !isApp()) return;

    if (!isIOS()) {
        r = window.devicePixelRatio;
    }

    if(type == "view"){
      if(isIOS()) {
          heightP = 80;
      } else {
          heightP = 80;
      }
    }

    var setupParams = {
        "default" : {
            "pmode" : {
                "x" :  "p",
                "y" :  "p",
                "w" :  "p",
                "h" :  "p"
            },
            "position" : {
                "x" :  "0",
                "y" :  "0",
                "w" :  "1.0",
                "h" :  "0"
            },
            "limit" : {
                "l" :  "0",
                "r" :  "1.0",
                "t" :  "0",
                "b" :  "1.0"
            },
            "mmode" : "true",
            "dmode" : "zoom",
            "menu" : {
                "top" : "true",
                "middle" : "false",
                "bottom" : "true",
                "custom" : "false"
            }
        },
        "zoom" : {
            "pmode" : {
                "x" :  "r",
                "y" :  "r",
                "w" :  "r",
                "h" :  "r"
            },
            "position" : {
                "x" :  "0.05",
                "y" :  "0.12",
                "w" :  "0.4",
                "h" :  "0"
            },
            "rarea" : {
                "l" :  "0",
                "r" :  "1.0",
                "t" :  "0",
                "b" :  "0.5"
            },
            "mmode" : "true",
            "dmode" : "zoom",
            "dtype" : "down",
            "menu" : {
                "top" : "true",
                "middle" : "true",
                "bottom" : "true",
                "custom" : "true"
            }
        },
        "full" : {
            "status" : "true",
            "mmode" : "true",
            "menu" : {
                "top" : "false",
                "middle" : "true",
                "bottom" : "true",
                "custom" : "true"
            }
        },
        "scroll" : {
            "attach" : "true",
            "limit" : {
                "l" :  "0",
                "r" :  "1.0",
                "t" :  "0",
                "b" :  "1.0"
            },
           "position" : {
               "x" :  "0",
               "y" :  String(Math.floor((heightP) * r))
           }
        }
    };
	var pramObj;
	if(menuArr){
    	pramObj = {
    		videoParam :setupParams,
    		mainmenuParam : menuArr
    	}
	}else{
    	pramObj = {
    		videoParam :setupParams
    	}
	}

    if(iOsAgent){
        window.location = "netplay://setupVideo?q=" + JSON.stringify(setupParams) + "&main=" + JSON.stringify(menuArr);
	}else{
        window.location = "netplay://setupVideo?q=" + JSON.stringify(pramObj);
	}
}

function sendPlayerViewStatus(status)
{
    var deem = jQuery('.deem_white');

    if(deem.length > 0){
        if(status == "zoom" || status == "hide"){
            deem.hide();
        }
        else{
            deem.show();
        }
    }
}

var locationParams = {
	"linkUrl" : window.location.pathname
};

// App ActionBar 숨김
function appBarHide(){
	if (isApp()) {
		try{
			window.shoppingntapp.appActionBottomBarHide();
		}catch(e){}
	}
}

// App ActionBar 노출(단 디폴트 액션바가 노출되는 상황 조건)
function appBarShow(){
	if (isApp()) {
		if(appActionVarDisplayYn()){
			try{
				window.shoppingntapp.appActionBottomBarShow();
			}catch(e){}
		}
	}
}

// App HeaderBar 숨김
function topBarHide(){
	if (isApp()) {
		try{
			if(isAndroid()) {
				window.shoppingntapp.appActionTopBarHide();
			} else {
				window.location = "shoppingntapp://hideBar?q=" + JSON.stringify(locationParams);
			}
		}catch(e){}
	}
}

// App HeaderBar 노출
function topBarShow(){
	if (isApp()) {
		if(appActionVarDisplayYn()){
    		try{
    			if(isAndroid()) {
    				window.shoppingntapp.appActionTopBarShow();
    			} else {
    				window.location = "shoppingntapp://showBar?q=" + JSON.stringify(locationParams);
    			}
    		}catch(e){}
		}
	}
}

// 페이지 App ActionBar 기본 노출 여부
function appActionVarDisplayYn(){
	// var checkUrlWords = new Array('/display/goods/', '/order/purchase/','/mypage/myPage','/member/login','/member/nm-order/exist-member','/member/find-id','/member/find-pw','/member/chagne-pw-regular','/member/nm-order','/member/join','/common/terms?win=pop','/common/policy/1','/common/policy/2','/common/policy/3');
	var checkUrlWords = new Array('/display/goods/');
	var defaultDisplayYn = 1;
	var urlPath = window.location.pathname + window.location.search;
	for (var i = 0 ; i < checkUrlWords.length ; i++){
		if (urlPath.match(checkUrlWords[i]) != null){
			defaultDisplayYn = 0;
		}
	}
	return defaultDisplayYn;
}

function showSearch(){
	//jQuery.removeCookie('searchList', { path: '/' });
	if(jQuery.cookie('searchList')==undefined||jQuery.cookie('searchList')==""){
		jQuery.cookie('searchList', searchList, { path: '/' });
	}else{
		searchList = jQuery.cookie('searchList').split(',');
	}

	jQuery("#searchList").html("").append('<dt>최근검색어</dt>');
	if(searchList.length == 0){
		jQuery("#searchList").append('<dd><p id="searchResult0">최근 검색어 내역이 없습니다.</p></dd>');
	}else{
		var count = 1;
		for(var x = searchList.length; x > 0; x--){
			if(count > 10) break;
			jQuery("#searchList").append('<dd><a href="javascript: setSearchKeyword(\''+searchList[x-1]+'\');" id="searchResult1">'+searchList[x-1]+'</a></dd>');
			count++;
		}
	}

	jQuery("#searchList").append('<dd><span class="btn size2 bgcolor8"><a>닫기</a></span></dd>');
	jQuery(".search_list dl dd .btn a").on('click', function(){
		topBarShow();
		appBarShow();
		ui_search.hideSearchBar();
		float_header.side_close();
		$('.wrap_inner').css('height', 'auto');
		$('.floating_btn_top').show(); // 2016-06-30
	});
}

function setSearchKeyword(keyword){
	jQuery('#searchKeywordName').val(keyword);
	goSearch();
}

// App 동영상 닫기
function appCloseVideo() {
	if(isApp()) {
    	if(isAndroid()) {
    		try{
    			window.shoppingntapp.closeVideo();
    		}catch(e){}
    	} else {
    		window.location = "netplay://closeVideo";
    	}
	}
}

function sendAppTitleInfo(){

	if(location.href.indexOf("index") <0 && location.href.indexOf("goods-list") <0 && location.href.indexOf("/display/goods/") <0 ){
    	var titleObj = {};
    	jQuery('.gnb.sub').hide();
    	titleObj.title = jQuery.trim(jQuery('.gnb.sub').find('h2').children('span').text());
		if(isIOS()) {
			titleObj.title = encodeURIComponent(jQuery.trim(titleObj.title));
		}
		if(jQuery('.gnb.sub').find('a').attr('href')){
			var backBtnUrl = "";
			backBtnUrl = jQuery('.gnb.sub').find('a').attr('href');
			if(backBtnUrl.substring(0,1) == "/"){
					titleObj.backBtn = encodeURIComponent("http://dev-m.shoppingntmall.com"+backBtnUrl);
					//titleObj.backBtn = "http://dev-m.shoppingntmall.com"+backBtnUrl;
			}else if (backBtnUrl == "javascript:;"){
				titleObj.backBtn = "javascript:window.history.back();";
			}else{
				titleObj.backBtn = backBtnUrl;
			}
		}else{
			titleObj.backBtn = "javascript:window.history.back();";
		}
    	console.log(JSON.stringify(titleObj));
    	location.href = "shoppingntapp://setTitle?main="+JSON.stringify(titleObj);
	}
}
$(document).ready(function(){
	if(isApp()){
		sendAppTitleInfo();
	}
});

function windowOpen(targetUrl) {
	if(jQuery('main#policy').length>0){
		jQuery('main#policy').remove();
	}
	commonAjax(targetUrl, '', "text", "GET")
    .done(function(data, textStatus, jqXHR){
		jQuery(data).insertAfter('main#contents');
		jQuery('main#contents').hide();
		jQuery('main#policy').show();
		scrollTo(0, 0);
    });
}

function appWindowOpen(targetUrl) {
	if(isApp()) {
		targetUrl = targetUrl.replace('https://', '');
		targetUrl = targetUrl.replace('http://', '');
		window.location = "shoppingntapp://openpc?"+targetUrl;
	}
	else {
		window.open(targetUrl, '_agree');
	}
}

function setDay() {
    var year        = jQuery("#birthYear").val();
    var month       = jQuery("#birthMonth").val();
    var day         = jQuery("#birthDate").val();

    var arrayMonth  = [31,28,31,30,31,30,31,31,30,31,30,31];

    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
        arrayMonth[1] = 29;
    }

    $("#birthDate option").remove();
    for (var i=0; i<=arrayMonth[month-1]; i++) {
		if(i==0) {
			$('#birthDate').append($("<option/>", {value: '', text: '선택(일)'}));
		} else {
			if(i < 10) {
        		$('#birthDate').append($("<option/>", {value: '0'+i, text: i+'일'}));
			} else {
				$('#birthDate').append($("<option/>", {value: i, text: i+'일'}));
			}
		}
    }

    if( day != null && day != "" ) {
		if( Number(day) > arrayMonth[month-1] ) {
            $("#birthDate option:last").attr("selected", "selected");
        } else {
            $("#birthDate").val(day);
        }
    }
}
</script>
<script>

  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-80829108-1', 'auto');
  ga('send', 'pageview');
    </script>
    <script type="text/javascript" src="/resources/js/lib/jquery.timers.js"></script>
    <script type="text/javascript" src="/resources/js/popup.js"></script>

<script type="text/javascript">
// 메인에 라인 페이지가 존재할 때
var planCode = [];
	planCode = ['90000019:2016060026'];

var menuArr = new Array();
if(isApp()){
	var menuObj ={};
						menuObj = {};
    		menuObj.name = "홈";
    		menuObj.name = menuObj.name.replace(/\&/g,"");
    		menuObj.name = menuObj.name.replace(/\#/g,"");
    		menuObj.name = menuObj.name.replace(/\?/g,"");
    		menuObj.name = menuObj.name.replace(/\=/g,"");
    		menuObj.index =0;
    		                menuObj.mainYn = "0";
                		menuArr.push(menuObj);
								menuObj = {};
    		menuObj.name = "TV 편성";
    		menuObj.name = menuObj.name.replace(/\&/g,"");
    		menuObj.name = menuObj.name.replace(/\#/g,"");
    		menuObj.name = menuObj.name.replace(/\?/g,"");
    		menuObj.name = menuObj.name.replace(/\=/g,"");
    		menuObj.index =1;
    		                menuObj.mainYn = "0";
                		menuArr.push(menuObj);
								menuObj = {};
    		menuObj.name = "테마   Shop";
    		menuObj.name = menuObj.name.replace(/\&/g,"");
    		menuObj.name = menuObj.name.replace(/\#/g,"");
    		menuObj.name = menuObj.name.replace(/\?/g,"");
    		menuObj.name = menuObj.name.replace(/\=/g,"");
    		menuObj.index =2;
    		                menuObj.mainYn = "1";
                		menuArr.push(menuObj);
								menuObj = {};
    		menuObj.name = "베스트";
    		menuObj.name = menuObj.name.replace(/\&/g,"");
    		menuObj.name = menuObj.name.replace(/\#/g,"");
    		menuObj.name = menuObj.name.replace(/\?/g,"");
    		menuObj.name = menuObj.name.replace(/\=/g,"");
    		menuObj.index =3;
    		                menuObj.mainYn = "0";
                		menuArr.push(menuObj);
								menuObj = {};
    		menuObj.name = "이벤트";
    		menuObj.name = menuObj.name.replace(/\&/g,"");
    		menuObj.name = menuObj.name.replace(/\#/g,"");
    		menuObj.name = menuObj.name.replace(/\?/g,"");
    		menuObj.name = menuObj.name.replace(/\=/g,"");
    		menuObj.index =4;
    		                menuObj.mainYn = "0";
                		menuArr.push(menuObj);
								menuObj = {};
    		menuObj.name = "나이키 기획전";
    		menuObj.name = menuObj.name.replace(/\&/g,"");
    		menuObj.name = menuObj.name.replace(/\#/g,"");
    		menuObj.name = menuObj.name.replace(/\?/g,"");
    		menuObj.name = menuObj.name.replace(/\=/g,"");
    		menuObj.index =5;
    		                menuObj.mainYn = "0";
                		menuArr.push(menuObj);
			}


var mainSwipe;
$(document).ready(function(){
	// 메인 화면은 loading indicator 사용 안함
	jQuery.ajaxSetup({
        beforeSend:function(){
        },
        complete:function(){
        }
    });

	/* 퍼블리싱 스크립트 S */
    var delta = 500;
	var timer = null;
	//var banSlideList = null;
	//var eventSlideList =  null;

	if(jQuery('#ban-slide').length != 0){
    	var eventSlideList =  new Swiper('#ban-slide', {
    		slidesPerView: 'auto',
    		centeredSlides: true,
    		loop: true,
    		pagination: '.slideCircle',
    		paginationClickable: true
    	});
    }

    if(jQuery('#ban-slide2').length!=0){
    	var ban_loop = $('#ban-slide2 .swiper-slide').length;
    		ban_loop > 1 ? ban_loop=true : ban_loop=false;
    	var banSlideList = new Swiper('#ban-slide2', {
    		slidesPerView: 'auto',
    		centeredSlides: true,
    		loop: ban_loop
    	});
    }

    //팝업롤링 2018-02-07 추가
	$('.rollpop').slick({
		dots: true,
		infinite: true,
		autoplay: true,
  		autoplaySpeed: 4000
	});

	setTimeout( function(){
		$("#homeSlider").height($(".mainContents").eq($('.gnb ul li.current').index()).height());
		mainSwipe_handler();
		if(isApp()){
    		setupVideo('view', '', menuArr);

			//setupVideo 이후에 현재 페이지 값을 전달해야 함.
			var hashLocation = location.hash;
        	var hashSplit = hashLocation.split("#");
        	var hashName = hashSplit[1];


			if( hashName != undefined && hashName != (0 + 2)) {
        		hashName = Number(hashName);
    			setTimeout(function(){
    				location.href = "shoppingntapp://setMainCategoryIndex?main="+hashName;
    			}, 100);
        	}else{
			    hashName = Number(0 + 2);
    			setTimeout(function(){
    				location.href = "shoppingntapp://setMainCategoryIndex?main="+hashName;
    			}, 100);
			}
    	}
	},200);

	$(window).on('load resize',function(){
		var hashLocation = location.hash;
    	var hashSplit = hashLocation.split("#");
    	var hashName = hashSplit[1];


		if( hashName != undefined && hashName != (0 + 2)) {
    		hashName = Number(hashName);
    	}else{
		    hashName = Number(0 + 2);
		}

		startSlideNum = hashName;
		//startSlideNum = $('.gnb ul li.current').index();
		mainSwipe_handler();
		//swipeTrigger();
		setTimeout(function(){
			$("#homeSlider").height($(".mainContents").eq(startSlideNum).height());
		}, 300);
	})
	/* 퍼블리싱 스크립트 E */

	// main swipe
	var startSlideNum = 0;
	function mainSwipe_handler(){
	var menuLength = $(".gnb").find("li").length;
	if(mainSwipe){
		mainSwipe.kill();
	}
		mainSwipe = Swipe(document.getElementById('homeSlider'),{
			callback : function(index , elem){

			//alert(index);
			//alert(elem);
			if(isApp()){
				location.href = "shoppingntapp://setMainCategoryIndex?main="+index;
			}
			$("#homeSlider").height($(".mainContents").eq(index).height());
			menuHandler.init('main', index);

			if(index < 5){
				menuScroll.scrollTo(0, 0, 300);
			} else {
				menuScroll.scrollTo(menuScroll.maxScrollX, 0, 0);
			}

			if (index == 1)	{
				 timer = setTimeout(function(){
				 	if(jQuery('.scdList').find('.tvOnair').length) {
						goOnair();
					}
					resizePage("1");
				}, 300);
			} else {
				$('html, body').scrollTop(0);
				$('html, body').animate({'scrollTop':'0'}, 200);
				clearTimeout(timer);
			}

			if( index == 1 || index == 2 || index == 3 ){
			    var arr = [0,0,0,0];
				if(typeof planCode[0] != "undefined"){
				    arr = planCode[0].split(":");
				}

				if(arr[0] == "90000016"){
				    viewSwipeLimeDetail(arr[0], 5)
				}else if(arr[0] == "90000017"){
				    viewSwipeLimeDetail(arr[0], 5)
				}else{
				    viewSwipeLimeMain();
				}
			}

			if( index == 2 || index == 3 || index == 4 ){
			    var arr1 = [0,0,0,0];
				var arr2 = [0,0,0,0];
				if(typeof planCode[0] != "undefined"){
				    arr1 = planCode[0].split(":");
				}
				if(typeof planCode[1] != "undefined"){
				    arr2 = planCode[1].split(":");
				}

				if(arr1[0] == "90000016" && arr2[0] == "90000017"){
				    viewSwipeLimeDetail(arr2[0], 6)
				}else if(arr1[0] == "90000016" || arr1[0] == "90000017"){
				    viewSwipeLimeMain();
				}else{
				    viewSwipeRecomMain();
				}

			}

			if( index == 3 || index == 4 || index == 5 ){
			    var arr1 = [0,0,0,0];
				var arr2 = [0,0,0,0];
				if(typeof planCode[0] != "undefined"){
				    arr1 = planCode[0].split(":");
				}
				if(typeof planCode[1] != "undefined"){
				    arr2 = planCode[1].split(":");
				}
				if(arr1[0] == "90000016" && arr2[0] == "90000017"){
				    viewSwipeLimeMain();
				}else if(arr1[0] == "90000016" || arr1[0] == "90000017"){
				    viewSwipeRecomMain();
				}else{
				            						viewSwipeEventMain();
											}

			}

			if( index == 4 || index == 5 || index == 6 ){

			    var arr1 = [0,0,0,0];
				var arr2 = [0,0,0,0];
				if(typeof planCode[0] != "undefined"){
				    arr1 = planCode[0].split(":");
				}
				if(typeof planCode[1] != "undefined"){
				    arr2 = planCode[1].split(":");
				}

				if(arr1[0] == "90000016" && arr2[0] == "90000017"){
				    viewSwipeRecomMain();
				}else if(arr1[0] == "90000016" || arr1[0] == "90000017"){
				            						viewSwipeEventMain();
											}else{
				    viewSwipeLimeDetail(arr1[0], 7);
				}
			}

			if( index == 5 || index == 6 || index == 7 ){

			    var arr1 = [0,0,0,0];
				var arr2 = [0,0,0,0];
				if(typeof planCode[0] != "undefined"){
				    arr1 = planCode[0].split(":");
				}
				if(typeof planCode[1] != "undefined"){
				    arr2 = planCode[1].split(":");
				}

				if(arr1[0] == "90000016" && arr2[0] == "90000017"){
				            						viewSwipeEventMain();
											}else if(arr1[0] == "90000016" || arr1[0] == "90000017"){
				        viewSwipeLimeDetail(arr2[0], 7);
				}else{
				    viewSwipeLimeDetail(arr2[0], 8);
				}
			}

			if( index == 6 || index == 7 || index == 8 ){
			    var arr1 = [0,0,0,0];
				var arr2 = [0,0,0,0];
				var arr3 = [0,0,0,0];
				if(typeof planCode[0] != "undefined"){
				    arr1 = planCode[0].split(":");
				}
				if(typeof planCode[1] != "undefined"){
				    arr2 = planCode[1].split(":");
				}
				if(typeof planCode[2] != "undefined"){
				    arr3 = planCode[2].split(":");
				}
				if(arr1[0] == "90000016" && arr2[0] == "90000017"){
				    viewSwipeLimeDetail(arr3[0], 7);
				}else if(arr1[0] == "90000016" || arr1[0] == "90000017"){
				    viewSwipeLimeDetail(arr3[0], 8);
				}else{
				    viewSwipeLimeDetail(arr2[0], menuLength - 1);
				}
			}

			if( menuLength == 9 ) {
				if( index == 7 || index == 8 || index == 9 ){
				    var arr4 = [0,0,0,0];
				    if(typeof planCode[3] != "undefined"){
					    arr4 = planCode[3].split(":");
					}

					viewSwipeLimeDetail(arr4[0], menuLength - 1);
    			}
			}

			if(elem == undefined) index = "0";
    			window.location.replace('#'+index, '');

    			if(!iOsAgent){
					appCloseVideo();
				}
			},
			startSlide : startSlideNum
		});
		if( menuLength == 5 || menuLength == 6 || menuLength == 7) {
			//2018-02-08 주석처리
			//$(".gnb").addClass('size5');
			viewSwipeEventMain();
		} else if( menuLength == 6 || menuLength == 7 || menuLength == 8 ) {
		    for(var i;i<planCode.length;i++){
			    var arr = planCode[i].split(":");
				if(arr[0] == "90000018"){
			        viewSwipeLimeDetail(arr[0], 7);
				}
			}
		} else if( menuLength == 7 || menuLength == 8 || menuLength == 9 ){
			for(var i;i<planCode.length;i++){
			    var arr = planCode[i].split(":");
				if(arr[0] == "90000019"){
			        viewSwipeLimeDetail(arr[0], 7);
				}
			}
		}

		$(".gnb").find("li").click(function(){
			mainSwipe.slide($(this).index(), 200);
			return false;
		});

		var hashLocation = location.hash;
    	var hashSplit = hashLocation.split("#");
    	var hashName = hashSplit[1];
		var classById = $('#lnb2').attr('class');


        if( hashName != undefined && hashName != (0 + 2)) {

			hashName = Number(hashName);
            //mainSwipe.slide(hashName, 200);
            $(".gnb").find("li").eq(hashName).trigger('click');
			if(isApp()){
                location.href = "shoppingntapp://setMainCategoryIndex?main="+hashName;
            }
        }else{
            hashName = Number(0 + 2);
			//mainSwipe.slide(hashName, 200);
            viewSwipeLimeMain();
			if(isApp()){
                location.href = "shoppingntapp://setMainCategoryIndex?main="+hashName;
            }
        }

	};
	//main swipe
	function swipeTrigger(){
		$("#homeSlider").swipe({
			swipe:function() {
			  //$("#homeSlider").text("You swiped " + direction + " with " + fingerCount + " fingers");
			  //mainSwipe_handler();
			},
			threshold:250,
			triggerOnTouchEnd:false
		});
	};

	/*
	jQuery('.btn.with_prd, .with_goods_wrap .btn_close').click(function(){
		if( jQuery('.with_goods_wrap').hasClass('open') ){
			jQuery('.with_goods_wrap').removeClass('open').hide();
		} else {
			jQuery('.with_goods_wrap').addClass('open').show()
		}
	});
	*/

    jQuery('#mainTogetherOpen,#mainTogetherClose').click(function(){
        if( jQuery('#mainTogether').hasClass('open') ){
            jQuery('#mainTogether').removeClass('open').hide();
        } else {
            jQuery('#mainTogether').addClass('open').show()
        }
    });

	// 편성표 바로가기
	jQuery(".tv_link").click(function() {
		mainSwipe.slide(1, 200);
		return false;
	});

			        		                jQuery("#popup_wrap_0").popSnt({popupBox : ".popup_box", linkBanner : "#link_banner_0", popupCloseButton : "#button_popup_close_0", popupTodayCloseButton : "#button_today_close_0", TodayClose : true, cookieName : "popupCookie_0_20180206", closeFlag : "1", popupCnt : "3" });


});


if(isApp()){
	jQuery('#topNav').hide();
}

function changeMainIndex(index){
	mainSwipe.slide(index, 200);
}

function selectBroadCastList(fromDate) {
    jQuery.ajax({
        type: 'get',
        url : '/broadcast/selectBroadCastList?fromDate='+fromDate,
		async: true,
        dataType : "html",
        success: function(data, textStatus, jqXHR) {
            jQuery('#homeCont1').html(data);
        },
        complete: function(data, textStatus, jqXHR) {
			setTimeout(function(){
				resizePage("1");

			 	if(jQuery('.scdList').find('.tvOnair').length) {
					goOnair();
				}
			}, 300);
        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert("일시적인 장애가 발생했습니다. 잠시후에 다시 요청 하시기 바랍니다.");
		}
    });
}

function viewSwipeLimeMain() {
	if( jQuery('#homeCont2').html() != "&nbsp;" ){
		return;
	}

    jQuery.ajax({
        type: 'get',
        url : '/plan/swipeLimeMain' ,
		async: true,
        dataType : "html",
        success: function(data, textStatus, jqXHR) {
            jQuery('#homeCont2').html(data);
        },
        complete: function(data, textStatus, jqXHR) {
			setTimeout('resizePage("2")', 300);

        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert("일시적인 장애가 발생했습니다. 잠시후에 다시 요청 하시기 바랍니다.");
		}
    });
}

function viewSwipeRecomMain() {
	if( jQuery('#homeCont3').html() != "&nbsp;" ) {
		return;
	}

    jQuery.ajax({
        type: 'get',
        url : '/category/swipeRecommendMain' ,
		async: true,
        dataType : "html",
        success: function(data, textStatus, jqXHR) {
            jQuery('#homeCont3').html(data);
        },
        complete: function(data, textStatus, jqXHR) {
			setTimeout('resizePage("3")', 300);

        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert("일시적인 장애가 발생했습니다. 잠시후에 다시 요청 하시기 바랍니다.");
		}
    });
}

function viewSwipeEventMain() {
	if( jQuery('#homeCont4').html() != "&nbsp;" ){
		return;
	}

    jQuery.ajax({
        type: 'get',
        url : '/plan/swipeEventMain' ,
		async: true,
        dataType : "html",
        success: function(data, textStatus, jqXHR) {
            jQuery('#homeCont4').html(data);
        },
        complete: function(data, textStatus, jqXHR) {
			setTimeout('resizePage("4")', 300);

        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert("일시적인 장애가 발생했습니다. 잠시후에 다시 요청 하시기 바랍니다.");
		}
    });
}

function viewSwipeEventDetail(planCode) {
	if( jQuery('#homeCont4').html() != "&nbsp;" ){
		return;
	}

    jQuery.ajax({
        type: 'get',
        url : 'plan/event/swipeDetail/'+planCode ,
		async: true,
        dataType : "html",
        success: function(data, textStatus, jqXHR) {
            jQuery('#homeCont4').html(data);
        },
        complete: function(data, textStatus, jqXHR) {
			setTimeout('resizePage("4")', 300);

        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert("일시적인 장애가 발생했습니다. 잠시후에 다시 요청 하시기 바랍니다.");
		}
    });
}

function viewSwipeLimeDetail(planCode, num){
	if( jQuery('#homeCont'+num).html() != "&nbsp;" ) {
		return;
	}
	var param = new Object();
	param['categoryCode'] = planCode;
	/*
    jQuery.ajax({
        type: 'get',
        url : '/plan/planshop/swipeDetail/'+planCode ,
		async: true,
        dataType : "html",
        success: function(data, textStatus, jqXHR) {
            jQuery('#homeCont'+num).html(data);

        },
        complete: function(data, textStatus, jqXHR) {
			if(num == '5') {
				setTimeout('resizePage("5")', 300);
			} else if(num == '6'){
				setTimeout('resizePage("6")', 300);
			} else if(num == '7'){
				setTimeout('resizePage("7")', 300);
			} else if(num == '8'){
				setTimeout('resizePage("8")', 300);
			}

        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert("일시적인 장애가 발생했습니다. 잠시후에 다시 요청 하시기 바랍니다.");
		}
    });
    */

    jQuery.ajax({
        type: 'get',
        url : '/plan/swipeLimeMain',
        data: param,
        async: true,
        dataType : "html",
        success: function(data, textStatus, jqXHR) {
            jQuery('#homeCont'+num).html(data);
        },
        complete: function(data, textStatus, jqXHR) {
            if(num == '5') {
                setTimeout('resizePage("5")', 300);
            } else if(num == '6'){
                setTimeout('resizePage("6")', 300);
            } else if(num == '7'){
                setTimeout('resizePage("7")', 300);
            } else if(num == '8'){
                setTimeout('resizePage("8")', 300);
            }

        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert("일시적인 장애가 발생했습니다. 잠시후에 다시 요청 하시기 바랍니다.");
        }
    });

}

function resizePage(num) {
	//var mainCategoryOn = jQuery(".gnb").find("li.current").index();
	var mainCategoryOn = jQuery(".gnb").find("li.current").attr("id");
	if( mainCategoryOn == "lnb"+num ){
		jQuery("#homeSlider").height(jQuery("#homeCont"+num).height());
	}
}

jQuery('#time').each(function(){
    var jQthis  = jQuery(this);
    var endDate = new Date(jQthis.attr('endDate'));
    var curDate = new Date();
    var leftTime = (endDate - curDate) / 1000;
    jQthis.attr('leftTime', leftTime);
});

jQuery(this).everyTime(1000, "countTimer", function(){
    jQuery('#time').each(function(){
        var jQthis = jQuery(this);
        var leftTime = jQthis.attr('leftTime');

        if (leftTime <= 0) {
            timerClass('.leftTime', "00:00:00");
        } else {
            var leftHour = Math.floor(leftTime / 3600);
            var leftMin = Math.floor(leftTime % 3600 / 60);
            var leftSec = Math.floor(leftTime % 3600 % 60);
            if(Math.floor(leftHour/24) > 0){
                var leftDay = Math.floor(leftHour / 24);
                leftHour = Math.floor(leftHour % 24);
                timerClass(this, leftDay + "d" +
                                 (leftHour < 10 ? "0" : "") + leftHour + ":" +
                                 (leftMin < 10 ? "0" : "") + leftMin);
            }else{
                timerClass(this, (leftHour < 10 ? "0" : "") + leftHour + ":" +
                                 (leftMin < 10 ? "0" : "") + leftMin + ":" +
                                 (leftSec < 10 ? "0" : "") + leftSec);
            }
        }
        leftTime = leftTime - 1;

        jQthis.attr('leftTime', leftTime);
    });
});

function timerClass(obj, timeHtml){
    jQuery('.leftTime').html(timeHtml);
}

function goOnair(){
    var onAirTarget = jQuery('.scdList').find('.tvOnair');

    var headerSize = 0;
    if($('.header').length) headerSize = $('.header').height();

	if(isApp() && isIOS()) {
		headerSize = 40;
	}

	var loc = onAirTarget.offset().top - (headerSize + 50);
    $('html, body').scrollTop(loc);
}

ui_more.init(addlist);


var totalCount              = 100;
var loadingZoneCurrentPage  = Number(jQuery('#goodsListLoadingZone').attr('currentpage'));
var rowsPerPage             = 10;
var loadingZoneIsMoreData   = (jQuery('#goodsListLoadingZone').attr('ismoredata') == "true");
var ajaxLoding              = false;
var nextPage                = 1;

function addlist(){
	var hashLocation = location.hash;
    var hashSplit = hashLocation.split("#");
	var hashName = hashSplit[1];
	var classById = $('#lnb2').attr('class');

	//홈 더보기 실행
	if(hashName == "0"){
                if (loadingZoneIsMoreData && !ajaxLoding)  {

            loadingZoneCurrentPage++;
            nextPage++;
            ajaxLoding = true;
            ui_loading.attachLoading();//로딩이미지 block
            // 라임관 더보기
            var paramList = [];
            paramList.push("pageNo=");
            paramList.push(nextPage);
            paramList.push("&rowsPerPage=");
            paramList.push(rowsPerPage);

            jQuery.ajax({
                type: 'get',
                url : '/index/more' ,
                data : paramList.join(''),
                dataType : "html",
                success: function(data, textStatus, jqXHR) {
                    jQuery('#indexMore').append(data);
                    ajaxLoding = false;
                    ui_loading.detachLoading();//로딩이미지 none
                }, complete: function(data, textStatus, jqXHR) {
        			setTimeout('resizePage("0")', 300);
                },
                error: function(jqXHR, textStatus, errorThrown) {
                            ui_loading.detachLoading();//로딩이미지 none
                            alert("일시적인 장애가 발생했습니다. 잠시후에 다시 요청 하시기 바랍니다.");
                }
            })

            loadingZoneIsMoreData = (totalCount/rowsPerPage > loadingZoneCurrentPage) ? true : false;

        }

	}else if(classById == "current"){
        var classById = $('#lnb2').attr('class');
	    var limeismoredata = "";

	    if(limeTotalCount > limeNextPage * limeRowsPerPage){
	        limeismoredata = true;
	    }else{
	        limeismoredata = false;
	    }

	    limeLoadingZoneIsMoreData   = limeismoredata;

	    if (limeLoadingZoneIsMoreData && !limeAjaxLoding)  {

		    //alert("limeLoadingZoneIsMoreData: "+limeLoadingZoneIsMoreData);
		    //alert("!limeAjaxLoding: "+ !limeAjaxLoding);

    	    limeNextPage++;
    	    limeAjaxLoding = true;

    	    ui_loading.attachLoading();//로딩이미지 block
    	    var paramList = [];
    	    paramList.push("pageNo=");
    	    paramList.push(limeNextPage);
    	    paramList.push("&rowCnt=");
    	    paramList.push(limeRowsPerPage);

    	    jQuery.ajax({
    	        type: 'get',
    	        url : '/plan/swipeLimeMain/more' ,
    	        data : paramList.join(''),
    	        dataType : "html",
    	        success: function(data, textStatus, jqXHR) {
    	            jQuery('#limeMore').append(data);
    	            limeAjaxLoding = false;
    	            ui_loading.detachLoading();//로딩이미지 none
    	        },complete: function(data, textStatus, jqXHR) {
    	            setTimeout('resizePage("2")', 300);

    	        },
    	        error: function(jqXHR, textStatus, errorThrown) {
    	                    ui_loading.detachLoading();//로딩이미지 none
    	                    alert("일시적인 장애가 발생했습니다. 잠시후에 다시 요청 하시기 바랍니다.");
    	        }
    	    })
	    }

	}

}

</script>
</body>
</html>
