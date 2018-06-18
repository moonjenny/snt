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
					<h2><span>자주하는 질문</span></h2>	 -->				
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>자주하는 질문</span></h2>
					</nav><!-- 2016-06-24 -->

					<div class="board">
						<!-- 2015-05-09 수정 추가 -->
						<ul class="tab_group tabtype2 piece3 line2 ui-tab-btns">
							<li><a class="current" data-tab-target="detail_tab1" style="transition: all 300ms; -webkit-transition: all 300ms;">주문/결제</a></li>
							<li><a class="" data-tab-target="detail_tab2" style="transition: all 300ms; -webkit-transition: all 300ms;">배송</a></li>
							<li><a class="" data-tab-target="detail_tab3" style="transition: all 300ms; -webkit-transition: all 300ms;">취소/반품/교환</a></li>
							<li><a class="" data-tab-target="detail_tab4" style="transition: all 300ms; -webkit-transition: all 300ms;">혜택</a></li>
							<li><a class="" data-tab-target="detail_tab5" style="transition: all 300ms; -webkit-transition: all 300ms;">회원</a></li>
							<li><a class="" data-tab-target="detail_tab6" style="transition: all 300ms; -webkit-transition: all 300ms;">서비스/기타</a></li>
						</ul>
						<!-- /2015-05-09 수정 추가 -->
						
						<div id="detail_tab1" class="ui-tab-content"><!-- 2015-05-09 tab wrap div 추가 -->
						
							<div class="accordion_wrap">
								<div class="faq_list">
									<div class="faq_tit ui-accordion-btn">
										<p>
											<span class="faq_num">1</span>
											[주문/결제] 주문한 상품의 배송지<em>&nbsp;</em>
										</p>
									</div>
									<div class="faq_con">
										<dl>
											<dt><em>Q</em>주문한 상품의 배송지를 변경하고 싶어요.</dt>
											<dd><em>A</em>마이페이지의 [ 주문/배송 조회 ] 에서 가능합니다.</dd>
										</dl>
									</div>
								</div>
								<div class="faq_list">
									<div class="faq_tit ui-accordion-btn">
										<p>
											<span class="faq_num">2</span>
											[취소/반품/교환] 주문한 상품의 배송지를 변경하고 싶어요.<em>&nbsp;</em>
										</p>
									</div>
									<div class="faq_con">
										<dl>
											<dt><em>Q</em>주문한 상품의 배송지를 변경하고 싶어요.</dt>
											<dd><em>A</em>마이페이지의 [ 주문/배송 조회 ] 에서 '배송지변경'을 통해 가능합니다. 마이페이지의 [ 1:1 상담하기 ] 로 문의 바랍니다.</dd>
										</dl>
									</div>
								</div>
								<div class="faq_list">
									<div class="faq_tit ui-accordion-btn">
										<p>
											<span class="faq_num">3</span>
											[서비스/기타] 주문한 상품의 배송지를 변경하고 싶어요.주문한 상품의 배송지를 변경하고 싶어요. 주문한 상품의 배송지를 변경하고 싶어요.<em>&nbsp;</em>
										</p>
									</div>
									<div class="faq_con">
										<dl>
											<dt><em>Q</em>주문한 상품의 배송지를 변경하고 싶어요.</dt>
											<dd><em>A</em>마이페이지의 [ 주문/배송 조회 ] 에서 '배송지변경'을 통해 가능합니다. 단, 주문 상품이 상품 준비중 또는 배송중인 경우 고객센터(1899-2211) 또는 마이페이지의 [ 1:1 상담하기 ] 로 문의 바랍니다.</dd>
										</dl>
									</div>
								</div>
								<!-- 2015-05-09 수정 -->
								<div class="btns_wrap" id="">
									<span class="btn viewmore"><a href="#.">더보기</a></span>
								</div>
								<!-- /2015-05-09 수정 -->
							</div>
						
						</div><!-- /2015-05-09 tab wrap div 추가 -->
						
						<div id="detail_tab2" class="ui-tab-content" style="display:none;"><!-- 2015-05-09 tab wrap div 추가 -->
						 	<div class="accordion_wrap">
								<div class="faq_list">
								tab2 contents
								</div>
							</div>
						</div>
						
						<div id="detail_tab3" class="ui-tab-content" style="display:none;"><!-- 2015-05-09 tab wrap div 추가 -->
						 	<div class="accordion_wrap">
								<div class="faq_list">
								tab3 contents
								</div>
							</div>
						</div>
						
						<div id="detail_tab4" class="ui-tab-content" style="display:none;"><!-- 2015-05-09 tab wrap div 추가 -->
						 	<div class="accordion_wrap">
								<div class="faq_list">
								tab4 contents
								</div>
							</div>
						</div>
						
						<div id="detail_tab5" class="ui-tab-content" style="display:none;"><!-- 2015-05-09 tab wrap div 추가 -->
						 	<div class="accordion_wrap">
								<div class="faq_list">
								tab5 contents
								</div>
							</div>
						</div>
						
						<div id="detail_tab6" class="ui-tab-content" style="display:none;"><!-- 2015-05-09 tab wrap div 추가 -->
						 	<div class="accordion_wrap">
								<div class="faq_list">
								tab6 contents
								</div>
							</div>
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