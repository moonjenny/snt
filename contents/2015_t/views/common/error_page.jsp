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
			
			<!--main S-->
			<main id="contents">
				<section class="contents"><!-- 2015-05-18 수정 -->
					<!-- <span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span> --><!-- gnb와 이전버튼 삭제 -->
					<h2><span>시스템 장애 안내</span></h2><!-- 2015-05-14 수정 -->

					<div class="error_wrap">
						<em class="notfound">X</em>
						<p><strong>요청하신 페이지를 찾을 수 없습니다.</strong></p><!-- 2015-05-14 수정 -->
						<p>이용에 불편을 드려 죄송합니다.<br />찾으시는 페이지가 존재하지 않거나, <br />현재 사용할 수 없는 페이지입니다. <br />확인 후 다시 시도해주시기 바랍니다.</p><!-- 2015-05-14 수정 -->
					</div>
					
					<!-- buttons --><!-- 2015-05-14 추가 -->
					<div class="btns_wrap">
						<span class="btn size3 bgcolor4"><a>쇼핑엔T 메인으로</a></span>
					</div>
					<!-- /buttons -->
					
				</section>
			</main>
			<!--main E-->
		</div><!-- end wrap_inner -->
	</div><!-- end wrap -->

	<%@ include file="/contents/2015_t/views/includefile/page_top.jsp"%>

</div><!-- end container -->
<%@ include file="/contents/2015_t/views/includefile/scriptlink.jsp"%>
</body>
</html>