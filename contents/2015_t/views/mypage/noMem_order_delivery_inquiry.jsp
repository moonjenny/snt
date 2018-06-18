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
					<h2><span>비회원 주문/배송조회</span></h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>비회원 주문/배송조회</span></h2>
					</nav><!-- 2016-06-24 -->
					
					<!-- 주문비밀번호 탭 -->
					<div class="contents_wrap"><!-- 2016-07-11 : div 순서 변경-->
						<ul class="tab_group tabtype2 piece2 ui-tab-btns">
							<li><a class="current">주문 비밀번호로 조회</a></li>
							<li><a>본인 확인 조회</a></li>
						</ul>
						<div class="ui-tab-content" style="display:block;"><!-- 2016-07-11 -->
							<form>
								<dl class="form_input">
									<dt>주문번호</dt><!-- 2015-05-13 수정 -->
									<!-- 2015-05-13 수정 -->
									<dd>
										<span class="inputBox"><input type="text" placeholder="상품 주문번호(14자리) " name="pw1" tabindex="2" autocapitalize="off" /></span>
										<p class="message iconed emp2">상품 주문 시 SMS로 발급된 주문번호를 입력하세요! <br />주문번호를 모를 경우, 고객센터에 문의하세요.</p><!-- 2016-07-19 : 개발에  iconed emp2 클래스 미적용 -->
										<!--
										<p class="message emp2">주문번호를 입력해 주세요.</p>
										<p class="message emp2">주문번호가 일치하지 않습니다.</p>
										-->
									</dd>
									<!-- /2015-05-13 수정 -->
								</dl>
								<dl class="form_input">
									<dt>주문 비밀번호</dt><!-- 2015-05-13 수정 -->
									<!-- 2015-05-13 수정 -->
									<dd>
										<span class="inputBox"><input type="password" placeholder="주문 비밀번호(6~12자리) " name="pw1" tabindex="2" autocapitalize="off" /></span>
										<p class="message iconed emp2">상품 주문 시 등록한 비밀번호를 입력하세요!</p>
										<!--
										<p class="message emp2">비밀번호를 입력해 주세요.</p>
										<p class="message emp2">비밀번호를 다시 입력하시기 바랍니다.</p>
										-->
									</dd>
									<!-- /2015-05-13 수정 -->
								</dl>
								<!-- 2015-05-13 수정 -->
								<div class="btns_wrap btn2"><!-- 2015-06-01 수정 -->
									<span class="btn size2 bgcolor5"><a>고객센터</a></span>
									<span class="btn size2 bgcolor4"><a>확인</a></span>
								</div>
								<!-- /2015-05-13 수정 -->
							</form>
						</div>					
						<!-- /주문비밀번호 탭 -->
					
						<!-- 본인인증 탭 --><!-- 2016-07-11 -->
						<div class="ui-tab-content" style="display:none;">
							<form>
								<div class="memSrchZone2"> <!-- 2016-07-11 : .memSrchZone -> memSrchZone2 클래스 수정 -->
									<p class="tit">본인 확인 후 비회원 주문 내역 확인이 가능합니다.<br><span class="emp2">※2016. 8. 3(수) 이전 비회원 주문내역은 본인확인을 통해 주문 조회를 할 수 없습니다.</span></p>			
									<div class="pw_change type2"><!-- 2016-07-11 : type2클래스 추가 -->
										<div>
											<dl class="form_input2">
												<dt><label for="num">주문번호</label></dt>
												<dd>
													<span class="inputBox"><input type="text" value="상품 주문번호(14자리)" name="num" tabindex="1" autocapitalize="off" /></span>
												</dd>
											</dl>
											<!-- 
											<p class="message emp2">이름을 입력해주세요.</p>
											<p class="message emp2">특수문자는 입력이 불가능합니다.</p>
											<p class="message emp2">40Byte 이내로 입력해주세요.</p>
											 -->
										</div>
										<div>
											<dl class="form_input2">
												<dt><label for="name">이름</label></dt>
												<dd>
													<span class="inputBox"><input type="text" name="name" tabindex="1" autocapitalize="off" /></span>
												</dd>
											</dl>
											<!-- 
											<p class="message emp2">이름을 입력해주세요.</p>
											<p class="message emp2">특수문자는 입력이 불가능합니다.</p>
											<p class="message emp2">40Byte 이내로 입력해주세요.</p>
											 -->
										</div>
										<div>
											<dl class="form_input2">
												<dt>생년월일</dt>
												<dd>
													<div class="phone_area">
														<p>
															<span>
																<select name="day" tabindex="6" disabled="disabled">
																	  <option value="">1980년</option>
																</select>
															</span>
														</p>
														<p>
															<span>
																<select name="day" tabindex="6" disabled="disabled">
																	  <option value="">선택(월)</option>
																</select>
															</span>
														</p>
														<p>
															<span>
																<select name="day" tabindex="6" disabled="disabled">
																	  <option value="">선택(일)</option>
																</select>
															</span>
														</p>
													</div>
												</dd>
											</dl>
											<!-- 
											<p class="message emp2">태어난 월을 선택해주세요.</p>
											<p class="message emp2">태어난 일을 선택해주세요.</p>
											 -->
										</div>
										<div>
											<dl class="form_input2">
												<dt>휴대폰번호</dt>
												<dd>
													<div class="phone_area">
														<p>
															<span>
																<select name="" tabindex="6" disabled="disabled">
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
																<span class="inputBox"><input type="tel" value="0000" name="tel1" tabindex="4" autocapitalize="off" readonly="readonly" /></span>
															</span>
														</p>
														<p>
															<span>
																<em>-</em>
																<span class="inputBox"><input type="tel" value="0000" name="tel2" tabindex="5" autocapitalize="off" readonly="readonly" /></span>
															</span>
														</p>
													</div>
												</dd>
											</dl>
											<!-- 
											<p class="message emp2">휴대폰 번호를 입력해주세요.</p>
											<p class="message emp2">휴대폰 번호 형식이 올바르지 않습니다. <br>확인 후 다시 입력해주세요.</p>
											 -->
										</div>
									</div>
									<div class="btns_wrap btn2">
										<span class="btn size2 bgcolor5"><a>고객센터</a></span>
										<span class="btn size2 bgcolor4"><a>확인</a></span>
									</div>
								</div>
								<!-- <div class="memCertifyZone">
									<div class="tit">
										<p>3개월 이전 구매내역을 위하여<br /><strong class="emp1">휴대폰 본인 인증</strong>을 해야 하는 단계입니다.</p>
									</div>
									<div class="btns_wrap certify"><span class="btn size3 bgcolor5"><a href="#">휴대폰 인증</a></span></div>
									<p class="refer">* 본인인증을 위해 입력하신 개인정보는 본인인증기관에서 수집하는 정보이며, 수집된 정보는 본인인증 외 어떠한 용도로도 이용되거나 별도 저장되지 않습니다.</p>
								</div> -->
							</form>
						</div>
						<!-- /본인인증 탭 -->
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