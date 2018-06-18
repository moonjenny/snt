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
						<li class="current"><a href="home.jsp">홈</a></li>
						<li><a href="tv_schedule.jsp">TV편성</a></li>
						<li><a href="#">라임</a></li>
						<li><a href="recommend.jsp">T는상품</a></li>
						<li><a href="event.jsp">이벤트</a></li>
						<li><a href="promotion.jsp">기획전</a></li>					
					</ul>
				</nav>
				<section class="mainContents">
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
						<div class="vod_wrap"><!-- 클래스 추가 : 기본모드 vod_wrap, 가로모드 vod_wrap full, 하단 축소 모드 vod_wrap small -->
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
									<p class="goods_name">[최저가] 싸이닉 올데이 포어 클레이 마스크+올데이</p>
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
							<!-- 온에어 - 재생 및 재생시간 -->
							<p class="time">
								<span class="onair"><em>On Air</em></span>
								<span>
									남은시간 : <em>00:22:45</em> 
								</span>
							</p>
							<!-- 온에어 - 재생 및 재생시간 //-->
							<!-- buttons -->
							<div class="btns_wrap btn2">
								<span class="btn with_prd"><a href="#">함께하는 상품 <em>2</em></a></span>
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

											<!-- 혜택 -->
											<div class="goods_benefit">
												<p><span>사은품</span></p>
												<p><span>무이자12</span></p>
												<p><span>무료배송</span></p>
											</div>
											<!-- //혜택 -->

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
											
										</div>
									</li>
									<li>
										<div class="goods">
											<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
											<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>

											<!-- 혜택 -->
											<div class="goods_benefit">
												<p><span>사은품</span></p>
												<p><span>무이자12</span></p>
												<p><span>무료배송</span></p>
											</div>
											<!-- //혜택 -->

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
											
										</div>
									</li>
									<li>
										<div class="goods">
											<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
											<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>

											<!-- 혜택 -->
											<div class="goods_benefit">
												<p><span>사은품</span></p>
												<p><span>무이자12</span></p>
												<p><span>무료배송</span></p>
											</div>
											<!-- //혜택 -->

											<!-- 상품가격 -->
											<div class="goods_price">
												<!-- <p class="sell">
													판매가 <em>76,200</em>원
												</p>
												<p class="sale">
													<i>쇼핑엔T가</i> <em>43,800</em>원
												</p> -->
												<p class="counsel">상담 전용 상품입니다.</p>	
											</div>
											<!-- //상품가격 -->
											
										</div>
									</li>
									<li>
										<div class="goods">
											<p class="soldout"><span><em>일시품절</em></span></p>
											<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
											<div class="goods_name">무방부제 무발색제 </div>

											<!-- 혜택 -->
											<div class="goods_benefit">
												<p><span>사은품</span></p>
												<p><span>무이자12</span></p>
												<p><span>무료배송</span></p>
											</div>
											<!-- //혜택 -->

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
											
										</div>
									</li>
									<li>
										<div class="goods">
											<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
											<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>

											<!-- 혜택 -->
											<div class="goods_benefit">
												<p><span>사은품</span></p>
												<p><span>무이자12</span></p>
												<p><span>무료배송</span></p>
											</div>
											<!-- //혜택 -->

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
											
										</div>
									</li>
									<li>
										<div class="goods">
											<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
											<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>

											<!-- 혜택 -->
											<div class="goods_benefit">
												<p><span>사은품</span></p>
												<p><span>무이자12</span></p>
												<p><span>무료배송</span></p>
											</div>
											<!-- //혜택 -->

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
											
										</div>
									</li>
									<li>
										<div class="goods">
											<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
											<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>

											<!-- 혜택 -->
											<div class="goods_benefit">
												<p><span>사은품</span></p>
												<p><span>무이자12</span></p>
												<p><span>무료배송</span></p>
											</div>
											<!-- //혜택 -->

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
											
										</div>
									</li>
								</ul>
								<span  class="btn_close"></span>
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
									<span class="rate"><em>5</em>%<span></span></span>
									<span class="sale">일시불 할인</span>
								</div>
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
												<p class="goods_name">[신일] 더센쿡 다용도 믹서기 더센쿡 다용도 믹서기 더센쿡 다용도 믹서기 (텀블러) [SMX-SB2B]</p>
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
									</li>
									<li class="swiper-slide">
										<div class="goods_wide">
											<div class="goods_img">
												<a><img src="../../img/_tmp/014.jpg" alt="" /></a>
												<span  class="rank">02</span>
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
										<p class="sell">
											판매가 <em>76,200</em>원
										</p>
										<p class="sale">
											<i>쇼핑엔T가</i> <em>43,800</em>원
										</p>
									</div>
									<!-- //상품가격 -->
									
								</div>
							</li>
							<li>
								<div class="goods">
									<!-- 일시품절 상품 표시 -->
									<p class="soldout"><span><em>일시품절</em></span></p>
									<!-- //일시품절 상품 표시 -->
									<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
									<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>

									<!-- 상품가격 -->
									<div class="goods_price">
										<!-- <p class="sell">
											판매가 <em>76,200</em>원
										</p>
										<p class="sale">
											<i>쇼핑엔T가</i> <em>43,800</em>원
										</p> -->
										<p class="counsel">상담 전용 상품입니다.</p>
									</div>
									<!-- //상품가격 -->
									
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
<script type="text/javascript" src="/contents/2015_t/resources/js/jquery.easing.1.3.min.js"></script><!-- 2015-05-29 추가 -->
<script type="text/javascript">
	$(function(){
		/* var todaySlideList = jQuery('#today-slide').find('.swipe-wrap').find('> li'),
			todayBtime = jQuery('#todayBtime'),
			makeHtml = '<em>todayBtimeStr</em> 방송상품';
		if(todaySlideList.length > 1) {
			var todaySwipe = Swipe(document.getElementById('today-slide'), {
				callback: function(index, elem){ changeBtime(index); }
			});
			jQuery('#today-arrow-prev').on('click', function () { todaySwipe.prev(); });
			jQuery('#today-arrow-next').on('click', function () { todaySwipe.next(); });
		} else {
			jQuery('#today-arrow-prev').hide();
			jQuery('#today-arrow-next').hide();
		};

		changeBtime(0);
		function changeBtime(paramIndex){ todayBtime.html(makeHtml.replace('todayBtimeStr', jQuery('#todayBtime_'+paramIndex).val())); }; */
		/* @@@ 2014-11-26 방송상품의 시간 */

		// main - home 배너 롤링 //2016-06-15
		var eventSlideList =  new Swiper('#ban-slide', {
			slidesPerView: 'auto',
			centeredSlides: true,
			loop: true,
			pagination: '.slideCircle',
			paginationClickable: true
		});	
	
		var banSlideList = new Swiper('#ban-slide2', {
			slidesPerView: 'auto',
			centeredSlides: true,
			paginationClickable: true,
			loop: true,
			nextButton: '.moveNext2',
			prevButton: '.movePrev2'
		});	
		
		$('.btn.with_prd, .with_goods_wrap .btn_close').click(function(){
			if( $('.with_goods_wrap').hasClass('open') ){
				$('.with_goods_wrap').removeClass('open').hide();
			} else {
				$('.with_goods_wrap').addClass('open').show()
			}		
		});
	});
</script>
<script type="text/javascript" src="/contents/2015_t/resources/js/jquery.easing.1.3.min.js"></script>

<!-- 2015-07-03 
<script type="text/javascript">
$(document).ready(function () {	
$('.topbanner').show();
UI = {
	Load: function(){
		UI.Rolling();
		
	},
	Rolling: function(){
		var ground = $('.topbanner'),
			imgs_wrap = ground.children('.topbanner ul'),
			imgs = imgs_wrap.children(),
			size = imgs.height();

		//default
		imgs_wrap.css('top',-size);
		ground.css("height",+size+"px");
		imgs_wrap.children('li:last').prependTo(imgs_wrap);		
		
		var prev = function(){
			size = imgs.height();
			imgs_wrap.stop().animate({'top':0}, 300, 'easeInExpo', function(){
				$(this).children('li:last').prependTo(this);
				$(this).css({'top':-size});
			});
		}

		var next = function(){
		    size = imgs.height();
			imgs_wrap.stop().animate({'top':-(size*2)}, 300, 'easeInExpo', function(){
				$(this).children('li:first').appendTo(this);
				$(this).css({'top':-size});
			});
		}
		
		var start = function(){
			set_interval = setInterval(function(){
				next();
			}, 5000);//5초 자동롤링
		}
		
		start();		
	}
}

$(document).ready(function(){
	UI.Load();
});

});
</script>
<script type="text/javascript">        
$(function() {
	$(window).bind('resize', function(e) {
	$('.topbanner').height($('.topbanner ul>li img').height());
	$('.topbanner ul').height($('.topbanner ul>li img').height());
	$('.topbanner').show();


UI = {
	Load: function(){
		UI.Rolling1();
		
	},

	Rolling1: function(){
		var ground = $('.topbanner'),
			imgs_wrap = ground.children('.topbanner ul'),
			imgs = imgs_wrap.children(),
			size = imgs.height();

		//default
		imgs_wrap.css('top',-size);
		ground.css("height",+size+"px");
		imgs_wrap.children('li:last').prependTo(imgs_wrap);		
		
		var prev = function(){
			size = imgs.height();
			imgs_wrap.stop().animate({'top':0}, 300, 'easeInExpo', function(){
				$(this).children('li:last').prependTo(this);
				$(this).css({'top':-size});
			});
		}

		var next = function(){
		    size = imgs.height();
			imgs_wrap.stop().animate({'top':-(size*2)}, 300, 'easeInExpo', function(){
				$(this).children('li:first').appendTo(this);
				$(this).css({'top':-size});
			});
		}
		
		var start = function(){
			set_interval = setInterval(function(){
				next();
			}, 50000000);//5초 자동롤링
		}
		
		start();
		
	}
}
	
		UI.Rolling1();
	});
});
 </script>
 -->
<!-- 2015-07-03 -->
</body>
</html>