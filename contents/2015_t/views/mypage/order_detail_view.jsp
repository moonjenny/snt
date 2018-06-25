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
					<h2><span>주문 상세보기</h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>주문 상세보기</span></h2>
					</nav><!-- 2016-06-24 -->
					<!--배너추가 2018-03-06-->
					<div class="banner_area">
						<div>
							<a href="#" class="link_banner">
								<img src="../../img/_tmp/ban_img01.jpg" alt="">
							</a>
						</div>
						<div>
							<a href="#" class="link_banner">
								<img src="../../img/_tmp/ban_img02.jpg" alt="">
							</a>
						</div>
					</div>
					<!--//배너추가 2018-03-06-->
					<div class="mypage_wrap orderdetail"><!-- 2015-05-13 수정 -->
						<div class="orderList_wrap">
							<div class="tit head">
								<strong class="emp1"><strong class="emp2">상품 할인, 적립금 지급</strong> 등 회원에게만 주어지는 특별한 혜택을<br />
								받으실려면 회원가입 후 이용바랍니다.</strong>
							</div>
							<!-- 2018-03-07 기존뷰 -->
							<div class="orderlist">
								<dl class="order_list">
	                                <dt class="goods_order">
	                                    <a onclick="javascript:goUrl('/mypage/order/detail/20180306054143')">
	                                        <span class="order_date">2018. 03. 06</span>
	                                        <span class="order_num">[ 주문번호 <em>20180306054143</em> ]</span>
	                                        <span class="go_detail">주문상세보기</span>
	                                    </a>
	                                </dt>
	                            </dl>
                            </div>
                            <!-- 2018-03-07 카톡으로 유입시 -->
							<dl class="order_list">
								<dt class="goods_order">
									<span class="order_date">2015.05.12</span>
									<span class="order_num">[ 주문번호 <em>00000000000000</em> ]</span>
								</dt>
								<dt class="title"><!-- 2015-06-19 추가 -->
									<h3 class="greytype">기본 정보</h3>
								</dt>
								<!-- loop -->
								<dd class="goods_list">
									<div class="goods_state"><!-- 2015-05-13 위치변경, "case" 삭제 -->
										<span>배송중</span>
										<!--
										<span>주문접수</span>
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
											<span class="btn size2 bgcolor1"><a>배송조회</a></span>
											<!--
											<span class="btn size2 bgcolor1"><a>상담내용수정</a></span>
											<span class="btn size2 bgcolor1"><a>주문취소</a></span>
											-->
											<!-- 취소/교환/환불 시
											<span class="btn size2 bgcolor1"><a>상세내역</a></span>
											-->
										</div>
									</div>
									<!-- 2015-06-01 수정, 2015-05-13 위치변경, 수정 -->
									<!-- buttons -->
									<div class="btns_wrap btn4">
										<span class="btn size2 bgcolor5"><a>상품평 작성</a></span>
										<span class="btn size2 bgcolor5"><a>교환</a></span>
										<span class="btn size2 bgcolor5"><a>반품</a></span>
										<span class="btn size2 bgcolor5"><a>1:1 문의</a></span>
									</div>
									<!--
									<div class="btns_wrap">
										<span class="btn fullwidth bgcolor5"><a>1:1 문의</a></span>
										<span class="btn fullwidth bgcolor5"><a>상담문의</a></span>
										<span class="btn fullwidth bgcolor5"><a>상품평 작성</a></span>
									</div>
									-->
									<!-- /buttons -->
									<!-- /2015-05-13 위치변경, 수정 -->

									<ul class="order_goods">
										<li>
											<div class="goods">
												<p class="goods_img"><img src="../../img/_tmp/005_1.jpg" alt=""></p>
												<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
												<div class="goods_price">
													<span><em>139,700</em>원</span>
												</div>
											</div>
											<!-- 2015-05-13 수정 -->
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
													<span class="gift_option">[사은품 옵션 : 꽃무늬 유리</span>
												</p>
											</div>
											<!-- /2015-05-13 수정 -->
											<div class="goods_case">
												<ul class="tab_group piece2 tab_detail ui-tab-btns"><!-- 2015-05-13 수정 -->
													<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">입금정보</a></li>
													<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">옵션변경</a></li>
												</ul>
												<!-- 입금정보 -->
												<div class="case_con ui-tab-content" style="display:none;">
													<div class="method">
														<dl><!-- 2015-05-13 dt 삭제 -->
															<dd>
																<!-- 2015-05-13 수정 -->
																<ul>
																	<li><em>결제수단</em>신용카드</li>
																	<li><em>카드종류</em>KB카드</li>
																	<li><em>납부방식</em>일시불</li>
																	<li><em>결제수단</em>무통장입금</li>
																	<li><em>입금은행</em>국민은행</li>
																	<li><em>입금계좌번호</em>1234567891111</li>
																	<li><em>입금기한</em>015년 10월 20일까지</li>
																</ul>
																<!-- /2015-05-13 수정 -->
															</dd>
														</dl>
													</div>
												</div>
												<!-- //입금정보 -->
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
														<!-- 2015-05-13 수정 -->
														<div class="btns_wrap btn2">
															<span class="btn size2 bgcolor2"><a>취소</a></span>
															<span class="btn size2 bgcolor4"><a>변경</a></span><!-- 2015-06-01 수정 -->
														</div>
														<!-- /2015-05-13 수정 -->
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
									<div class="goods_state"><!-- 2015-05-13 위치변경, "case" 삭제 -->
										<span>배송중</span>
										<!--
										<span>주문접수</span>
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
											<span class="btn size2 bgcolor1"><a>배송조회</a></span>
											<!--
											<span class="btn size2 bgcolor1"><a>상담내용수정</a></span>
											<span class="btn size2 bgcolor1"><a>주문취소</a></span>
											-->
											<!-- 취소/교환/환불 시
											<span class="btn size2 bgcolor1"><a>상세내역</a></span>
											-->
										</div>
									</div>
									<!-- 2015-06-01 수정, 2015-05-13 위치변경, 수정 -->
									<!-- buttons -->
									<div class="btns_wrap btn4">
										<span class="btn size2 bgcolor5"><a>상품평 작성</a></span>
										<span class="btn size2 bgcolor5"><a>교환</a></span>
										<span class="btn size2 bgcolor5"><a>반품</a></span>
										<span class="btn size2 bgcolor5"><a>1:1 문의</a></span>
									</div>
									<!--
									<div class="btns_wrap">
										<span class="btn fullwidth bgcolor5"><a>1:1 문의</a></span>
										<span class="btn fullwidth bgcolor5"><a>상담문의</a></span>
										<span class="btn fullwidth bgcolor5"><a>상품평 작성</a></span>
									</div>
									-->
									<!-- /buttons -->
									<!-- /2015-05-13 위치변경, 수정 -->

									<ul class="order_goods">
										<li>
											<div class="goods">
												<p class="goods_img"><img src="../../img/_tmp/005_1.jpg" alt=""></p>
												<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
												<div class="goods_price">
													<span><em>139,700</em>원</span>
												</div>
											</div>
											<!-- 2015-05-13 수정 -->
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
													<span class="gift_option">[사은품 옵션 : 꽃무늬 유리</span>
												</p>
											</div>
											<!-- /2015-05-13 수정 -->
											<div class="goods_case">
												<ul class="tab_group piece2 tab_detail ui-tab-btns"><!-- 2015-05-13 수정 -->
													<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">입금정보</a></li>
													<li><a class="" style="transition: all 300ms; -webkit-transition: all 300ms;">옵션변경</a></li>
												</ul>
												<!-- 입금정보 -->
												<div class="case_con ui-tab-content" style="display:none;">
													<div class="method">
														<dl><!-- 2015-05-13 dt 삭제 -->
															<dd>
																<!-- 2015-05-13 수정 -->
																<ul>
																	<li><em>결제수단</em>신용카드</li>
																	<li><em>카드종류</em>KB카드</li>
																	<li><em>납부방식</em>일시불</li>
																	<li><em>결제수단</em>무통장입금</li>
																	<li><em>입금은행</em>국민은행</li>
																	<li><em>입금계좌번호</em>1234567891111</li>
																	<li><em>입금기한</em>015년 10월 20일까지</li>
																</ul>
																<!-- /2015-05-13 수정 -->
															</dd>
														</dl>
													</div>
												</div>
												<!-- //입금정보 -->
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
														<!-- 2015-05-13 수정 -->
														<div class="btns_wrap btn2">
															<span class="btn size2 bgcolor2"><a>취소</a></span>
															<span class="btn size2 bgcolor4"><a>변경</a></span><!-- 2015-06-01 수정 -->
														</div>
														<!-- /2015-05-13 수정 -->
													</div>
												</div>
												<!-- //옵션변경 -->
											</div>
										</li>
									</ul>
								</dd>
								<!-- /loop -->

							</dl>
						</div>

						<div class="orderDetail_wrap">

							<h3 class="greytype">연락처/상담 내용<span class="btn size2 bgcolor1 ui-chg-counsel-switch"><a>수정</a></span></h3><!-- 2015-05-13 수정 -->
							<div class="detail_con detail_counsel">
								<div id="chg-counsel-on" class="change_counsel" style="display:none;">
									<dl class="form_input">
										<dt>휴대전화</dt>
										<dd>
											<div class="phone_area">
												<p>
													<span>
														<select name="">
			                                                  <option value="">010</option>
			                                                  <option value="">011</option>
			                                                  <option value="">016</option>
			                                                  <option value="">017</option>
			                                                  <option value="">018</option>
			                                                  <option value="">019</option>
			                                            </select>
													</span>
												</p>
												<p>
													<span>
														<em>-</em>
														<span class="inputBox"><input type="tel" placeholder="" name="tel1" tabindex="7" autocapitalize="off" /></span>
													</span>
												</p>
												<p>
													<span>
														<em>-</em>
														<span class="inputBox"><input type="tel" placeholder="" name="tel2" tabindex="8" autocapitalize="off" /></span>
													</span>
												</p>
											</div>
										</dd>
									</dl>
									<dl class="form_input">
										<dt>상담하실 내용</dt>
										<dd>
											<span class="textarea2">
												<textarea cols="10" rows="5" placeholder="200자 이내로 작성해 주시기 바랍니다."></textarea>
											</span>
										</dd>
									</dl>
									<!-- 2015-05-13 수정 -->
									<div class="btns_wrap btn2">
										<span class="btn size2 bgcolor2"><a>취소</a></span>
										<span class="btn size2 bgcolor4"><a>변경</a></span><!-- 2015-06-01 수정 -->
									</div>
									<!-- /2015-05-13 수정 -->
								</div>
								<div id="chg-counsel-off" class="info_box" style="display:block;">
									<dl>
										<dt>휴대전화</dt>
										<dd>00-0000-0000</dd>
									</dl>

									<dl>
										<dt>상담하실 내용</dt>
										<dd>
											위의 설계예시는 보험나이 54세의 전업주부 어머님으로 할증이 적용되지 않은 보험료로 할증이 플랜과 보험사로 비교가 가능한 저 보험리더에게 문의주세요~
										</dd>
									</dl>
								</div>
							</div>

							<h3 class="greytype">배송정보<span class="btn size2 bgcolor1 ui-chg-addr-switch"><a>배송지변경</a></span></h3><!-- 2015-05-13 수정 -->
							<div class="detail_con">
								<div id="chg-addr-on" class="change_addr" style="display:none;">
									<div class="rcvcustomer"><!-- 2015-05-02 class 추가 -->
										<ul class="tab_group tab_address">
											<li><a class="current">기본 주소</a></li>
											<li><a class="">최근 주소</a></li>
											<li><a class="">신규 주소</a></li>
										</ul>
										<!-- 2015-04-30 수정 -->
										<dl class="form_input2 receiverinfo">
											<dt>받으시는 분</dt>
											<dd>
												<div class="receive_area">
													<span class="inputBox"><input type="text" placeholder="이름을 입력해 주세요." name="id" tabindex="1" autocapitalize="off" readonly="readonly"></span>
													<p class="delivery"><span class="btn size2 bgcolor1 adresslist"><a>배송지 목록</a></span><!-- 2015-05-04 class 추가 -->
												</p></div>
												<!-- 비회원 주문인 경우--><!-- 2015-05-02 class 추가 -->
												<div class="receive_area nomember" style="display: none;">
													<span class="inputBox"><input type="text" placeholder="" name="id" tabindex="2" autocapitalize="off"></span>
												</div>
												<!-- /비회원 주문인 경우 -->
												<div class="delivery_list">
													<!-- 첫구매 and 기본주소 선택시
													<p class="nodata">등록하신 기본 주소가 없습니다.</p>
													<p class="nodata">최근 주문하신 주소가 없습니다.</p>
													 -->
													<!-- 배송지 목록 있을 경우 -->
													<ul>
														<li>
															<div>
																<p>홍길동 집</p>
																<p>서울특별시 중구 퇴계로 24 SK남산그린빌딩</p>
															</div>
															<p class="select"><span class="btn size1 bgcolor1"><a href="#">선택</a></span></p>
														</li>
														<li>
															<div>
																<p>홍길동 집</p>
																<p>서울특별시 중구 퇴계로 24 SK남산그린빌딩</p>
															</div>
															<p class="select"><span class="btn size1 bgcolor1"><a href="#">선택</a></span></p>
														</li>
														<li>
															<div>
																<p>홍길동 집</p>
																<p>서울특별시 중구 퇴계로 24 SK남산그린빌딩</p>
															</div>
															<p class="select"><span class="btn size1 bgcolor1"><a href="#">선택</a></span></p>
														</li>
													</ul>
													<!-- /배송지 목록 있을 경우 -->
												</div>
											</dd>
										</dl>
										<!-- /2015-04-30 수정 -->
										<dl class="form_input">
											<dt>주소</dt>
											<dd>
												<div class="address_area">
													<p>
														<span>
															<span class="inputBox"><input type="text" name="addr" tabindex="3" autocapitalize="off" readonly="readonly"></span>
														</span>
													</p>
													<p>
														<span>
															<em>-</em>
															<span class="inputBox"><input type="text" name="addr" tabindex="4" autocapitalize="off" readonly="readonly"></span>
														</span>
													</p>
													<span class="post"><span class="btn size2 bgcolor1"><a href="#">우편번호찾기</a></span></span>
												</div>
												<p class="address_area2"><span class="inputBox"><input type="text" name="addr" tabindex="5" autocapitalize="off" readonly="readonly"></span></p>
												<p class="address_area2"><span class="inputBox"><input type="text" name="addr" tabindex="6" autocapitalize="off"></span></p>
												<p class="check address_area3"><input type="checkbox" id="myAddr"><label for="myAddr">이 주소를 내 기본주소로 지정하기</label></p>
											</dd>
										</dl>
										<dl class="form_input">
											<dt>휴대전화</dt>
											<dd>
												<div class="phone_area">
													<p>
														<span>
															<select name="" tabindex="5">
				                                                  <option value="">010</option>
				                                                  <option value="">011</option>
				                                                  <option value="">016</option>
				                                                  <option value="">017</option>
				                                                  <option value="">018</option>
				                                                  <option value="">019</option>
				                                            </select>
														</span>
													</p>
													<p>
														<span>
															<em>-</em>
															<span class="inputBox"><input type="tel" placeholder="" name="tel1" tabindex="7" autocapitalize="off"></span>
														</span>
													</p>
													<p>
														<span>
															<em>-</em>
															<span class="inputBox"><input type="tel" placeholder="" name="tel2" tabindex="8" autocapitalize="off"></span>
														</span>
													</p>
												</div>
											</dd>
										</dl>
										<dl class="form_input">
											<dt><span class="emp0">전화번호(선택사항)</span></dt><!-- 2015-04-30 수정 -->
											<dd>
												<div class="phone_area">
													<p>
														<span>
															<select name="" tabindex="8">
				                                                  <option value="">010</option>
				                                                  <option value="">011</option>
				                                                  <option value="">016</option>
				                                                  <option value="">017</option>
				                                                  <option value="">018</option>
				                                                  <option value="">019</option>
				                                            </select>
														</span>
													</p>
													<p>
														<span>
															<em>-</em>
															<span class="inputBox"><input type="tel" placeholder="" name="tel1" tabindex="9" autocapitalize="off"></span>
														</span>
													</p>
													<p>
														<span>
															<em>-</em>
															<span class="inputBox"><input type="tel" placeholder="" name="tel2" tabindex="10" autocapitalize="off"></span>
														</span>
													</p>
												</div>
											</dd>
										</dl>
										<dl class="form_input">
											<dt><span class="emp0">배송메모(선택사항)</span></dt><!-- 2015-04-30 수정 -->
											<dd>
												<select name="" tabindex="11">
													<option value="">배송메모를 선택해 주세요.</option>
													<option value="">빠른 배송 부탁드립니다.</option>
													<option value="">부재 시 경비실(관리실)에 맡겨주세요.</option>
													<option value="">부재 시 핸드폰으로 연락바랍니다.</option>
													<option value="">배송 전 연락바랍니다.</option>
				                                </select>
												<p class="delivery_area">
													<span class="textarea"><!-- 2015-05-02 수정 -->
														<textarea tabindex="12">일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십</textarea>
													</span>
												</p>
											</dd>
										</dl>
										<!-- 2015-05-02 수정 -->
										<dl class="form_input counselask" style="display: none;">
											<dt><span class="emp0">상담하실 내용(선택사항)</span></dt>
											<dd>
												<span class="textarea2">
													<textarea cols="10" rows="5" placeholder="200자 이내로 작성해 주시기 바랍니다."></textarea>
												</span>
											</dd>
											<dd class="counsel">
												<div class="boxtype1">
													<p>상담상품은 결제수단 선택없이 “상담신청” 버튼을 누르시면 구매가 완료됩니다.</p>
												</div>
											</dd>
										</dl>
										<!-- /2015-05-02 수정 -->
										<!-- 2015-05-13 수정 -->
										<div class="btns_wrap btn2">
											<span class="btn size2 bgcolor2"><a>취소</a></span>
											<span class="btn size2 bgcolor4"><a>변경</a></span><!-- 2015-06-01 수정 -->
										</div>
										<!-- /2015-05-13 수정 -->
									</div>
								</div>
								<div id="chg-addr-off" class="info_box" style="display:block;">
									<dl>
										<dt>주문고객</dt>
										<dd>홍길동</dd>
									</dl>
									<dl>
										<dt>받는고객 정보</dt>
										<dd>홍길동</dd>
									</dl>
									<dl>
										<dt>휴대전화</dt>
										<dd>00-0000-0000</dd>
									</dl>
									<dl>
										<dt>전화번호</dt>
										<dd>00-0000-0000</dd>
									</dl>
									<dl>
										<dt>주소</dt>
										<dd>
											000-000<br />
											서울특별시 중구 퇴계로 24 SK남산그린빌딩<br />
										</dd>
									</dl>
									<dl>
										<dt>이메일</dt>
										<dd>frankachieve@gmail.com</dd>
									</dl>
									<dl>
										<dt>배송메모</dt>
										<dd>
											빠른 배송 부탁드립니다.<br />
											도착시 전화주세요.<br />
										</dd>
									</dl>
								</div>
							</div>

							<h3 class="greytype">주문/결제 정보<span class="btn size2 bgcolor1"><a>영수증보기</a></h3><!-- 2015-05-13 수정 -->
							<!-- 2015-05-13 수정 -->
							<div class="total_wrap"><!-- 2015-05-13 수정 -->
								<ul class="goods"><!-- 2015-05-13 수정 -->
									<li><!-- 2015-05-13 수정 -->
										<dl>
											<dt>총 상품가격</dt><!-- 2015-06-15 수정 -->
											<dd>
												<span class="price"><em>328,700</em>원</span>
											</dd>
										</dl>
									</li>
									<li>
										<!-- 2015-04-30 수정 -->
										<div class="discount">
											<dl>
												<dt>상품 할인</dt>
												<dd><span class="price minus"><em>100</em>원</span></dd>
											</dl>
											<dl>
												<dt>방송상품 할인</dt>
												<dd><span class="price minus"><em>100</em>원</span></dd>
											</dl>
											<dl>
												<dt>쿠폰 사용</dt>
												<dd><span class="price minus"><em>900</em>원</span></dd>
											</dl>
											<dl>
												<dt>일시불 할인</dt>
												<dd><span class="price minus"><em>100</em>원</span></dd>
											</dl>
											<dl>
												<dt>적립금 사용</dt>
												<dd><span class="price minus"><em>2,500</em>원</span></dd>
											</dl>
											<dl>
												<dt>배송비</dt>
												<dd><span class="price plus"><em>2,500</em>원</span></dd>
											</dl>
										</div>
										<!-- /2015-04-30 수정 -->
									</li>
								</ul>
								<div class="payment">
									<dl>
										<dt>총 결제금액<span>(할인적용, 배송비 포함)</span></dt><!-- 2015-04-30 수정 -->
										<dd>
											<span class="price"><em>276,500</em>원</span>
										</dd>
									</dl>
								</div>
								<div class="benefit">
									<div class="save">
										<!-- 2015-05-02 수정 -->
										<dl>
											<dt>적립혜택<span>(적립금)</span></dt>
											<dd><span class="price"><em>30</em>원</span></dd>
										</dl>
										<!-- /2015-05-02 수정 -->
									</div>
								</div>
								<!-- 결제금액이 0원일 경우
								<div class="payment_zero">
									<p>고객님께서는 할인혜택을 받으셔서<br />결제하실 금액이 없습니다.</p>
								</div>
								 -->
							</div>
							<div class="info_box">
								<dl>
									<dt>결제수단</dt>
									<dd>신용카드</dd>
								</dl>
								<dl>
									<dt>카드종류</dt>
									<dd>KB카드</dd>
								</dl>
								<dl>
									<dt>납부방식</dt>
									<dd>일시불</dd>
								</dl>
							</div>
							<!-- /2015-05-13 수정 -->

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
<!--배너 js추가 2018-03-06-->
<script>
	function banner_roll(){
		$('.banner_area').slick({
			dots: true,
			infinite: true,
			autoplay: true,
	  		autoplaySpeed: 5000
		});
	};
	banner_roll();
</script>
<!--//배너 js추가 2018-03-06-->
</html>
