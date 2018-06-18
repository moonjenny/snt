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
						<li><a>베스트</a></li>
						<li><a class="current">기획전</a></li>
						<li><a>이벤트</a></li>
					</ul>
				</nav>
				<section class="contents">
					<span class="floating_btn_back"><a href="javascript:window.history.back();">이전 페이지로 바로가기</a></span>
					<h2><span>기획전 타이틀</span></h2>
					<!-- 기획전 배너 -->
					<div class="promotion listview"><!-- 2015-04-24 class명 수정 -->
						<ul class="BannerList">
							<li>
								<a href="#"><img src="../../img/_tmp/017_1.jpg" alt="" /></a>
							</li>
						</ul>
					</div>
					<!-- //기획전 배너 -->
					<!-- 2015-04-24 히스토리 삭제 -->
					<!-- 소팅 -->
					<div class="list_select">
						<p class="list_total">상품 Total : <span>600</span>개</p>
						<div class="list_sort">
							<select>
								<option>인기순</option><!-- 2015-04-24 인기순 추가 -->
								<option>최신순</option>
								<option>낮은가격순</option>
								<option>높은가격순</option>
							</select>
							<!-- 2015-04-24 sort 선택 삭제 -->
						</div>
					</div>
					<!-- //소팅 -->
					<!-- 상품 목록 -->
					<div class="goods_wrap ui-more-container">
						<!-- 갤러리형 -->
						<ul id="goodsImage" class="goods_image" style="display:block;">
							<li>
								<div class="goods">
									<div class="goods_img">
										<img src="../../img/_tmp/006.jpg" alt="" />										
									</div>
									<div class="goods_name">무방부제 무발색제 싱가포르</div>
									<div class="goods_price">
										<del><em>287,100</em>원</del>
										<span><em>139,700</em>원</span>
									</div>
									<span class="wish on"><em>찜하기</em></span><!-- 2015-04-27 위치 변경 -->
								</div>
							</li>
							<li>
								<div class="goods">
									<div class="goods_img">
										<a><img src="../../img/_tmp/007.jpg" alt="" /></a>
									</div>
									<div class="goods_name">무방부제 무발색제 2종</div>
									<div class="goods_price">
										<del></del>
										<p class="counsel">상담 전용 상품입니다.</p>
									</div>
									<span class="wish"><em>찜하기</em></span><!-- 2015-04-27 위치 변경 -->
								</div>
							</li>
							<li>
								<div class="goods">
									<div class="goods_img">
										<a><img src="../../img/_tmp/007.jpg" alt="" /></a>
									</div>
									<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
									<div class="goods_price">
										<del></del>
										<span><em>139,700</em>원</span>
									</div>
									<span class="wish"><em>찜하기</em></span><!-- 2015-04-27 위치 변경 -->
								</div>
							</li>
							<li>
								<div class="goods">
									<div class="goods_img">
										<!-- 품절임박 -->
										<p class="almostsold"><span><em>품절임박</em></span></p>
										<!-- //품절임박 -->
										<a><img src="../../img/_tmp/007.jpg" alt="" /></a>
									</div>
									<div class="goods_name">무방부제 무발색제 2종</div>
									<div class="goods_price">
										<del><em>287,100</em>원</del>
										<span><em>139,700</em>원</span>
									</div>
									<span class="wish"><em>찜하기</em></span><!-- 2015-04-27 위치 변경 -->
								</div>
							</li>
							<li>
								<div class="goods">
									<div class="goods_img">
										<!-- 일시품절 표시 -->
										<p class="soldout"><span><em>일시품절</em></span></p>
										<!-- //일시품절 표시 -->
										<a><img src="../../img/_tmp/007.jpg" alt="" /></a>
									</div>
									<div class="goods_name">무방부제 무발색제 2종</div>
									<div class="goods_price">
										<del><em>287,100</em>원</del>
										<span><em>139,700</em>원</span>
									</div>
									<span class="wish"><em>찜하기</em></span><!-- 2015-04-27 위치 변경 -->
								</div>
							</li>
							<li>
								<div class="goods"></div>
							</li>
						</ul>
						<!-- //갤러리형 -->
					</div>
					<!-- //상품 목록 -->
					<!-- banner image --><!-- 2015-04-28 배너 추가 -->
					<div class="eventBan"><!-- 2015-05-27 수정 -->
						<a href="#"><img src="../../img/_tmp/009.jpg" alt=""></a>
					</div>
					<!-- /banner image -->
					
					<div class="ui-more-loading"><img src="../../img/loading.png" alt="" /></div>
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
<script type="text/javascript">
jQuery('.ui-more-container').length && ui_more.init(listAdd);
function listAdd() {
	ui_loading.attachLoading();//로딩이미지 block
    //alert('바닥');
    //jQuery('.ui-more-container').append(jQuery('.ui-more-container').find('.goods_wide').clone());

	//ui_loading.detachLoading();//로딩이미지 none
};
</script>
</body>
</html>