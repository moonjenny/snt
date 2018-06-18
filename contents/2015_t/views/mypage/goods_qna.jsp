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
					<h2><span>나의 상품 Q&amp;A</h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>나의 상품 Q&amp;A</span></h2>
					</nav><!-- 2016-06-24 -->
					<!-- 2015-05-12 수정, 위치변경 -->
					<div class="tit head">
						<p><strong class="emp1">홍길동</strong>님이 작성하신 상품 Q&amp;A 내역입니다.</strong></p>
					</div>
					<!-- /2015-05-12 추가 -->
					<div class="mypage_wrap">
						<div class="qnaList_wrap">
						
							<ul class="order_goods">
								<li>
									<div class="goods">
										<p class="goods_img"><img src="../../img/_tmp/001.jpg" alt="" /></p>
										<div class="goods_name">무방부제 무방부제 무방부제 무방부제 무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
										<div class="goods_price">
											<del><em>139,700</em>원</del>
											<span><em>139,700</em>원</span>
										</div>
									</div>
									<!-- 2015-05-12 : "goods_qna_detail" 삭제 -->
									<div class="goods_qna_detail">
										<div class="qnaList">
											
											<!-- 2015-05-12 수정 -->
											<div class="question_tit ui-accordion-btn">
												<p>언제 재입고 되나요?</p>
												<span class="status">2014.10.31</span>
												<span class="status_inline"><em class="answer waiting">답변대기</em></span>
											</div>
											<!-- /2015-05-12 수정 -->
											<div class="answer_con"><!-- 2015-06-09 style 삭제, 2015-05-12 div 추가 -->
												<dl>
													<dt><em>Q</em>언제 재입고 되나요?.</dt>
													<dd><em>A</em>안녕하세요. 고객님. 9월 3일 재입고 됩니다. 감사합니다.</dd>
												</dl>
												<!-- 2015-05-12 수정 -->
												<div class="btns_wrap">
													<span class="btn size2 bgcolor1"><a>삭제</a></span><!-- 2015-06-01 수정 -->
												</div>
												<!-- /2015-05-12 수정 -->
											</div><!-- 2015-05-12 div 추가 -->
										</div>
																			
									</div>
								</li>
								<li>
									<div class="goods">
										<p class="goods_img"><img src="../../img/_tmp/001.jpg" alt="" /></p>
										<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
										<div class="goods_price">
											<del><em>139,700</em>원</del>
											<span><em>139,700</em>원</span>
										</div>
									</div>
									<!-- 2015-05-12 : "goods_qna_detail" 삭제 -->
									<div class="goods_qna_detail">
										
										<div class="qnaList" style="display:block;">											
											<!-- 2015-05-12 수정 -->
											<div class="question_tit ui-accordion-btn">
												<p>언제 재입고 되나요?</p>
												<span class="status">2014.10.31</span>
												<span class="status_inline"><em class="answer complete">답변완료</em></span>
											</div>
											<!-- /2015-05-12 수정 -->
											<div class="answer_con"><!-- 2015-06-09 style 삭제, 2015-05-12 div 추가 -->
												<dl>
													<dt><em>Q</em>언제 재입고 되나요?.</dt>
													<dd><em>A</em>안녕하세요. 고객님. 9월 3일 재입고 됩니다. 감사합니다.</dd>
												</dl>
												<!-- 2015-06-01 수정,  2015-05-12 수정 -->
												<div class="btns_wrap">
													<span class="btn size2 bgcolor1"><a>삭제</a></span>						
													<span class="btn size2 bgcolor1 ui-mypage-qna-edit-btn"><a>수정</a></span>
												</div>
												<!-- /2015-05-12 수정 -->
											</div><!-- 2015-05-12 div 추가 -->											
										</div>
										<div class="qnaWrite" style="display:none;">
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
															<div class="textarea1"><!-- 2015-05-12 수정 -->
																<textarea></textarea>
																<p class="placeholder ui-placeholder" style="display:none;">
																	<span>궁금한 사항을 문의하세요!</span>
																	고객님의 소중한 개인정보가 노출되지 않도록 주의하시기 바랍니다. 혹시 등록된 내용이 개인정보를 담고 있거나 서비스에 적합하지 않은 경우, 관리자가 임의로 삭제조치할 수 있으니 이 점 참고하세요!
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
													<p class="refer">※ SMS미수신 시 답변 알림을 받으실 수 없습니다.</p>
													<!-- 2015-05-12 수정 -->
													<div class="btns_wrap btn2">
														<span class="btn size2 bgcolor5"><a>취소</a></span>
														<span class="btn size2 bgcolor4"><a>등록</a></span>						
													</div>
													<!-- /2015-05-12 수정 -->
												</fieldset>
											</form>
										</div>
										
									</div>
								</li>
							</ul>							
							
							<!-- 2015-06-09, 2015-05-12 수정 -->
							<!-- no data -->
							<p class="list_nodata">등록된 게시물이 없습니다.</p>
							<!-- /no data -->
							<!-- /2015-05-12 수정 -->
							
						</div>
						<!-- 2015-05-12 추가 -->
						<div class="btns_wrap">
							<span class="btn viewmore"><a>더보기</a></span>
						</div>
						<!-- /2015-05-12 추가 -->
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