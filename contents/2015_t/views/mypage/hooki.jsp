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
					<div class="hooki_write">
						<form>
							<dl class="form_input">
								<dd>									
									<select>
										<option selected="selected">상품평 선택</option><!-- 2015-05-10 수정 -->
										<option>재구매 의사 200% ! 너무 좋아요!!</option>
										<option>잘 받았습니다, 배송도 빠르네요.</option>
										<option>정말 필요한 상품이었어요!</option>
										<option>저렴한 가격으로 잘 구매했습니다.</option>
										<option>짱 좋아요! 잘 쓸게요!</option>
									</select>									
								</dd>
							</dl>
							<div class="selectscore"><!-- 2015-05-10 div 추가 -->
								<dl class="form_input2"><!-- 2015-05-10 수정 -->
									<dt>상품품질</dt>
									<dd>
										<ul class="star_score">
											<li><span class="star">1점</span></li>
											<li><span class="star">2점</span></li>
											<li><span class="star">3점</span></li>
											<li><span class="star">4점</span></li>
											<li><span class="star">5점</span></li>
										</ul>
									</dd>
								</dl>
								<dl class="form_input2"><!-- 2015-05-10 수정 -->
									<dt>배송</dt>
									<dd>
										<ul class="star_score">
											<li><span class="star">1점</span></li>
											<li><span class="star">2점</span></li>
											<li><span class="star">3점</span></li>
											<li><span class="star">4점</span></li>
											<li><span class="star">5점</span></li>
										</ul>
									</dd>
								</dl>
								<dl class="form_input2"><!-- 2015-05-10 수정 -->
									<dt>서비스</dt>
									<dd>
										<ul class="star_score">
											<li><span class="star">1점</span></li>
											<li><span class="star">2점</span></li>
											<li><span class="star">3점</span></li>
											<li><span class="star">4점</span></li>
											<li><span class="star">5점</span></li>
										</ul>
									</dd>
								</dl>
							</div><!-- /2015-05-10 div 추가 -->
							<dl class="form_input">
								<dt>상품평 내용입력</dt><!-- 2015-05-10 수정 -->
								<dd>
									<span class="textarea1"><textarea placeholder="상품평을 입력해주세요 (300자 이내)"></textarea></span><!-- 2015-05-10 수정 -->
								</dd>
							</dl>
							<!-- buttons --><!-- 2015-05-10 수정 -->
							<div class="btns_wrap btn2">
								<span class="btn size2 bgcolor2"><a href="#">취소</a></span><!-- 2015-06-01 수정 -->
								<span class="btn size2 bgcolor4"><a>저장</a></span>						
							</div>
							<!-- /buttons -->
						</form>
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