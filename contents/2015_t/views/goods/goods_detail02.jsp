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
			<%--@ include file="/contents/2015_t/views/includefile/header.jsp" --%>
			

			<header class="header detail"><!-- 2016-06-24 -->
				<!-- <a href="/" class=""><span>홈</span></a> --> <!--홈버튼 추가 2018-03-06-->
				<span class="btn_home"><a href="http://dev-m.shoppingntmall.com/index">이전 페이지로 바로가기</a></span>
				<h2 class="goods_detail"><span>상품상세정보</span></h2>
				<a class="search"><span>검색</span></a>		
			</header><!-- 2016-06-24 -->
			
			<div class="searchZone"><!-- 2016-06-17 위치 변경 및 최근검색어 영역 추가 -->
				<fieldset>
					<legend>검색어 입력</legend>
					<form>
						<p>
							<span>
								<input type="text" placeholder="요즘 유행하는 핫 아이템이 궁금하다면?!" name="" id="" />
								<a class="bt"><em></em></a>
							</span>
						</p>
					</form>
				</fieldset>
				<div class="search_list"> 
					<dl>
						<dt>최근검색어</dt>
						<dd><a href="">침대</a></dd>
						<dd><a href="">간이침대</a></dd>
						<dd><a href="">이층침대</a></dd>
						<dd><a href="">매트리스</a></dd>
						<dd><a href="">쇼파형침대</a></dd>
						<dd><a href="">침대 커버</a></dd>
						<!-- 최근 검색어 없을 경우 -->
						<!-- <dd><p>최근 검색어 내역이 없습니다.</p></dd> -->
						<!-- 최근 검색어 없을 경우 //-->
						<dd>
							<span class="btn size2 bgcolor8"><a>닫기</a></span>
						</dd>
					</dl>
				</div>
			</div>

			<!--header E-->
			<!--main S-->
			<main id="contents">
				<section class="contents colorContents">
					<!-- <span class="floating_btn_back"><a href="javascript:window.history.back();">이전 페이지로 바로가기</a></span>
					<h2 class="goods_detail"><span>상품상세정보</span></h2> --><!-- 2016-06-24 -->
					<div class="details_wrap">
						<!-- 상품이미지및플래그 -->
						<div class="details_img">
							<!-- 플래그 -->
							<div class="flag">
								<p class="circle lineCircle"><span class="valign"></span><span>삼성<em>10%</em></span></p>			
								<p class="circle lineCircle"><span class="valign"></span><span>무이자<em>12</em></span></p>	
								<p class="circle lineCircle"><span class="valign"></span><span>일시불</span></p>	
							</div>
							<!-- //플래그 -->
							<!-- 온에어 & 동영상 -->
							<div class="movie_wrap">
								<span class="onair"><em>ON AIR</em></span>
								<!-- <span class="movie"><a href="#">방송보기</a></span> --> <!--2018-02-14 방송보기 구버튼 삭제-->
							</div>
							<!-- //온에어 -->
							<!--2018-02-14 방송보기 신규버튼-->
							<a href="#" class="play_btn"></a>
							<!--//2018-02-14 방송보기 신규버튼-->
							<div id="img-swipe" class="imgSlide">
								<ul class="swipe-wrap">
									<li><img src="../../img/_tmp/041.jpg" alt="" /></li>
									<li><img src="../../img/_tmp/005_2.jpg" alt="" /></li>
									<li><img src="../../img/_tmp/005_3.jpg" alt="" /></li>
									<li><img src="../../img/_tmp/005_2.jpg" alt="" /></li>
									<li><img src="../../img/_tmp/005_1.jpg" alt="" /></li>
								</ul>
							</div>
							<p id="swipe-circle" class="slideCircle">
								<a data-slide-index="0" class="active">0</a>
								<a data-slide-index="1">1</a>
								<a data-slide-index="2">2</a>
								<a data-slide-index="3">3</a>
								<a data-slide-index="4">4</a>
							</p>
							
						</div>
						<!-- //상품이미지및플래그 -->

						<!-- 상품정보 -->						
						<div class="goodsName">
							<!-- <span>[상품번호 : 10001301] </span> --><!--상품번호삭제-->
							<p>2016년형 부라더미싱 신모델 t-3125 [1만원 인하] [BSW파티와이드그릴</p>
						</div>
						<div class="priceInfo">
							<!-- 201806 가격정책 start -->
							<!-- 가격노출1 -->
							<div class="priceInfoIn">
								<span class="discount">10%</span>
								<div class="price_detail">
									<div class="price01">10,796,000원</div>
									<div class="price02">
										<span class="price_text01">10,766,000</span><span class="unit">원</span>
										<span class="price_text02">(1,268,000원 할인)</span>
										<span class="btn_detail02"><a href="#"></a></span>
									</div>
								</div>
							</div>
							<!-- 가격노출2 -->
							<div class="priceInfoIn">
								<span class="price_shop01">쇼핑엔티가</span>
								<div class="price_detail">
									<div class="price01">10,796,000원</div>
									<div class="price02">
										<span class="price_text01">10,766,000</span><span class="unit">원</span>
										<span class="price_text02">(1,268,000원 할인)</span>
										<span class="btn_detail02"><a href="#"></a></span>
									</div>
								</div>
							</div>
							<!-- 가격노출3 -->
							<div class="priceInfoIn">
								<span class="price_shop02">쇼핑엔티가</span>
								<div class="price_detail">
									<div class="price02">
										<span class="price_text01">10,766,000</span><span class="unit">원</span>
									</div>
								</div>
							</div>
							<!-- //201806 가격정책 end -->
							<div class="discount_detail">
								<dl>
									<dt>쿠폰사용 (쿠폰 사용시)</dt>
									<dd>
										<span class="price">269,000원</span>
									</dd>
								</dl>
								<dl>
									<dt>일시불할인(일시불 결제시)</dt>
									<dd>
										<span class="price">269,000원</span>
									</dd>
								</dl>
								<dl>
									<dt>청구할인 (삼성카드 사용시)</dt>
									<dd>
										<span class="price">269,000원</span>
									</dd>
								</dl>
							</div>
							<div class="counselask">상담 전용 상품입니다.</div>
							<div class="counselask">판매일시 품절 된 상품입니다</div>
							<div class="counselask">판매 종료 된 상품입니다</div>
						</div>

						<div class="details_info">
							<ul class="details_list">
								<li><p class="desc"><span>카드무이자</span>비씨/국민/외환/삼성/신한/현대/롯데/농협/하나은행 <br />카드 <em>최대 5개월 무이자</em></p></li>	
								<li>
									<p class="desc">
										<span>카드할인혜택</span>
										<p>국민카드 <em>5%</em> 할인, 신한카드 <em>5%</em> 할인</p>
									</p>
								</li>
								<li><p class="desc"><span>적립혜택</span>적립금<em>100원</em></p></li>
								<li><p class="desc"><span>배송정보</span><em>무료배송</em></p></li>
							</ul>							
						</div>						
						<!-- //상품정보 -->
					</div>

					<!-- 사은품 -->
					<div class="giftInfo">
						<dl>
							<dt><span>사은품 증정안내</span></dt>
							<dd>
								<ul class="details_list">
									<li><p class="desc"><span>사은행사</span>모든 구매 고객께 드리는 무료 사은품</p></li>
									<li><p class="desc"><span>사은품</span>파우치(블랙,화이트,레드)</p></li>
									<li><p class="desc"><span>증정기간</span>2014.10.16 ~ 2014.10. 19<br />(본 사은품은 조기에 품절될 수 있습니다.)</p></li>
								</ul>
								<ul class="giftImg">
									<li>
										<span><img src="../../img/_tmp/005_1.jpg" alt="" /></span>
										<p>따끈따끈 신상 파우치 (블랙, 화이상 파우치 (블랙, 화이트,레드 색상 중 랜덤발솔)</p>

										<em>수량 : <u>1</u>개</em>
									</li>
								</ul>
							</dd>
						</dl>
					</div>
					<!-- //사은품 -->
					
					<div class="sns_wrap">
						<ul>
							<li class="sns"><em></em>문자</li>
							<li class="sns cctalk"><em></em>카카오톡</li>
							<li class="sns ccstory"><em></em>카카오스토리</li>
							<li class="sns facebook"><em></em>페이스북</li>
						</ul>
					</div>

					<!-- 롤링배너 -->
					<div class="rollBan_wrap">
						<div class="rollBan">
							<div class="slideZone">
								<div id="ban-slide" class="imgSlide">
									<ul class="BannerList swipe-wrap" >
										<li><a href="#"><img src="../../img/_tmp/010_3.jpg" alt=""></a></li> 
										<li><a href="#"><img src="../../img/_tmp/010_3.jpg" alt=""></a></li> 
										<li><a href="#"><img src="../../img/_tmp/010_3.jpg" alt=""></a></li> 
									</ul>
								</div>
							</div>
							<p id="ban-circle" class="slideCircle">
								<a data-slide-index="0" class="active">0</a>
								<a data-slide-index="1">1</a>
								<a data-slide-index="2">2</a>
							</p>
						</div>
					</div>
					<!-- //롤링배너 -->

					<div class="details_wrap">
						<div class="toggleView">
												
							<!-- tab -->
							<div class="screentop_wrap goods_tap">
								<ul class="tab_group tab_detail ui-tab-btns">
									<li><a class="" data-tab-target="detail_tab1">상품정보</a></li>
									<li><a class="" data-tab-target="detail_tab2">기본정보</a></li>
									<li><a class="current" data-tab-target="detail_tab3">상품평<span class="num">999</span></a></li>
									<li><a class="" data-tab-target="detail_tab4">Q&amp;A<span class="num">999</span></a></li>
								</ul>
							</div>
							<!-- /tab --> 		
												
							<!-- 최외각 div -->
							<div id="detail_tab1" class="ui-tab-content goodsinfo" style="display:none;">
								<!-- nodata
								<p class="list_nodata">상품정보 준비 중입니다.</p>
								-->
								<!-- 상품정보 -->
								<div class="tooggle_box active">
									<div class="toggle_tit ui-accordion-btn ui-evt-bound">
										<p>상품설명<em></em></p>
									</div>
									<div class="toggle_con">
										<span class="floating_btn_zoom"><a href="#">이미지 확대보기</a></span>
										<div class="video_area">
											<!--2018-02-07 추가-->
											<!--소스 삽입 영역-->
										</div> 
										<div class="goods_image"><img src="../../img/_tmp/004.jpg" alt="" /></div>
									</div>
								</div>
								<!-- //상품정보 -->
							</div>
							<!-- /최외각 div -->

							<!-- 2015-05-06 최외각 div 추가 -->
							<div id="detail_tab2" class="ui-tab-content basicinfo" style="display:none;">
								<!-- 상품고시정보 -->
								<div class="tooggle_box active">
									<div class="toggle_tit number_code">	
										<p><span class="bold">상품코드</span> <span>10008257</span></p>
									</div>
									<div class="toggle_tit ui-accordion-btn">
										<p>상품고시정보<em></em></p>
									</div>
									<div class="toggle_con">
										<div class="toggle_con_padding">
											<ul class="listtype1">
												<li><em>종류</em>미니 파우치</li>
												<li><em>소재</em>타폴린(PVC)</li>
												<li><em>치수</em>14.5(가로) × 10(세로) × 4.5 cm</li>
												<li><em>제조자(수입여부)</em>N/리블랭크</li>
												<li><em>제조국</em>한국취급시</li>
												<li><em>주의사항</em>칼 같은 날카로운 도구를 주의해 주세요.오염이 묻었을 경우 비눗물로 부드럽게 닦아주세요.</li>
												<li><em>품질보증기준</em>제품에 하자가 있을 시 1주일 이내 반품 및 교환이 가능합니다.</li>
												<li><em>A/S 책임자/소비자상담 전화번호</em>고객센터 080-130-1010</li>
											</ul>
											
										</div>
									</div>
								</div>
								<!-- //상품고시정보 -->
								<!-- 배송정보 -->
								<div class="tooggle_box">
									<div class="toggle_tit ui-accordion-btn">
										<p>배송정보<em></em></p>
									</div>
									<div class="toggle_con">
										<div class="toggle_con_padding">
																						
											<div class="asinput">
												도서지역(제주 등)을 제외하고는 전국 어느 곳이나 배송료가 무료입니다.<br />
												배송은 결제확인 후 1일~4일이며, 배송조회에서 배송현황을 확인하실 수 있습니다.<br />
												공휴일, 기타 휴무일에는 배송되지 않으며, 온라인 송금을 하신 경우에는 입금확인 당일부터 배송기간에 포함합니다.<br />
												천재지변에 의한 기간은 배송기간에서 제외합니다.<br />
												입금확인 후 배송하며, 카드결제로 하신 경우에는((주)크라클 팩토리) 에서 확인하는 대로 배송을 합니다.<br />
												상품은 주문일로부터 3~4일 이내에 배달하는 것을 원칙적으로 하고 있으며, 도서지역은 3~10일 정도 걸립니다.<br />
												공정거래위원회 고시(소비자분쟁해결기준)에 의거하여 보상해 드립니다.<br />
											</div>
												
										</div>
									</div>
								</div>
								<!-- //배송정보 -->
								<!-- 취소/반품/AS안내 -->
								<div class="tooggle_box">
									<div class="toggle_tit ui-accordion-btn">
										<p>취소/반품/AS안내<em>&nbsp;</em></p>
									</div>
									<div class="toggle_con">
										<div class="toggle_con_padding">
											
											<div class="asinput">
												구매자 사정으로 교환이나 환불을 할 경우 왕복 배송료는 구매자 부담이며, 상품에 이상이 있거나 잘못 배송이 된 경우에는 왕복 배송료를 판매자가 부담합니다.<br />
												고객센터 : 080-130-1010 (평일 09~18시, 주말 공휴일 제외)<br />
												메일문의 : help@idigitalhomeshopping.com
											</div>
											
										</div>
									</div>
								</div>
								<!-- //취소/반품/AS안내 -->
							
							</div>
							<!-- /2015-05-06 최외각 div 추가 -->
							
							<!-- 2015-05-06 최외각 div 추가 -->
							<div id="detail_tab3" class="ui-tab-content reviews" style="display:block;">
							
								<!-- 상품후기 -->
								<div class="tooggle_box">
									<div class="toggle_con">
										
										<!--상품평 작성 new 버전-->
										<div class="goods_review">
											<div class="goods_re_banner">
												<a href="#"><img src="../../img/_tmp/review_banner.jpg" alt="" width="100%"/></a>
											</div>
											<div class="goods_re_grade">
												<a href="#" class="btn_review"><span>상품평 작성하기</span></a>
												<div class="grade_number">
													<span class="review_num"><strong>92</strong><em>100</em></span>
													<span class="review_star"><em style="width:92%;"></em></span>
												</div>
												<div class="grade_list">
													<ul>
														<li> 
															<span class="g_tit">품질</span>
															<span class="star_s">
																<span class="review_star"><em style="width:92%;"></em></span>
															</span>
														</li>
														<li>
															<span class="g_tit">배송</span> 
															<span class="star_s">
																<span class="review_star"><em style="width:92%;"></em></span>
															</span>
														</li>
														<li>
															<span class="g_tit">가격</span>
															<span class="star_s">
																<span class="review_star"><em style="width:92%;"></em></span>
															</span>
														</li>
														<li> 
															<span class="g_tit">만족도</span>
															<span class="star_s">
																<span class="review_star"><em style="width:92%;"></em></span>
															</span>
														</li>
													</ul>
												</div>
											</div>
											<div class="goods_re_detail">
												<div class="tab_wrap">
													<div class="tab_btn">
														<a href="#tab1" class="on">전체 상품평 <em>2,001</em></a>
														<a href="#tab2">베스트 상품평 <em>19</em></a>
													</div>
													<div class="tab_cont">
														<div id="tab1" class="cont_detail">
															<!--상품평 없을 시-->
															<div class="no_list">
																<p>작성한 상품평이 없습니다.</p>
															</div>
															<!--//상품평 없을 시-->
															<div class="align_list">
																<a href="#" class="on">최신순</a>
																<a href="#">높은 별점순</a>
																<a href="#">낮은 별점순</a>
															</div>
															<div class="review_list">
																<ul>
																	<li>
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
																		<div class="goods_name">[옵션] 8. 블루원피스 4종</div>
																		<div class="goods_comment">
																			제가 키가 작아서 그런가 그리 잘 어울리지는 않아요 
																		</div>
																		<div class="user_info">
																			<span class="id_name">ID********</span>
																			<span class="date">2018.04.02</span>
																		</div>
																	</li>
																	<li>
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
																		<div class="goods_name">[옵션] 8. 블루원피스 4종</div>
																		<div class="goods_comment">
																			제가 키가 작아서 그런가 그리 잘 어울리지는 않아요 그래도 
																			저렴하니까 유행이니 한계절 입기에는~
																			166/44마른체형 가격할인이라 베이지,네이비 두컬러 구입했습
																			니다. 네이비는 시크~베이지는 세련된 느낌입니다. 
																			두컬러 다맘에듭니다. 소재의 느낌도 좋고 구김도 멋스럽네요
																			오늘 네이비를 먼저 입고 외출.지금 입기 딱좋아~
																		</div>
																		<div class="user_info">
																			<span class="id_name">ID********</span>
																			<span class="date">2018.04.02</span>
																		</div>
																	</li>
																	<li>
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
																		<div class="goods_name">[옵션] 8. 블루원피스 4종</div>
																		<div class="goods_comment">
																			제가 키가 작아서 그런가 그리 잘 어울리지는 않아요 그래도 저렴하니까 유행이니 한계절 입기에는~
																		</div>
																		<div class="user_info">
																			<span class="id_name">ID********</span><span class="date">2018.04.02</span>
																		</div>
																	</li>
																	<li>
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
																		<div class="goods_name">[옵션] 8. 블루원피스 4종</div>
																		<div class="goods_comment">
																			제가 키가 작아서 그런가 그리 잘 어울리지는 않아요 
																		</div>
																		<div class="user_info">
																			<span class="id_name">ID********</span>
																			<span class="date">2018.04.02</span>
																		</div>
																	</li>
																</ul>
																<a href="#" class="more_view">20개 더보기</a>
															</div>
														</div>
														<div id="tab2" class="cont_detail">
															<!--베스트 상품평 없을 시-->
															<div class="no_list">
																<p>베스트 상품평이 없습니다.</p>
															</div>
															<!--//베스트 상품평 없을 시-->
															<div class="align_list">
																<a href="#" class="on">최신순</a>
																<a href="#">높은 별점순</a>
																<a href="#">낮은 별점순</a>
															</div>
															<div class="review_list">
																<ul>
																	<li>
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
																		<div class="goods_photo">
																			<ul class="swiper-wrapper">
																				<li class="swiper-slide"><a href="goods_zoom.jsp"><img src="../../img/_tmp/@temp_photo01.jpg" alt=""/></a></li>
																				<li class="swiper-slide"><a href="goods_zoom.jsp"><img src="../../img/_tmp/@temp_photo02.jpg" alt=""/></a></li>		
																			</ul>
																			<div class="swiper_indi">
																				<div class="swiper-pagination"></div>
																				<div class="swiper-button-next"></div>
																				<div class="swiper-button-prev"></div>	
																			</div>	
																		</div>
																		<div class="goods_name">[옵션] 8. 블루원피스 4종</div>
																		<div class="goods_comment">
																			제가 키가 작아서 그런가 그리 잘 어울리지는 않아요 
																		</div>
																		<div class="user_info">
																			<span class="id_name">ID********</span>
																			<span class="date">2018.04.02</span>
																		</div>
																	</li>
																	<li>
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
																		<div class="goods_name">[옵션] 8. 블루원피스 4종</div>
																		<div class="goods_comment">
																			제가 키가 작아서 그런가 그리 잘 어울리지는 않아요 
																		</div>
																		<div class="user_info">
																			<span class="id_name">ID********</span>
																			<span class="date">2018.04.02</span>
																		</div>
																	</li>
																</ul>
																<a href="#" class="more_view">20개 더보기</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="goods_re_grade">
												<a href="#" class="btn_review"><span>상품평 작성하기</span></a>
											</div>
											<div class="goods_re_banner">
												<a href="#"><img src="../../img/_tmp/review_banner.jpg" alt="" width="100%"/></a>
											</div>
										</div>
										<!--//상품평 작성 new 버전-->
									</div>
								</div>
								<!-- //상품후기 -->	
							
							</div>
							<!-- /2015-05-06 최외각 div 추가 -->
							
							<!-- 2015-05-06 최외각 div 추가 -->
							<div id="detail_tab4" class="ui-tab-content qnas" style="display:none;">
							
								<!-- 상품Q&A -->
								<div class="tooggle_box">
									<div class="toggle_tit ui-accordion-btn">
										<p>상품Q&amp;A <span class="count">(99)</span><em>&nbsp;</em></p>
									</div>
									<div class="toggle_con">
									
										<!-- QnA list -->
										<div class="qnaList" style="display:block;">										
											<!-- 2015-05-06 수정, 추가 -->
											<div class="qnahead">
												<p>상품에 대한 궁금한 점을 문의하시면 <span class="ib">답변해드립니다.</span></p>
												<span class="btn size2 bgcolor1"><a>상품문의하기</a></span>
											</div>
											<!-- /2015-05-06 수정, 추가 -->											
											<!-- nodata -->
											<p class="list_nodata">등록된 게시물이 없습니다.</p>
											<!-- /nodata -->											
											<div class="question_list">
												<div class="cw_qna_case">
													<div class="question_tit ui-accordion-btn">
														<p>일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십</p>
														<span class="status">2014.10.31<em>|</em>Frank19**</span>
														<span class="status_inline"><em class="answer complete">답변완료</em></span>
													</div>
													<div class="answer_con">
														<dl>
															<dt><em>Q</em>언제재입고되나요?언제재입고되나요?고객님9월3일재입고됩니다.감사합니다.안녕하세요.고객님9월3일재입고됩니다.감사합니다.안녕하세요.고객님9월3일재입고됩니다.감사합니다.안녕하세요.고객님9월3일재입고됩니다.감사합니다.</dd>
														</dl>
													</div>
												</div>
												<div class="cw_qna_case">
													<div class="question_tit ui-accordion-btn"><!-- 2015-05-06 class 삭제 -->
														<span class="status_secert"><em>비밀글</em></span>
														<p>일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십</p>
														<span class="status">2014.10.31<em>|</em>Frank19**</span>
														<span class="status_inline"><em class="answer complete">답변완료</em></span>
													</div>
													<div class="answer_con">
														<dl>
															<dt><em>Q</em>언제 재입고 되나요?</dt>
															<dd><em>A</em>안녕하세요.고객님9월3일재입고됩니다.감사합니다.안녕하세요.</dd>
														</dl>
													</div>
												</div>
												<div class="cw_qna_case">
													<div class="question_tit ui-accordion-btn">
														<span class="status_secert"><em>비밀글</em></span>
														<p>일이삼사오육칠팔구십</p>
														<span class="status">2014.10.31<em>|</em>Frank19**</span>
														<span class="status_inline"><em class="answer waiting">답변대기</em></span>
													</div>
													<div class="answer_con">
														<dl>
															<dt><em>Q</em>언제 재입고 되나요?</dt>
														</dl>
															
														<div class="btns_wrap btn2">
															<span class="btn size2 bgcolor1"><a>수정</a></span>
															<span class="btn size2 bgcolor1"><a>삭제</a></span>
														</div>
														
													</div>
												</div>
											</div>
											
											<div class="btns_wrap">
												<span class="btn viewmore"><a href="#.">더보기</a></span>
											</div>
											
										</div>
										<!-- /QnA list -->
										
										<!-- QnA write -->
										<div class="qnaWrite" style="display:block">
											<form>
												<fieldset>
													<dl class="form_input">
														<dt>제목</dt>
														<dd>
															<span class="inputBox"><label for="subject"><input type="text" placeholder="제목을 30자 이내로 작성해 주세요." name="subject" tabindex="1" autocapitalize="off" /></label></span>
														</dd>
													</dl>													
													<dl class="form_input">
														<dt>문의사항</dt>
														<dd>														
															<div class="textarea1"><!-- 2015-05-02 수정 -->
																<textarea></textarea>
																<p class="placeholder ui-placeholder" style="display:block;">
																	<span>문의내용을 입력해 주세요 (500자 이내)</span>
																	문의사항에 등록하신 내용의 저작권은 쇼핑엔T에 있으며 등록된 내용이 해당 서비스에 적합하지 않을 경우, 관리자가 임의로 블라인드 처리 및 타 게시판으로 이관할 수 있습니다.
																</p>
															</div>														
														</dd>
														<dd>
															<span class="check">
																<input type="checkbox" id="qna_secret" name="secret" /><label for="qna_secret">비밀글</label>
															</span>
															<span class="check sms_receive">
																<input type="checkbox" id="sms_receive" checked="checked" /><label for="sms_receive">SMS 수신</label>
															</span>
														</dd>
													</dl>
													
													<p class="refer">* SMS미수신 시 답변 알림을 받으실 수 없습니다.</p>													
													<div class="btns_wrap btn2">
														<span class="btn size2 bgcolor2"><a>취소</a></span>
														<span class="btn size2 bgcolor4"><a>등록</a></span>
													</div>
																		
												</fieldset>
											</form>
										</div>
										<!-- /QnA write -->
										
									</div>
								</div>
								<!-- //상품Q&A -->
							
							</div>
							<!-- /2015-05-06 최외각 div 추가 -->
							
						</div>
					</div>
					
					<!-- 연관상품 -->
					<div class="goods_wrap relation_wrap">	
						<dl class="relation">
							<dt>연관 상품</dt>
							<dd>
								<!-- 상품 목록 -->
								<div class="goods_wrap">
									<!-- 갤러리형 -->
									<ul id="goodsImage" class="goods_image">
										<li>
											<div class="goods">
												<div class="goods_img">
													<img src="../../img/_tmp/006.jpg" alt="" />
												</div>
												<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
												<div class="goods_price">
													<p class="sell">
														<em class="st">판매가</em> <em class="price">1,090,000</em>원
													</p>
													<p class="sale">
														<em class="st"><i>쇼핑엔T가</i></em> <em class="price">980,900</em>원
													</p>
												</div>
											</div>
										</li>
										<li>
											<div class="goods">
												<div class="goods_img">
													<!-- 품절상품 표시 -->
													<p class="soldout"><span><em>일시품절</em></span></p>
													<!-- /품절상품 표시 -->
													<a ><img src="../../img/_tmp/007.jpg" alt="" /></a>
												</div>
												<div class="goods_name">무방부제 무발색제 2종</div>
												<div class="goods_price">
													<p class="counsel">상담 전용 상품입니다.</p>
												</div>												
											</div>
										</li>										
									</ul>
									<!-- /갤러리형 -->
								</div>
								<!-- /상품 목록 -->												
							</dd>
						</dl>						
					</div>
					<!-- //연관상품 -->


					
				</section>
				
			</main>
			<!--main E-->
			<!--footer S-->
			<%@ include file="/contents/2015_t/views/includefile/footer.jsp"%>
			<!--footer E-->
		</div><!-- end wrap_inner -->
	</div><!-- end wrap -->

	<%@ include file="/contents/2015_t/views/includefile/page_top.jsp"%>
	
	<!-- 옵션 및 주문연관 정보 -->
	<div class="dragUpBoxWrap ui-detail-option" style="display:block;">	
		
		<div class="optionWrap ui-detail-optbox" style="display:none;">
			<!-- 2015-05-07 최외각 div 추가 -->
			<div class="goodsoption">
				<!-- 2015-05-07 위치변경 -->
				<p class="dragBtn ui-detail-dragbtn"><a href="javascript:;">버튼</a></p>
				<!-- /2015-05-07 위치변경 -->
				<div class="option">
					<p class="selOPtion">
						<select>
							<option>옵션1 선택</option>
							<option>옵션2 선택</option>
						</select>
					</p>
				</div>			
				<div class="selected">
					<ul>						
						<li>
							<article class="sel_amount_only ui-stepper">
								<div>
									<span class="minus"><em>-</em></span>
									<p><input type="number" value="1" min="1" max="999" /></p>
									<span class="plus"><em>+</em></span>
								</div>							
							</article>
						</li>
						<li>
							<p class="sel_option">베이지/95</p>
							<article class="sel_amount ui-stepper">							
								<div>
									<span class="minus"><em>-</em></span>
									<p><input type="number" value="1" min="1" max="999" /></p>
									<span class="plus"><em>+</em></span>
								</div>							
								<span class="reset"><span class="btn del"><a>삭제</a></span></span>
							</article>
						</li>
						<li>
							<p class="sel_option">[옵션111111] 베이지베이지베이지베이지베이지/free</p>
							<article class="sel_amount ui-stepper">							
								<div>
									<span class="minus"><em>-</em></span>
									<p><input type="number" value="1" min="1" max="999" /></p>
									<span class="plus"><em>+</em></span>
								</div>							
								<span class="reset"><span class="btn del"><a>삭제</a></span></span>
							</article>
						</li>
					</ul>
				</div>
				<div class="priceSumInfo">
				<dl>
					<dt>총 주문금액</dt>
					<dd>
						<span class="price"><em>139,700</em>원</span>
					</dd>
				</dl>
			</div>
			</div>
			<!-- /2015-05-07 최외각 div 추가 -->			
		</div>
		<div class="buttonWrap ui-detail-btnbox">			

			<!-- 일반상품 -->
			<div class="btnZone">
			<!--<div class="btnZone fullwidth">--><!-- 간편결제일 경우 "fullwidth" 추가 -->
				<p class="square">
					<span class="btn iconed btn-wish"><a>위시리스트</a></span>
					<span class="btn iconed btn-cart" style="display:inline;"><a>장바구니</a></span>
					<span class="btn iconed btn-gocart" style="display:none;"><a>장바구니</a></span>
				</p>
				<div class="btns_wrap">
					<span class="btn btn-buy" style="display:inline;"><a>구매하기</a></span>
					<span class="btn btn-order" style="display:none;"><a>구매하기</a></span>
				</div>
			</div>
			<!-- /일반상품 -->

			<!-- 품절일 경우 -->
			<div class="btnZone btn_soldout">
			<!--<div class="btnZone btn_soldout fullwidth">--><!-- 간편결제일 경우 "fullwidth" 추가 -->
				<p class="square">
					<span class="btn iconed btn-wish"><a>위시리스트</a></span>
				</p>
				<div class="btns_wrap">
					<p>죄송합니다. 이 상품은 <span class="emp2">품절</span> 되었습니다.</p>
				</div>
			</div>
			<!-- /품절일 경우 -->

			<!-- 판매종료 경우 -->
			<div class="btnZone btn_end">
				<div class="btns_wrap">
					<p>죄송합니다. 이 상품은 <span class="emp2">판매종료</span> 되었습니다.</p>
				</div>
			</div>
			<!-- /판매종료 경우 -->	
			
			<!-- 방송알림 경우 -->
			<div class="btnZone btn_alarm">
			<!--<div class="btnZone btn_soldout fullwidth">--><!-- 간편결제일 경우 "fullwidth" 추가 -->
				<p class="square">
					<span class="btn iconed btn-alarm"><a>방송<br />알림</a></span>
				</p>
				<div class="btns_wrap">
					<p><span class="emp2">방송중에만 구매 가능한 상품입니다.</span></p>
				</div>
			</div>
			<!-- /방송알림 경우 -->

			<!-- 무형상품 -->
			<div class="btnZone btn_counsel">
			<!--<div class="btnZone btn_counsel fullwidth">--><!-- 간편결제일 경우 "fullwidth" 추가 -->
				<p class="square">
					<span class="btn iconed btn-wish"><a>위시리스트</a></span>
				</p>
				<div class="btns_wrap">
					<span class="btn counsel"><a>상담신청하기</a></span>
				</div>
			</div>
			<!-- /무형상품 -->	

			
		</div>
		
	</div>
	<!-- 옵션 및 주문연관 정보 -->

</div><!-- end container -->
<%@ include file="/contents/2015_t/views/includefile/scriptlink.jsp"%>
<script type="text/javascript">
$(window).load(function(){
	imgSlideList;
	var imgSlideList = jQuery('#img-swipe').find('.swipe-wrap').find('> li');
	if(imgSlideList.length > 1) {
		var imgSwipe = Swipe(document.getElementById('img-swipe'), {
			callback: function(index, elem){
				jQuery('#swipe-circle').find('a').eq(index).addClass('active').siblings().removeClass('active');
			},
			enable3d: !isGinger
		});
	};

	var eventSlideList = $('#ban-slide').find('.swipe-wrap').find('> li');
	var eventSwipe = Swipe(document.getElementById('ban-slide'), {
		callback: function(index, elem){
			$('#ban-circle').find('a').eq(index).addClass('active').siblings().removeClass('active');
		},
		auto: 10000
	});
	$('#ban-circle').find('a').each(function(idx){
		$(this).click(function(){ eventSwipe.slide(idx) });
	})
});
</script>
</body>
</html>
	