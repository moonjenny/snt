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
						<li><a href="home.jsp">홈</a></li>
						<li class="current"><a href="tv_schedule.jsp">TV편성</a></li>
						<li><a href="#">라임</a></li>
						<li><a href="recommend.jsp">T는상품</a></li>
						<li><a href="event.jsp">이벤트</a></li>
						<li><a href="promotion.jsp">기획전</a></li>					
					</ul>
				</nav>
				<div id="homeSlider">
					<div class="swipe-wrap">
						<section class="mainContents">
							<!--2018-02-09 tv편성 날짜노출 수정------------------>
							<div class="tvDate">
								<ol>
									<li><a onclick="goUrl('/broadcast/main?fromDate=2015/06/03')"><span>06월 03일</span></a></li>
									<li><span>06월 04일</span></li>
									<li><a onclick="goUrl('/broadcast/main?fromDate=2015/06/05')"><span>06월 05일</span></a></li>
								</ol>
							</div>
							<!--//2018-02-09 tv편성 날짜노출 수정------------------>
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
																	<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
																	<!-- 상품가격 -->
																	<div class="goods_price">
																		<p>
																			<del><em>216,100</em>원</del>
																		</p>
																		<p>
																			<span><em>164,800</em>원</span>
																		</p>
																		<!-- <p class="counsel">상담전용 상품입니다</p> -->
																	</div>
																	<!-- //상품가격 -->														
																</div>
																<!-- 혜택 -->
																<div class="goods_benefit2">
																	<span class="rate"><em>20</em>%<span></span></span>
																	<span class="sale">일시불 할인</span>
																</div>
																<div class="goods_benefit">
																	<p><span>사은품</span></p>
																	<p><span>무이자12</span></p>
																	<p><span>무료배송</span></p>
																</div>
																<!-- //혜택 --><!-- 2016-06-08 : 위치 수정 -->
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
																	<!-- 상품가격 -->
																	<!-- 2016-07-18 -->
																	<div class="goods_price">
																		<del><em>216,100</em>원</del>
																		<span><em>164,800</em>원</span>
																		<!-- <p class="counsel">상담전용 상품입니다</p> -->
																	</div>
																	<!-- 2016-07-18 //-->
																	<!-- //상품가격 -->
																	<div class="goods_benefit2">
																		<!-- <span class="rate"><em>20</em>%<span></span></span> -->
																	</div>															
																</div>
																<!-- 혜택 -->
																<div class="goods_benefit">
																	<p><span>사은품</span></p>
																	<p><span>무이자12</span></p>
																	<p><span>무료배송</span></p>
																	<p><span>일시불 할인</span></p>
																</div>
																<!-- //혜택 --><!-- 2016-06-08 : 위치 수정 -->
															</li>
															<li>
																<div class="goods">
																	<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
																	<div class="goods_name">무방부제 무발색제 화적포</div>
																	<!-- 상품가격 -->
																	<div class="goods_price">
																		<del><em>216,100</em>원</del>
																		<span><em>164,800</em>원</span>
																		<!-- <p class="counsel">상담전용 상품입니다</p> -->
																	</div>
																	<!-- //상품가격 -->
																	<div class="goods_benefit2">
																		<span class="rate"><em>20</em>%<span></span></span>
																	</div>															
																</div>
																<!-- 혜택 -->
																<div class="goods_benefit">
																	<p><span>사은품</span></p>
																	<p><span>무이자12</span></p>
																	<p><span>무료배송</span></p>
																	<p><span>일시불 할인</span></p>
																</div>
																<!-- //혜택 -->
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
																	<p class="soldout"><span><em>일시품절</em></span></p>
																	<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
																	<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
																	<!-- 상품가격 -->
																	<div class="goods_price">
																		<!-- <p>
																			<del><em>216,100</em>원</del>
																		</p>
																		<p>
																			<span><em>164,800</em>원</span>
																		</p> -->
																		<p  class="counsel">상담전용 상품입니다</p>
																	</div>															
																	<!-- //상품가격 -->															
																</div>	
																<!-- 혜택 -->
																<div class="goods_benefit2">
																	<!-- <span class="rate"><em>20</em>%<span></span></span> -->
																	<span class="sale">일시불 할인</span>
																</div>
																<div class="goods_benefit">
																	<p><span>사은품</span></p>
																	<p><span>무이자12</span></p>
																	<p><span>무료배송</span></p>
																</div>
																<!-- //혜택 -->
															</li>
														</ul>

														<div class="btns_wrap">
															<span class="btn full bgcolor7"><a href="#">구매하기</a></span>
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
									<li class="tvOnair">
										<div class="tv_time"><span></span></div>
										<div class="goods_box">
											<dl>
												<dt>
													<em class="onair">On Air</em>
													<span class="time"><em>남은시간  00:33:32</em></span>
													<span class="movie"><a href="#">방송보기</a></span>										
												</dt>
												<dd>
													<div class="goods_wrap">
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
																	<!-- 상품가격 -->
																	<div class="goods_price">
																		<span><em>164,800</em>원</span>
																	</div>
																	<!-- //상품가격 -->															
																</div>
																<!-- 혜택 -->
																<div class="goods_benefit">
																	<p><span>사은품</span></p>
																	<p><span>무이자12</span></p>
																	<p><span>무료배송</span></p>
																	<p><span>일시불 할인</span></p>
																</div>
																<!-- //혜택 -->
															</li>
															<li>
																<div class="goods">
																	<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
																	<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
																	<!-- 상품가격 -->
																	<div class="goods_price">
																		<del><em>216,100</em>원</del>
																		<span><em>164,800</em>원</span>
																	</div>
																	<!-- //상품가격 -->															
																</div>
																<!-- 혜택 -->
																<div class="goods_benefit">
																	<!-- <p><span>사은품</span></p>
																	<p><span>무이자12</span></p>
																	<p><span>무료배송</span></p>
																	<p><span>일시불 할인</span></p> -->
																</div>
																<!-- //혜택 -->
															</li>
															<li>
																<div class="goods">
																	<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
																	<div class="goods_name">무방부제 무발색제 </div>
																	<!-- 상품가격 -->
																	<div class="goods_price">
																		<!-- <del><em>216,100</em>원</del> -->
																		<span><em>164,800</em>원</span>
																	</div>
																	<!-- //상품가격 -->															
																</div>
																<!-- 혜택 -->
																<div class="goods_benefit">
																	<p><span>사은품</span></p>
																	<p><span>무이자12</span></p>
																	<p><span>무료배송</span></p>
																	<p><span>일시불 할인</span></p>
																</div>
																<!-- //혜택 -->
															</li>
															<li>
																<div class="goods">
																	<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
																	<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
																	<!-- 상품가격 -->
																	<div class="goods_price">
																		<del><em>216,100</em>원</del>
																		<span><em>164,800</em>원</span>
																	</div>
																	<!-- //상품가격 -->
																	<!-- 혜택 -->
																	<div class="goods_benefit2">
																		<span class="rate"><em>20</em>%<span></span></span>
																	</div>
																	<!-- //혜택 -->
																</div>
																<!-- 혜택 -->
																<div class="goods_benefit">
																	<p><span>사은품</span></p>
																	<p><span>무이자12</span></p>
																	<p><span>무료배송</span></p>
																	<p><span>일시불 할인</span></p>
																</div>
																<!-- //혜택 -->
															</li>
															<li>
																<div class="goods">
																	<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
																	<div class="goods_name">무방부제 무발색제 </div>
																	<!-- 상품가격 -->
																	<div class="goods_price">
																		<del><em>216,100</em>원</del>
																		<span><em>164,800</em>원</span>
																	</div>
																	<!-- //상품가격 -->															
																</div>
																<!-- 혜택 -->
																<div class="goods_benefit">
																	<p><span>사은품</span></p>
																	<p><span>무이자12</span></p>
																	<p><span>무료배송</span></p>
																	<p><span>일시불 할인</span></p>
																</div>
																<!-- //혜택 -->
															</li>
															<li>
																<div class="goods">
																	<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
																	<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
																	<!-- 상품가격 -->
																	<div class="goods_price">
																		<del><em>216,100</em>원</del>
																		<span><em>164,800</em>원</span>
																	</div>
																	<!-- //상품가격 -->															
																</div>
																<!-- 혜택 -->
																<div class="goods_benefit">
																	<p><span>사은품</span></p>
																	<p><span>무이자12</span></p>
																	<p><span>무료배송</span></p>
																	<p><span>일시불 할인</span></p>
																</div>
																<!-- //혜택 -->
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
								</ol>
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
<script type="text/javascript" src="/contents/2015_t/resources/js/jquery.easing.1.3.min.js"></script><!-- 2015-05-29 추가 -->

<!-- 2015-07-03 -->
<!-- <script type="text/javascript">
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

		})		
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

		})
		
	}
}
	
		UI.Rolling1();
	});
});
 </script> -->
<!-- 2015-07-03 -->
</body>
</html>