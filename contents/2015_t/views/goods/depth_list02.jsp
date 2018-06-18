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
					<%-- <%@ include file="/contents/2015_t/views/includefile/ctgr_fulldown.jsp"%> --%>
					<nav class="gnb cate" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>소카테고리명</span></h2>
					</nav>
						<!-- sorting -->
						<section class="colorContents">
							<!--소카테고리 list 2018-03-21-->
							<div class="cate_group">
								<ul class="swiper-wrapper">
									<li class="swiper-slide">
										<!-- ol li 단위로 6개씩 그룹핑 -->
										<ol>
											<li><a href="#">전체</a></li>
											<li><a href="#">세카테고리1</a></li>
											<li><a href="#">세카테고리소카테고리</a></li>
											<li><a href="#">세카테고리3</a></li>
											<li><a href="#">세카테고리4</a></li>
											<li><a href="#">세카테고리5</a></li>
										</ol>
									</li>
									<li class="swiper-slide">
										<ol>
											<li><a href="#">세카테고리6</a></li>
											<li><a href="#">세카테고리7</a></li>
											<li><a href="#">세카테고리8</a></li>
										</ol>
									</li>
								</ul>
								<div id="indi01" class="indicator"></div>		
							</div>
							<!--//소카테고리 list 2018-03-21-->
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
									<li><a class="btn_list_type list"></a></li>
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
														<i>쇼핑엔T가</i> <em>43,800</em>원
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
														<i>쇼핑엔T가</i> <em>43,800</em>원
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
														<i>쇼핑엔T가</i> <em>43,800</em>원
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
														<i>쇼핑엔T가</i> <em>43,800</em>원
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

							<div class="ui-more-loading active"><img src="../../img/loading.png" alt="" /></div>

							<!-- 로딩 : 컨텐츠 2016-07-13 -->
							<div class="loading2_wrap">
								<div class="loading2">
									<svg height="48" width="48"  viewBox="0 0 120 120">
										<path d="m 41.351403,54.348877 c 0,0 -49.4783399,-12.652 -35.6966999,6.55192 C 19.436343,80.104717 93.314963,107.21615 110.03369,100.21236 126.75239,93.208587 86.311183,73.100937 86.311183,72.423147 c 0,-0.67778 4.29266,-62.5821903 4.29266,-62.5821903 0,0 -1.80744,-7.22973 -8.58529,-6.10008 -6.77786,1.12965 -40.66715,50.6080003 -40.66715,50.6080003 z"  stroke-dasharray="550 550"  />
									</svg>
								</div>
							</div>
							<!-- 로딩 : 컨텐츠 //-->
							
							
							<!-- //상품 목록 -->
							<!-- banner image -->
							<div class="eventBan"><!-- 2015-05-27 수정 -->
								<a href="#"><img src="../../img/banner_app.jpg" alt=""></a>
							</div>							
						</section>
						<!-- /banner image -->						
					</section>
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
<script type="text/javascript" src="/contents/2015_t/resources/js/test.ui.js"></script>
<script type="text/javascript">
	$(window).load(function(){	
		if(jQuery('#ban-slide2').length != 0){
	    	var eventSlideList =  new Swiper('#ban-slide2', {
	    		slidesPerView: 'auto',
				centeredSlides: true,
				pagination: '.slideCircle',
				paginationElement: 'a',
				paginationClickable: true,
				loop: true,
	    	});	
	    };


	    //세부카테고리 swiper 2018-03-20
	   	if ($('.cate_group .swiper-slide').length > 1) {
			var eventSlideList =  new Swiper('.cate_group', {
	    		slidesPerView: 'auto',
				centeredSlides: true,
				pagination: {
					el: '#indi01',
					clickable: true,
				}
	    	});	
		}


	    jQuery('.ui-more-container').length && ui_more.init(listAdd);
		function listAdd() {
			ui_loading.attachLoading();//로딩이미지 block
		    //alert('바닥');
		    //jQuery('.ui-more-container').append(jQuery('.ui-more-container').find('.goods_wide').clone());

			//ui_loading.detachLoading();//로딩이미지 none
		};
	});
</script>
</body>
</html>