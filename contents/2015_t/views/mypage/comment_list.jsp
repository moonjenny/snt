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
					<h2><span>상품평 작성</h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>상품평 작성</span></h2>
					</nav><!-- 2016-06-24 -->
					
					<div class="comment_wrap goods_review">
						<div class="tab_wrap">
							<div class="tab_btn">
								<a href="#tab1" class="on">미등록 상품평 <em>2</em></a>
								<a href="#tab2">작성한 상품평 <em>1</em></a>
							</div>
							<div class="tab_cont">
								<div id="tab1" class="cont_detail">
									<!--리스트 없을 경우-->
									<div class="no_list">
										<p>작성한 상품평이 없습니다.</p>
									</div>
									<!--//리스트 없을 경우-->
									<ul>
										<li class="review_cont">
											<dl class="review_layout">
												<dd class="img"><a href="#"><img src="../../img/_tmp/@temp_photo04.jpg" alt=""></a></dd>
												<dt><a href="#">따끈따끈 신상 파우치 (블랙, 화이트,레드 색상 중 랜덤발송)</a></dt>
												<dd class="sub_text">
													<span>[옵션] 단계선택-3단계</span>
													<span>수량 2개</span>
												</dd>
											</dl>
											<a href="#" class="comment_btn"><span>상품평 작성하기</span></a>
										</li>
										<li class="review_cont">
											<dl class="review_layout">
												<dd class="img"><a href="#"><img src="../../img/_tmp/@temp_photo04.jpg" alt=""></a></dd>
												<dt><a href="#">따끈따끈 신상 파우치 (블랙, 화이트,레드 색상 중 랜덤발송)</a></dt>
												<dd class="sub_text">
													<span>[옵션] 단계선택-3단계</span>
													<span>수량 2개</span>
												</dd>
											</dl>
											<a href="#" class="comment_btn"><span>상품평 작성하기</span></a>
										</li>
										<li class="review_cont">
											<dl class="review_layout">
												<dd class="img"><a href="#"><img src="../../img/_tmp/@temp_photo04.jpg" alt=""></a></dd>
												<dt><a href="#">따끈따끈 신상 파우치 (블랙, 화이트,레드 색상 중 랜덤발송)</a></dt>
												<dd class="sub_text">
													<span>[옵션] 단계선택-3단계</span>
													<span>수량 2개</span>
												</dd>
											</dl>
											<a href="#" class="comment_btn"><span>상품평 작성하기</span></a>
										</li>
									</ul>
									<a href="#" class="more_view">더보기</a>
								</div>
								<div id="tab2" class="cont_detail">
									<ul class="accordion_list">
										<li class="review_cont">
											<dl class="review_layout accordion_tit">
												<dd class="img"><a href="#"><img src="../../img/_tmp/@temp_photo04.jpg" alt=""></a></dd>
												<dt><a href="#">따끈따끈 신상 파우치 (블랙, 화이트,레드 색상 중 랜덤발송)</a></dt>
												<dd class="sub_text">
													<span>[옵션] 단계선택-3단계</span>
													<span>수량 2개</span>
												</dd>
											</dl>
											<div class="review_detail accordion_cont">
												<div class="goods_comment">
													제가 키가 작아서 그런가 그리 잘 어울리지는 않아요 그래도 저렴하니까 유행이니 한계절 입기에는~
												</div>
												<div class="user_info">
													<span class="date">2018.04.02</span>
												</div>
												<div class="all_star_rev">
													<span class="star_s all">
														<span class="review_star"><em style="width:92%;"></em></span>
													</span>
												</div>
												<div class="detail_star_rev">
													<ul>
														<li> 
															<span class="g_tit">품질</span>
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
														<li>
															<span class="g_tit">배송</span> 
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
														<li>
															<span class="g_tit">가격</span>
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
														<li> 
															<span class="g_tit">만족도</span>
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
													</ul>
												</div>
											</div>
										</li>
										<li class="review_cont">
											<dl class="review_layout accordion_tit">
												<dd class="img"><a href="#"><img src="../../img/_tmp/@temp_photo04.jpg" alt=""></a></dd>
												<dt><a href="#">따끈따끈 신상 파우치 (블랙, 화이트,레드 색상 중 랜덤발송)</a></dt>
												<dd class="sub_text">
													<span>[옵션] 단계선택-3단계</span>
													<span>수량 2개</span>
												</dd>
											</dl>
											<div class="review_detail accordion_cont">
												<div class="goods_photo">
													<ul class="swiper-wrapper">
														<li class="swiper-slide"><img src="../../img/_tmp/@temp_photo03.jpg" alt=""/></li>
														<li class="swiper-slide"><img src="../../img/_tmp/@temp_photo01.jpg" alt=""/></li>
														<li class="swiper-slide"><img src="../../img/_tmp/@temp_photo02.jpg" alt=""/></li>
													</ul>
													<div class="swiper_indi">
														<div class="swiper-pagination"></div>
														<div class="swiper-button-next"></div>
														<div class="swiper-button-prev"></div>	
													</div>	
												</div>
												<div class="goods_comment">
													제가 키가 작아서 그런가 그리 잘 어울리지는 않아요 그래도 저렴하니까 유행이니 한계절 입기에는~
												</div>
												<div class="user_info">
													<span class="date">2018.04.02</span>
												</div>
												<div class="all_star_rev">
													<span class="star_s all">
														<span class="review_star"><em style="width:92%;"></em></span>
													</span>
												</div>
												<div class="detail_star_rev">
													<ul>
														<li> 
															<span class="g_tit">품질</span>
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
														<li>
															<span class="g_tit">배송</span> 
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
														<li>
															<span class="g_tit">가격</span>
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
														<li> 
															<span class="g_tit">만족도</span>
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
													</ul>
												</div>
											</div>
										</li>
										<li class="review_cont">
											<dl class="review_layout accordion_tit">
												<dd class="img"><a href="#"><img src="../../img/_tmp/@temp_photo04.jpg" alt=""></a></dd>
												<dt><a href="#">따끈따끈 신상 파우치 (블랙, 화이트,레드 색상 중 랜덤발송)</a></dt>
												<dd class="sub_text">
													<span>[옵션] 단계선택-3단계</span>
													<span>수량 2개</span>
												</dd>
											</dl>
											<div class="review_detail accordion_cont">
												<div class="goods_comment">
													제가 키가 작아서 그런가 그리 잘 어울리지는 않아요 그래도 저렴하니까 유행이니 한계절 입기에는~
												</div>
												<div class="user_info">
													<span class="date">2018.04.02</span>
												</div>
												<div class="all_star_rev">
													<span class="star_s all">
														<span class="review_star"><em style="width:92%;"></em></span>
													</span>
												</div>
												<div class="detail_star_rev">
													<ul>
														<li> 
															<span class="g_tit">품질</span>
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
														<li>
															<span class="g_tit">배송</span> 
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
														<li>
															<span class="g_tit">가격</span>
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
														<li> 
															<span class="g_tit">만족도</span>
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
													</ul>
												</div>
											</div>
										</li>
										<li class="review_cont">
											<dl class="review_layout accordion_tit">
												<dd class="img"><a href="#"><img src="../../img/_tmp/@temp_photo04.jpg" alt=""></a></dd>
												<dt><a href="#">따끈따끈 신상 파우치 (블랙, 화이트,레드 색상 중 랜덤발송)</a></dt>
												<dd class="sub_text">
													<span>[옵션] 단계선택-3단계</span>
													<span>수량 2개</span>
												</dd>
											</dl>
											<div class="review_detail accordion_cont">
												<div class="goods_comment">
													제가 키가 작아서 그런가 그리 잘 어울리지는 않아요 그래도 저렴하니까 유행이니 한계절 입기에는~
												</div>
												<div class="user_info">
													<span class="date">2018.04.02</span>
												</div>
												<div class="all_star_rev">
													<span class="star_s all">
														<span class="review_star"><em style="width:92%;"></em></span>
													</span>
												</div>
												<div class="detail_star_rev">
													<ul>
														<li> 
															<span class="g_tit">품질</span>
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
														<li>
															<span class="g_tit">배송</span> 
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
														<li>
															<span class="g_tit">가격</span>
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
														<li> 
															<span class="g_tit">만족도</span>
															<span class="star_s">
																<span class="review_star"><em style="width:80%;"></em></span>
															</span>
														</li>
													</ul>
												</div>
											</div>
										</li>
									</ul>
									<a href="javascript:;" class="more_view">더보기</a>
								</div>
							</div>
						</div>
						<div class="cmt_bannert_area">
							<a href="#"><img src="../../img/_tmp/@temp_ban03.jpg" alt="" class="ban_img"/></a>
							<p class="notice_txt">상품평 작성시 드리는 본 행사는 당사 사정으로 인해 변경 될 수 있습니다.</p>
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