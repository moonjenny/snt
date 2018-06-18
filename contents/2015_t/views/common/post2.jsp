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
					<h2><span>우편번호 찾기</span></h2>
					<ul class="tab_group tab_post ui-tab-btns">
						<li>
							<a class="current" >지번주소</a>
						</li>
						<li>
							<a >도로명주소</a>
						</li>
					</ul>
					<!-- 지번주소 -->
					<div id="post1" class="post_wrap ui-tab-content" style="display:block;">

						<!-- 2016-08-11 -->
						<div class="result">
							<h3 class="st">입력 주소</h3>
							<div class="address_post">
								<p><span class="inputBox"><input type="text" value="12345" readonly="readonly"></span></p>
								<p><span class="inputBox"><input type="text" value="서울특별시 광진구 자양2동" readonly="readonly"></span></p>
							</div>
							<p class="address_area2"><span class="inputBox"><input type="text" class="add_detail"></span></p>

							<p class="addr_select"><span>검색된 지번/도로명 주소 중 사용하실 주소를 선택해주세요.</span></p>
													
							<h3 class="st">
								<input type="radio" id="addr1" name="addr"> 
								<label for="addr1">도로명 주소</label>
							</h3>						
							<div class="address_post">
								<p><span class="inputBox"><input type="text" readonly="readonly"></span></p>
								<p><span class="inputBox"><input type="text" readonly="readonly"></span></p>
							</div>
							<p class="address_area2"><span class="inputBox"><input type="text" class="add_detail"></span></p>

							<h3 class="st">
								<input type="radio" id="addr2" name="addr">
								<label for="addr2">지번 주소</label>
							</h3>
							<div class="address_post">
								<p><span class="inputBox"><input type="text" readonly="readonly"></span></p>
								<p><span class="inputBox"><input type="text" readonly="readonly"></span></p>
							</div>
							<p class="address_area2"><span class="inputBox"><input type="text" class="add_detail"></span></p>

							<div class="btns_wrap btn2">
								<span class="btn size2 bgcolor2"><a>취소</a></span>
								<span class="btn size2 bgcolor4"><a>확인</a></span>
							</div>
						</div>
						<!-- 2016-08-11 //-->
						
					</div>
					<!-- //지번주소 -->

					<!-- 도로명주소 -->
					<div id="post2" class="post_wrap ui-tab-content" style="display:none;">
						
						<!-- 2016-08-11 -->
						<div class="result">
							<h3 class="st">입력 주소</h3>
							<div class="address_post">
								<p><span class="inputBox"><input type="text" value="12345" readonly="readonly"></span></p>
								<p><span class="inputBox"><input type="text" value="서울특별시 광진구 자양2동" readonly="readonly"></span></p>
							</div>
							<p class="address_area2"><span class="inputBox"><input type="text" class="add_detail"></span></p>

							<p class="addr_select"><span>검색된 지번/도로명 주소 중 사용하실 주소를 선택해주세요.</span></p>
													
							<h3 class="st">
								<input type="radio" id="addr1" name="addr"> 
								<label for="addr1">도로명 주소</label>
							</h3>						
							<div class="address_post">
								<p><span class="inputBox"><input type="text" readonly="readonly"></span></p>
								<p><span class="inputBox"><input type="text" readonly="readonly"></span></p>
							</div>
							<p class="address_area2"><span class="inputBox"><input type="text" class="add_detail"></span></p>

							<h3 class="st">
								<input type="radio" id="addr2" name="addr">
								<label for="addr2">지번 주소</label>
							</h3>
							<div class="address_post">
								<p><span class="inputBox"><input type="text" readonly="readonly"></span></p>
								<p><span class="inputBox"><input type="text" readonly="readonly"></span></p>
							</div>
							<p class="address_area2"><span class="inputBox"><input type="text" class="add_detail"></span></p>

							<div class="btns_wrap btn2">
								<span class="btn size2 bgcolor2"><a>취소</a></span>
								<span class="btn size2 bgcolor4"><a>확인</a></span>
							</div>
						</div>
						<!-- 2016-08-11 //-->

					</div>
					<!-- //도로명주소 -->
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