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
					<h2><span>1:1 문의하기</span></h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>1:1 문의하기</span></h2>
					</nav><!-- 2016-06-24 -->
					
					<div class="board"><!-- 2015-05-09 최외각 div 추가 -->
						
						<!-- 2015-05-09 수정 추가 -->
						<ul class="tab_group tabtype2 piece2 ui-tab-btns">
							<li><a class="current" data-tab-target="detail_tab1">1:1 문의하기</a></li>
							<li><a class="" data-tab-target="detail_tab2">나의 문의내역</a></li>
						</ul>
						<!-- /2015-05-09 수정 추가 -->
						
						<!--  1:1 문의하기 탭 -->
						<div id="detail_tab1" class="ui-tab-content"><!-- 2015-05-09 tab wrap div 추가 -->
						
							<div class="inquiryZone">
								<form>
									<fieldset>
										<ul class="form_input2">
											<li>
												<span class="inputBox"><label for="subject"><input type="text" placeholder="제목을 30자 이내로 작성해 주세요." name="subject" tabindex="1" autocapitalize="off" /></label></span>
											</li>
											<li>
												<div class="inquiryType_area">
													<select name="" tabindex="4">
									                      <option value="">문의 유형을 선택하세요.</option>
									                      <option value="">유형 1</option>
									                      <option value="">유형 2</option>
									                      <option value="">유형 3</option>
									                      <option value="">유형 4</option>
									                      <option value="">유형 5</option>
									                      <option value="">유형 6</option>
									                      <option value="">유형 7</option>
									                      <option value="">유형 8</option>
									                      <option value="">유형 9</option>
									                      <option value="">유형 10</option>
									                </select>
									                <!-- 2015-06-01 수정 -->
													<p>
														<span class="btn size2 bgcolor1" style="display:inline-block;"><a>주문상품 선택</a></span><!-- 2015-05-09 수정 -->
														<span class="btn size2 bgcolor1" style="display:none;"><a>주문상품 재조회</a></span><!-- 2015-05-09 수정 -->
													</p>
													<!-- /2015-06-01 수정 -->
												</div>
												<div class="inquiry_goods_list" style="display:block;">
													<div id="orderlist-list">
														<!-- loop -->
														<ul class="order_goods">
															<li>
																<div class="goods">
																	<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
																	<div class="goods_name">무방부제 무방부제 무방부제 무방부제 무방부제 무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
																	<!-- 상품가격 -->
																	<div class="goods_price">
																		<del><em>276,200</em>원</del>
																		<span><em>164,800</em>원</span>
																	</div>
																	<!-- //상품가격 -->
																	<p class="goods_select"><span class="btn size1 bgcolor1" ><a>선택</a></span></p><!-- 2015-05-09 수정 -->
																</div>
															</li>													
														</ul>
														<!-- /loop -->
														<ul class="order_goods">													
															<li>
																<div class="goods">
																	<p class="goods_img"><img src="../../img/_tmp/001.jpg" alt="" /></p>
																	<p class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</p>
																	<p class="goods_counsel">상담 전용 상품입니다.</p>
																	<p class="goods_select"><span class="btn size1 bgcolor1" ><a>선택</a></span></p><!-- 2015-06-01 수정 -->
																</div>
															</li>
														</ul>
													</div>
													<!-- 2015-05-09 수정 -->
													<div class="btns_wrap">
														<span class="btn viewmore"><a>더보기</a></span>
													</div>
													<!-- /2015-05-09 수정 -->			
												</div>
											</li>
											<li>											
												<div class="textarea1"><!-- 2015-05-09 수정 -->
													<textarea></textarea>
													<p class="placeholder ui-placeholder" style="display:block;">													
														궁금하신 사항을 문의하세요! (300자 이내)<br />
														문의주신 사항 확인 후 신속히 답변 드리겠습니다.													
													</p>
												</div>											
											</li>
											<li>
												<div class="alim_area">												
													<input type="checkbox" id="alim_sms" /><label for="alim_sms">SMS 답변알림</label>												
												</div>
												<div class="alim_regard">
													<p class="refer">* 답변등록 시 회원가입 시 입력하신 휴대전화번호로 알려드립니다.</p><!-- 2015-05-09 수정 -->
												</div>
											</li>
										</ul>
									</fieldset>
								</form>
								<!-- 2015-06-01 수정, 2015-05-09 수정 -->
								<div class="btns_wrap btn2">
									<span class="btn size2 bgcolor2"><a href="#">취소</a></span>
									<span class="btn size2 bgcolor4"><a>등록</a></span>
								</div>
								<!-- /2015-05-09 수정 -->
								<!-- 내역이 없을 경우 -->
								<div class="list_nodata">
									<p>등록된 게시물이 없습니다.</p>
								</div>
								<!-- //내역이 없을 경우 -->							
								
							</div>
						
						</div><!-- /2015-05-09 tab wrap div 추가 -->
						<!--  /1:1 문의하기 탭 -->
						
						<!--  나의 문의내역 탭 -->
						<div id="detail_tab2" class="ui-tab-content" style="display:none;"><!-- 2015-05-09 tab wrap div 추가 -->
					
							<div class="inquiryZone">
								<ul class="list">
									<!-- 2015-05-09 수정 -->
									<li>
										<div class="refer_con">
											<p class="type">[교환/반품/AS 문의]</p>
											<p class="title">상품 교환 시 배송료는 다시 내야 하나요?</p>											
										</div>
										<p class="date">2014.12.25</p>
										<p class="refer_status"><span class="answer complete">답변완료</span></p>
									</li>
									<!-- /2015-05-09 수정 -->
									<li>
										<div class="refer_con">
											<p class="type">[교환/반품/AS 문의]</p>
											<p class="title">상품 교환 시 배송료는 다시 내야 하나요?</p>											
										</div>
										<p class="date">2014.12.25</p>
										<p class="refer_status"><span class="answer waiting">답변대기</span></p>
									</li>
								</ul>
								<!-- 2015-05-09 수정 -->
								<div class="btns_wrap">
									<span class="btn viewmore"><a>더보기</a></span>
								</div>
								<!-- /2015-05-09 수정 -->
								<!-- 내역이 없을 경우 --><!-- 2015-05-09 수정 -->
								<div class="list_nodata">
									<p>등록된 게시물이 없습니다.</p>
								</div>
								<!-- //내역이 없을 경우 -->

							</div>

						</div><!-- /2015-05-09 tab wrap div 추가 -->					
						<!--  /나의 문의내역 탭 -->
						
					</div><!-- /2015-05-09 최외각 div 추가 -->
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