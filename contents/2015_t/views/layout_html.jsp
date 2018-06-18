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
				<nav class="gnb">
					<ul>
						<li><a>TV편성</a></li>
						<li><a class="current">베스트</a></li>
						<li><a>기획전</a></li>
						<li><a>이벤트</a></li>
					</ul>
				</nav>
				<section class="contents">
				
					<span class="floating_btn_back"><a href="javascript:window.history.back();">이전 페이지로 바로가기</a></span>
					<h2><span>카테고리명</span></h2>
					<span class="floating_btn_right"><a class="view_category">전체 카테고리 보기</a></span>
					<%@ include file="/contents/2015_t/views/includefile/ctgr_fulldown.jsp"%>	
					
					<!-- tab -->
					<div class="toggleView">
						<ul class="tab_group tab_detail piece2 ui-tab-btns">
							<li><a class="">tab1</a></li>
							<li><a class="" >tab2</a></li>
						</ul>
						<div id="detail_tab1" class="ui-tab-content" style="display:block;">
							tab 1111111							
						</div>
						<div id="detail_tab2" class="ui-tab-content" style="display:none;">
						
							<!-- accordion -->
							<div class="tooggle_box active">
								<div class="toggle_tit ui-accordion-btn ui-evt-bound">
									<p>상품고시정보<em></em></p>
								</div>
								<div class="toggle_con">
									<div class="toggle_con_padding">
										<ul class="listtype1">
											<li><em>종류</em>미니 파우치</li>
											<li><em>소재</em>타폴린(PVC)</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="tooggle_box">
								<div class="toggle_tit ui-accordion-btn ui-evt-bound">
									<p>배송정보<em></em></p>
								</div>
								<div class="toggle_con">
									<div class="toggle_con_padding">
										<ul class="listtype1">
											<li><em>종류</em>미니 파우치</li>
											<li><em>소재</em>타폴린(PVC)</li>
										</ul>
									</div>
								</div>
							</div>
							<!-- /accordion -->		
									
						</div>
					</div>
					<!-- /tab -->
					
					<!-- 별점 -->
					<div class="selectscore">
						<dl class="form_input2">
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
						<dl class="form_input2">
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
						<dl class="form_input2">
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
					</div>
					<!-- /별점 -->
					
					<!-- 내역이 없을 경우 -->
					<p class="list_nodata">등록된 게시물이 없습니다.</p>					
					<div class="list_nodata">
						<p>등록된 게시물이 없습니다.</p>
					</div>
					<div class="list_nodata type2">
						<p>검색결과가 없습니다.</p>
					</div>
					<div class="scdList">
						<!-- no data -->
						<div class="list_nodata">
							<p><img src="../img/img_noitem.png" alt="상품 편성 준비 중입니다." /></p>
						</div>
						<!-- /no data -->
					</div>
					<!-- //내역이 없을 경우 -->					
					
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