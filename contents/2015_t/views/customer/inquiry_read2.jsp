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
							<li><a class="" data-tab-target="detail_tab1" style="transition: all 300ms; -webkit-transition: all 300ms;">1:1 문의하기</a></li>
							<li><a class="current" data-tab-target="detail_tab2" style="transition: all 300ms; -webkit-transition: all 300ms;">나의 문의내역</a></li>
						</ul>
						<!-- /2015-05-09 수정 추가 -->
							
						<div class="inquiryZone">
						<ul class="read">
							<!-- 2015-05-09 수정 -->
							<li>								
								<div class="refer_con">
									<p class="type">[교환/반품/AS 문의]</p>
									<p class="title">상품 교환 시 배송료는 다시 내야 하나요?</p>											
								</div>
								<p class="date">2014.12.25</p>
								<p class="refer_status"><span class="answer waiting">답변대기</span><!--<span class="answer complete">답변완료</span>--></p>
							</li>
							<!-- /2015-05-09 수정 -->
						</ul>
						<div class="inquiry_refer_con">
							<div class="inquiry_goods_list">
								<ul class="order_goods">
									<li>
										<div class="goods">
											<div class="goods_img"><a><img src="../../img/_tmp/001.jpg" alt=""></a></div>
											<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
											<!-- 상품가격 -->
											<div class="goods_price">
												<del><em>276,200</em>원</del><!-- 2015-05-10 추가 -->
												<span><em>164,800</em>원</span>
											</div>
											<!-- //상품가격 -->
										</div>
									</li>													
								</ul>
							</div>
							<dl>
								<dt>
									<em>Q</em><!-- 2015-05-09 수정 -->
									상품을 꼭 17일 이전에 받아야 하는데요.<br>
									그전에 받을 수 있을까요?<br>
									빨리 답변 바랍니다.<br>
								</dt>
								<dd>
									<em>A</em><!-- 2015-05-09 수정 -->
									안녕하세요 고객님<br>
									쇼핑엔T 운영자 홍길동 입니다.<br>
									해당 질문에 대한 답변 드리겠습니다.<br>
									상품이 특정일까지 배송해야 할 경우에 해당 택배사를 통해서 문의하신 후 가능 여부를 알 수 있음을 알려드립니다.
								</dd>
							</dl>
						</div>
						<!-- buttons -->
						<div class="btns_wrap btn3">
							<!-- 답변 대기일 경우 노출-->
							<span class="btn size2 bgcolor2"><a>수정</a></span>
							<span class="btn size2 bgcolor2"><a>삭제</a></span>
							<!-- /답변 대기일 경우 노출 -->
							<span class="btn size2 bgcolor5"><a>목록으로</a></span>
						</div>
						<!-- /buttons -->
						<!-- buttons -->
						<div class="btns_wrap btn2">
							<!-- 답변 대기일 경우 노출-->
							<span class="btn size2 bgcolor2"><a>삭제</a></span>
							<!-- /답변 대기일 경우 노출 -->
							<span class="btn size2 bgcolor5"><a>목록으로</a></span>
						</div>
						<!-- /buttons -->
						<!-- buttons -->
						<div class="btns_wrap">
							<span class="btn size2 bgcolor5"><a>목록으로</a></span>
						</div>
						<!-- /buttons -->
					</div>
					
					<div class="board"><!-- 2015-05-09 최외각 div 추가 -->
					
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