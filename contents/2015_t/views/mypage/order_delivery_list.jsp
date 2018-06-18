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
					<h2><span>주문/배송 현황</h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>주문/배송 현황</span></h2>
					</nav><!-- 2016-06-24 -->
					<div class="mypage_wrap orderlist"><!-- 2015-05-13 수정 -->
						<!-- 2015-05-12 수정 -->
						<ul class="tab_group tabtype2 piece4 ui-tab-btns-period ui-accordion-btn">
							<li><a class="current"><span>1개월</span></a></li>
							<li><a><span>3개월</span></a></li>
							<li><a><span>6개월</span></a></li>
							<li><a class="accordion_btn"><span>기간 조회</span></a></li>
						</ul>
						<!-- /2015-05-12 수정 -->
						
						<!-- tab1 -->
						<div id="detail_tab1" class="ui-tab-content" style="display:block;">
						
							<div class="result_wrap">
								<p class="count"><strong>건수</strong><span class="num">총 <em>23</em>건</span></p>
								<p class="period"><strong>기간</strong>2014. 9. 20 ~ 2014. 10. 19</p>
							</div>
							
							<div class="orderList_wrap">
							
								<!-- 내역이 없을 경우
								<p class="list_nodata">							
									주문 내역이 없습니다.<br />주문 이력이 있으시다면<br />기간을 길게 설정해 보세요.								
								</p>
								-->
								
								<!-- 비회원 조회 시
								<div class="tit head">
									<p><strong class="emp1">회원 가입하시면 더 많은 혜택을 얻게 됩니다!</strong></p>
								</div>
								 -->
								
								<dl class="order_list">
									<dt class="goods_order">
										<a>
											<span class="order_date">2015.05.12</span>
											<span class="order_num">[ 주문번호 <em>00000000000000</em> ]</span><!-- 2015-05-12 수정 -->
											<span class="go_detail">주문상세보기</span><!-- 2015-05-12 수정 -->
										</a>
									</dt><!-- /2015-05-12 추가 -->
									<!-- loop -->
									<dd class="goods_list">
										<div class="goods_state"><!-- 2015-05-12 위치변경, "case" 삭제 -->
											<span>주문접수</span>
											<!-- 
											<span>결제완료</span>
											<span>상품준비중</span>
											<span>배송중</span>
											<span>배송완료</span>
											<span>취소완료</span>
											<span>교환접수</span>
											<span>교환완료</span>
											<span>반품접수</span>
											<span>반품완료</span>
											-->
											<div class="btns_wrap"><!-- 2015-06-09 추가 -->
												<span class="btn size2 bgcolor1"><a>상담내용수정</a></span>
												<span class="btn size2 bgcolor1"><a>주문취소</a></span>
												<!--
												<span class="btn size2 bgcolor1"><a>주문취소</a></span>
												<span class="btn size2 bgcolor1"><a>배송조회</a></span>
												-->
												<!-- 취소/교환/환불 시
												<span class="btn size2 bgcolor1"><a>상세내역</a></span>
												-->
											</div>
										</div>
										<!-- 2015-06-01 수정, 2015-05-12 위치변경, 수정 -->
										<!-- buttons -->
										<div class="btns_wrap btn4">
											<span class="btn size2 bgcolor5"><a>상품평 작성</a></span>
											<span class="btn size2 bgcolor5"><a>교환</a></span>
											<span class="btn size2 bgcolor5"><a>반품</a></span>
											<span class="btn size2 bgcolor5"><a>1:1 문의</a></span>
										</div>
										<!--
										<div class="btns_wrap btn2">
											<span class="btn size2 bgcolor5"><a>교환</a></span>
											<span class="btn size2 bgcolor5"><a>반품</a></span>
										</div>									
										<div class="btns_wrap">
											<span class="btn fullwidth bgcolor5"><a>1:1 문의</a></span>
											<span class="btn fullwidth bgcolor5"><a>상담문의</a></span>
											<span class="btn fullwidth bgcolor5"><a>상품평 작성</a></span>
										</div>
										-->
										<!-- /2015-05-12 위치변경, 수정 -->
										<div class="btns_wrap">
											<!-- 비회원일 경우 : 2015-06-01 수정, 2015-05-12 추가
											<p class="desc iconed emp2">비회원께서 문의를 원할 경우, 고객센터로 전화 바랍니다.</p>
											<span class="btn fullwidth bgcolor5"><a>상담문의</a></span>
											-->
											<!--
											<span class="btn fullwidth bgcolor5"><a>상품평 작성</a></span>
											-->
										</div>
										<ul class="order_goods">
											<li>
												<div class="goods">
													<p class="goods_img"><img src="../../img/_tmp/005_1.jpg" alt=""></p>
													<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
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
														<span class="gift_option">[사은품 옵션 : 꽃무늬 유리]</span>
													</p>
												</div>
												<!-- /2015-05-12 수정 -->
												<!-- 2015-05-13 수정 -->
												<div class="goods_case">
													<ul class="tab_group piece3 tab_detail ui-tab-btns">
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">입금정보</a></li>
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">배송지변경</a></li>
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">옵션변경</a></li>
													</ul>												
													<!--
													<ul class="tab_group piece1 tab_detail ui-tab-btns">
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">옵션변경</a></li>
													</ul>
													<ul class="tab_group piece2 tab_detail ui-tab-btns">
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">입금정보</a></li>
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">옵션변경</a></li>
													</ul>												
													-->
													<!-- /2015-05-13 수정 -->
													<!-- 입금정보 -->
													<div class="case_con ui-tab-content" style="display:none;">
														<div class="method">
															<dl><!-- 2015-05-12 dt 삭제 -->
																<dd>
																	<!-- 2015-05-12 수정 -->
																	<ul>
																		<li><em>결제수단</em>신용카드</li>
																		<li><em>카드종류</em>KB카드</li>
																		<li><em>납부방식</em>일시불</li>
																		<li><em>결제수단</em>무통장입금</li>
																		<li><em>입금은행</em>국민은행</li>
																		<li><em>입금계좌번호</em>1234567891111</li>
																		<li><em>입금기한</em>015년 10월 20일까지</li>
																	</ul>
																	<!-- /2015-05-12 수정 -->
																</dd>
															</dl>
														</div>
													</div>
													<!-- //입금정보 -->
													<!-- 배송지변경 -->
													<div class="case_con ui-tab-content" style="display: none;">
														<div class="delivery">
															<dl>
																<dt>현재 주소</dt>
																<dd>
																	<p class="sel_addr">부산광역시 금정구 장전동 산 30번지 부산대학교 의과대학 대학원 예방의학전공 123동 123호</p>
																</dd>
																<dt>변경 주소 선택</dt><!-- 2015-05-13 수정 -->
																<dd>
																	<div class="change_addr">
																		<select>
																			<option>주소1 선택</option>
																			<option>주소2 선택</option>
																		</select>
																		<span class="btn size2 bgcolor1"><a>신규 주소 입력</a></span><!-- 2015-05-13 띄어쓰기 수정 -->
																	</div>
																</dd>
																<!-- 2015-05-13 수정 -->
																<dt>받을 배송지</dt>
																<dd>
																	<p class="sel_addr">부산광역시 금정구 장전동 산 30번지 부산대학교 의과대학 대학원 예방의학전공 123동 123호</p>
																</dd>
																<!-- 2015-05-13 수정 -->
															</dl>
															<!-- 2015-05-12 수정 -->
															<div class="btns_wrap btn2">
																<span class="btn size2 bgcolor2"><a>취소</a></span>
																<span class="btn size2 bgcolor4"><a>변경</a></span><!-- 2015-06-01 수정 -->
															</div>
															<!-- /2015-05-12 수정 -->
														</div>
													</div>
													<!-- //배송지변경 -->
													<!-- 옵션변경 -->
													<div class="case_con ui-tab-content" style="display: none;">
														<div class="option">
															<dl>
																<dt>현재 옵션</dt>
																<dd>
																	<p class="sel_option">01 클래식 화이트 바다를 품은 육포 2BOX /2개</p>
																	<p class="selOPtion" style="display:block;">
																		<select class="selOPtion">
																			<option>옵션 선택</option>
																			<option></option>
																		</select>
																	</p>
																</dd>
															</dl>
															<!-- 2015-05-12 수정 -->
															<div class="btns_wrap btn2">
																<span class="btn size2 bgcolor2"><a>취소</a></span>
																<span class="btn size2 bgcolor4"><a>변경</a></span><!-- 2015-06-01 수정 -->
															</div>
															<!-- /2015-05-12 수정 -->
														</div>
													</div>
													<!-- //옵션변경 -->
												</div>
											</li>
										</ul>										
									</dd>
									<!-- /loop -->	
									
									<!-- loop -->
									<dd class="goods_list">
										<div class="goods_state"><!-- 2015-05-12 위치변경, "case" 삭제 -->
											<span>주문접수</span>
											<!-- 
											<span>결제완료</span>
											<span>상품준비중</span>
											<span>배송중</span>
											<span>배송완료</span>
											<span>취소완료</span>
											<span>교환접수</span>
											<span>교환완료</span>
											<span>반품접수</span>
											<span>반품완료</span>
											-->
											<div class="btns_wrap"><!-- 2015-06-09 추가 -->
												<span class="btn size2 bgcolor1"><a>상담내용수정</a></span>
												<span class="btn size2 bgcolor1"><a>주문취소</a></span>
												<!--
												<span class="btn size2 bgcolor1"><a>주문취소</a></span>
												<span class="btn size2 bgcolor1"><a>배송조회</a></span>
												-->
												<!-- 취소/교환/환불 시
												<span class="btn size2 bgcolor1"><a>상세내역</a></span>
												-->
											</div>
										</div>
										<!-- 2015-06-01 수정, 2015-05-12 위치변경, 수정 -->
										<!-- buttons -->
										<div class="btns_wrap btn4">
											<span class="btn size2 bgcolor5"><a>상품평 작성</a></span>
											<span class="btn size2 bgcolor5"><a>교환</a></span>
											<span class="btn size2 bgcolor5"><a>반품</a></span>
											<span class="btn size2 bgcolor5"><a>1:1 문의</a></span>
										</div>
										<!--
										<div class="btns_wrap btn2">
											<span class="btn size2 bgcolor5"><a>교환</a></span>
											<span class="btn size2 bgcolor5"><a>반품</a></span>
										</div>									
										<div class="btns_wrap">
											<span class="btn fullwidth bgcolor5"><a>1:1 문의</a></span>
											<span class="btn fullwidth bgcolor5"><a>상담문의</a></span>
											<span class="btn fullwidth bgcolor5"><a>상품평 작성</a></span>
										</div>
										-->
										<!-- /2015-05-12 위치변경, 수정 -->
										<div class="btns_wrap">
											<!-- 비회원일 경우 : 2015-06-01 수정, 2015-05-12 추가
											<p class="desc iconed emp2">비회원께서 문의를 원할 경우, 고객센터로 전화 바랍니다.</p>
											<span class="btn fullwidth bgcolor5"><a>상담문의</a></span>
											-->
											<!--
											<span class="btn fullwidth bgcolor5"><a>상품평 작성</a></span>
											-->
										</div>
										<ul class="order_goods">
											<li>
												<div class="goods">
													<p class="goods_img"><img src="../../img/_tmp/005_1.jpg" alt=""></p>
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
														<span class="gift_option">[사은품 옵션 : 꽃무늬 유리]</span>
													</p>
												</div>
												<!-- /2015-05-12 수정 -->
												<!-- 2015-05-13 수정 -->
												<div class="goods_case">
													<ul class="tab_group piece3 tab_detail ui-tab-btns">
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">입금정보</a></li>
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">배송지변경</a></li>
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">옵션변경</a></li>
													</ul>												
													<!--
													<ul class="tab_group piece1 tab_detail ui-tab-btns">
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">옵션변경</a></li>
													</ul>
													<ul class="tab_group piece2 tab_detail ui-tab-btns">
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">입금정보</a></li>
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">옵션변경</a></li>
													</ul>												
													-->
													<!-- /2015-05-13 수정 -->
													<!-- 입금정보 -->
													<div class="case_con ui-tab-content" style="display:none;">
														<div class="method">
															<dl><!-- 2015-05-12 dt 삭제 -->
																<dd>
																	<!-- 2015-05-12 수정 -->
																	<ul>
																		<li><em>결제수단</em>신용카드</li>
																		<li><em>카드종류</em>KB카드</li>
																		<li><em>납부방식</em>일시불</li>
																		<li><em>결제수단</em>무통장입금</li>
																		<li><em>입금은행</em>국민은행</li>
																		<li><em>입금계좌번호</em>1234567891111</li>
																		<li><em>입금기한</em>015년 10월 20일까지</li>
																	</ul>
																	<!-- /2015-05-12 수정 -->
																</dd>
															</dl>
														</div>
													</div>
													<!-- //입금정보 -->
													<!-- 배송지변경 -->
													<div class="case_con ui-tab-content" style="display: none;">
														<div class="delivery">
															<dl>
																<dt>현재 주소</dt>
																<dd>
																	<p class="sel_addr">부산광역시 금정구 장전동 산 30번지 부산대학교 의과대학 대학원 예방의학전공 123동 123호</p>
																</dd>
																<dt>변경 주소 선택</dt><!-- 2015-05-13 수정 -->
																<dd>
																	<div class="change_addr">
																		<select>
																			<option>주소1 선택</option>
																			<option>주소2 선택</option>
																		</select>
																		<span class="btn size2 bgcolor1"><a>신규 주소 입력</a></span><!-- 2015-05-13 띄어쓰기 수정 -->
																	</div>
																</dd>
																<!-- 2015-05-13 수정 -->
																<dt>받을 배송지</dt>
																<dd>
																	<p class="sel_addr">부산광역시 금정구 장전동 산 30번지 부산대학교 의과대학 대학원 예방의학전공 123동 123호</p>
																</dd>
																<!-- 2015-05-13 수정 -->
															</dl>
															<!-- 2015-05-12 수정 -->
															<div class="btns_wrap btn2">
																<span class="btn size2 bgcolor2"><a>취소</a></span>
																<span class="btn size2 bgcolor4"><a>변경</a></span><!-- 2015-06-01 수정 -->
															</div>
															<!-- /2015-05-12 수정 -->
														</div>
													</div>
													<!-- //배송지변경 -->
													<!-- 옵션변경 -->
													<div class="case_con ui-tab-content" style="display: none;">
														<div class="option">
															<dl>
																<dt>현재 옵션</dt>
																<dd>
																	<p class="sel_option">01 클래식 화이트 바다를 품은 육포 2BOX /2개</p>
																	<p class="selOPtion" style="display:block;">
																		<select class="selOPtion">
																			<option>옵션 선택</option>
																			<option></option>
																		</select>
																	</p>
																</dd>
															</dl>
															<!-- 2015-05-12 수정 -->
															<div class="btns_wrap btn2">
																<span class="btn size2 bgcolor2"><a>취소</a></span>
																<span class="btn size2 bgcolor4"><a>변경</a></span><!-- 2015-06-01 수정 -->
															</div>
															<!-- /2015-05-12 수정 -->
														</div>
													</div>
													<!-- //옵션변경 -->
												</div>
											</li>
										</ul>										
									</dd>
									<!--/loop-->
								</dl>								
								<!-- 2015-05-12 수정 -->
								<dl class="order_list">
									<dt class="goods_order">
										<a>
											<span class="order_date">2015.05.12</span>
											<span class="order_num">[ 주문번호 <em>00000000000000</em> ]</span><!-- 2015-05-12 수정 -->
											<span class="go_detail">주문상세보기</span><!-- 2015-05-12 수정 -->
										</a>
									</dt><!-- /2015-05-12 추가 -->
									<dd class="goods_list">									
										<div class="goods_state"><!-- 2015-05-12 위치변경, "case" 삭제 -->
											<span>주문접수</span>
											<!-- 
											<span>결제완료</span>
											<span>상품준비중</span>
											<span>배송중</span>
											<span>배송완료</span>
											<span>취소완료</span>
											<span>교환접수</span>
											<span>교환완료</span>
											<span>반품접수</span>
											<span>반품완료</span>
											-->
											<div class="btns_wrap"><!-- 2015-06-09 추가 -->
												<span class="btn size2 bgcolor1"><a>상담내용수정</a></span>
												<span class="btn size2 bgcolor1"><a>주문취소</a></span>
												<!--
												<span class="btn size2 bgcolor1"><a>주문취소</a></span>
												<span class="btn size2 bgcolor1"><a>배송조회</a></span>
												-->
												<!-- 취소/교환/환불 시
												<span class="btn size2 bgcolor1"><a>상세내역</a></span>
												-->
											</div>
										</div>
										<!-- 2015-06-01 수정, 2015-05-12 위치변경, 수정 -->
										<!-- buttons -->
										<div class="btns_wrap btn4">
											<span class="btn size2 bgcolor5"><a>상품평 작성</a></span>
											<span class="btn size2 bgcolor5"><a>교환</a></span>
											<span class="btn size2 bgcolor5"><a>반품</a></span>
											<span class="btn size2 bgcolor5"><a>1:1 문의</a></span>
										</div>
										<!--
										<div class="btns_wrap btn2">
											<span class="btn size2 bgcolor5"><a>교환</a></span>
											<span class="btn size2 bgcolor5"><a>반품</a></span>
										</div>									
										<div class="btns_wrap">
											<span class="btn fullwidth bgcolor5"><a>1:1 문의</a></span>
											<span class="btn fullwidth bgcolor5"><a>상담문의</a></span>
											<span class="btn fullwidth bgcolor5"><a>상품평 작성</a></span>
										</div>
										-->
										<!-- /2015-05-12 위치변경, 수정 -->
										<div class="btns_wrap">
											<!-- 비회원일 경우 : 2015-06-01 수정, 2015-05-12 추가
											<p class="desc iconed emp2">비회원께서 문의를 원할 경우, 고객센터로 전화 바랍니다.</p>
											<span class="btn fullwidth bgcolor5"><a>상담문의</a></span>
											-->
											<!--
											<span class="btn fullwidth bgcolor5"><a>상품평 작성</a></span>
											-->
										</div>
										<ul class="order_goods">
											<li>
												<div class="goods">
													<p class="goods_img"><img src="../../img/_tmp/005_1.jpg" alt=""></p>
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
														<span class="gift_option">[사은품 옵션 : 꽃무늬 유리]</span>
													</p>
												</div>
												<!-- /2015-05-12 수정 -->
												<!-- 2015-05-13 수정 -->
												<div class="goods_case">
													<ul class="tab_group piece3 tab_detail ui-tab-btns">
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">입금정보</a></li>
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">배송지변경</a></li>
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">옵션변경</a></li>
													</ul>												
													<!--
													<ul class="tab_group piece1 tab_detail ui-tab-btns">
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">옵션변경</a></li>
													</ul>
													<ul class="tab_group piece2 tab_detail ui-tab-btns">
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">입금정보</a></li>
														<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">옵션변경</a></li>
													</ul>												
													-->
													<!-- /2015-05-13 수정 -->
													<!-- 입금정보 -->
													<div class="case_con ui-tab-content" style="display:none;">
														<div class="method">
															<dl><!-- 2015-05-12 dt 삭제 -->
																<dd>
																	<!-- 2015-05-12 수정 -->
																	<ul>
																		<li><em>결제수단</em>신용카드</li>
																		<li><em>카드종류</em>KB카드</li>
																		<li><em>납부방식</em>일시불</li>
																		<li><em>결제수단</em>무통장입금</li>
																		<li><em>입금은행</em>국민은행</li>
																		<li><em>입금계좌번호</em>1234567891111</li>
																		<li><em>입금기한</em>015년 10월 20일까지</li>
																	</ul>
																	<!-- /2015-05-12 수정 -->
																</dd>
															</dl>
														</div>
													</div>
													<!-- //입금정보 -->
													<!-- 배송지변경 -->
													<div class="case_con ui-tab-content" style="display: none;">
														<div class="delivery">
															<dl>
																<dt>현재 주소</dt>
																<dd>
																	<p class="sel_addr">부산광역시 금정구 장전동 산 30번지 부산대학교 의과대학 대학원 예방의학전공 123동 123호</p>
																</dd>
																<dt>변경 주소 선택</dt><!-- 2015-05-13 수정 -->
																<dd>
																	<div class="change_addr">
																		<select>
																			<option>주소1 선택</option>
																			<option>주소2 선택</option>
																		</select>
																		<span class="btn size2 bgcolor1"><a>신규 주소 입력</a></span><!-- 2015-05-13 띄어쓰기 수정 -->
																	</div>
																</dd>
																<!-- 2015-05-13 수정 -->
																<dt>받을 배송지</dt>
																<dd>
																	<p class="sel_addr">부산광역시 금정구 장전동 산 30번지 부산대학교 의과대학 대학원 예방의학전공 123동 123호</p>
																</dd>
																<!-- 2015-05-13 수정 -->
															</dl>
															<!-- 2015-05-12 수정 -->
															<div class="btns_wrap btn2">
																<span class="btn size2 bgcolor2"><a>취소</a></span>
																<span class="btn size2 bgcolor4"><a>변경</a></span><!-- 2015-06-01 수정 -->
															</div>
															<!-- /2015-05-12 수정 -->
														</div>
													</div>
													<!-- //배송지변경 -->
													<!-- 옵션변경 -->
													<div class="case_con ui-tab-content" style="display: none;">
														<div class="option">
															<dl>
																<dt>현재 옵션</dt>
																<dd>
																	<p class="sel_option">01 클래식 화이트 바다를 품은 육포 2BOX /2개</p>
																	<p class="selOPtion" style="display:block;">
																		<select class="selOPtion">
																			<option>옵션 선택</option>
																			<option></option>
																		</select>
																	</p>
																</dd>
															</dl>
															<!-- 2015-05-12 수정 -->
															<div class="btns_wrap btn2">
																<span class="btn size2 bgcolor2"><a>취소</a></span>
																<span class="btn size2 bgcolor4"><a>변경</a></span><!-- 2015-06-01 수정 -->
															</div>
															<!-- /2015-05-12 수정 -->
														</div>
													</div>
													<!-- //옵션변경 -->
												</div>
											</li>
										</ul>
									</dd>
								</dl>
								<div class="btns_wrap">
									<span class="btn viewmore"><a>더보기</a></span>
								</div>
								<!-- /2015-05-12 수정 -->
								
							</div>

						</div>
						<!-- /tab1 -->
						
						<!-- tab2 -->
						<div id="detail_tab2" class="ui-tab-content" style="display:none;"><!-- 2015-05-09 tab div 추가 -->
						 3개월 조회 결과
						</div>
						<!-- /tab2 -->
						
						<!-- tab3 -->
						<div id="detail_tab3" class="ui-tab-content" style="display:none;"><!-- 2015-05-09 tab div 추가 -->
						 6개월 조회 결과
						</div>
						<!-- /tab3 -->
						
						<!-- tab4 -->
						<div id="detail_tab4" class="ui-tab-content" style="display:none;">

							<!-- 기간 조회 -->
							<div class="accordion_wrap active"><!-- 2015-05-18 수정, 위치변경 -->
								<div class="period">
									<div class="accordion_con">
										<div class="period_inquiry">
											<div class="period_ymd">
												<p>
													<span>
														<select name="" tabindex="4">
										                      <option value="">2014</option>
										                      <option value="">2015</option>
										                </select>
										                <em>년</em>
													</span>
												</p>
												<p>
													<span>
														<select name="" tabindex="4">
										                      <option value="">1</option>
										                      <option value="">2</option>
										                      <option value="">3</option>
										                      <option value="">4</option>
										                      <option value="">5</option>
										                      <option value="">6</option>
										                      <option value="">7</option>
										                      <option value="">8</option>
										                      <option value="">9</option>
										                      <option value="">10</option>
										                      <option value="">11</option>
										                      <option value="">12</option>
										                </select>
										                <em>월</em>
													</span>
												</p>
												<p>
													<span>
														<select name="" tabindex="5">
										                      <option value="">1</option>
										                      <option value="">2</option>
										                      <option value="">3</option>
										                      <option value="">4</option>
										                      <option value="">5</option>
										                      <option value="">6</option>
										                      <option value="">7</option>
										                      <option value="">8</option>
										                      <option value="">9</option>
										                      <option value="">10</option>
										                      <option value="">11</option>
										                      <option value="">12</option>
										                      <option value="">13</option>
										                      <option value="">14</option>
										                      <option value="">15</option>
										                      <option value="">16</option>
										                      <option value="">17</option>
										                      <option value="">18</option>
										                      <option value="">19</option>
										                      <option value="">20</option>
										                      <option value="">21</option>
										                      <option value="">22</option>
										                      <option value="">23</option>
										                      <option value="">24</option>
										                      <option value="">25</option>
										                      <option value="">26</option>
										                      <option value="">27</option>
										                      <option value="">28</option>
										                      <option value="">29</option>
										                      <option value="">30</option>
										                      <option value="">31</option>
										                </select>
										                <em>일</em>
										            </span>
											    </p>
											</div>
											<div class="period_ymd">
												<p>
													<span><!-- 2015-05-18 수정 -->
														<select name="" tabindex="4">
										                      <option value="">2014</option>
										                      <option value="">2015</option>
										                </select>
										                <em>년</em>
													</span>
												</p>
												<p>
													<span>
														<select name="" tabindex="4">
										                      <option value="">1</option>
										                      <option value="">2</option>
										                      <option value="">3</option>
										                      <option value="">4</option>
										                      <option value="">5</option>
										                      <option value="">6</option>
										                      <option value="">7</option>
										                      <option value="">8</option>
										                      <option value="">9</option>
										                      <option value="">10</option>
										                      <option value="">11</option>
										                      <option value="">12</option>
										                </select>
										                <em>월</em>
													</span>
												</p>
												<p>
													<span>
														<select name="" tabindex="5">
										                      <option value="">1</option>
										                      <option value="">2</option>
										                      <option value="">3</option>
										                      <option value="">4</option>
										                      <option value="">5</option>
										                      <option value="">6</option>
										                      <option value="">7</option>
										                      <option value="">8</option>
										                      <option value="">9</option>
										                      <option value="">10</option>
										                      <option value="">11</option>
										                      <option value="">12</option>
										                      <option value="">13</option>
										                      <option value="">14</option>
										                      <option value="">15</option>
										                      <option value="">16</option>
										                      <option value="">17</option>
										                      <option value="">18</option>
										                      <option value="">19</option>
										                      <option value="">20</option>
										                      <option value="">21</option>
										                      <option value="">22</option>
										                      <option value="">23</option>
										                      <option value="">24</option>
										                      <option value="">25</option>
										                      <option value="">26</option>
										                      <option value="">27</option>
										                      <option value="">28</option>
										                      <option value="">29</option>
										                      <option value="">30</option>
										                      <option value="">31</option>
										                </select>
										                <em>일</em>
										            </span>
											    </p>
											</div>
										    <p class="inquiry"><span class="btn size2 bgcolor1"><a>조회</a></span></p><!--  2015-05-19 수정 -->
										</div>
									</div>
								</div>
							</div>
							<!-- //기간 조회 -->
						
						</div>
						<!-- /tab4 -->						
								
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