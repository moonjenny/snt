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
					<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
					<h2><span>휴면고객안내</span></h2>

					<div class="privacy">
						<em class="logo"></em>
						<p><strong>고객님의 계정은 1년간 쇼핑엔티 서비스를<br>이용한 기록이 없어 별도로 분리보관 되었습니다.</strong></p>
						<div>
							<table>
								<tr>
									<th>주요내용</th>
									<td>1년간 로그인 및 구매기록이 없는 회원의 개인정보의 분리보관</td>
								</tr>
								<tr>
									<th>근거법령</th>
									<td>정보통신망 이용촉진 및 정보보호등에 관한 법률 제29조</td>
								</tr>								
								<tr>
									<th>분리 보관된 회원정보</th>
									<td>회원가입 시 입력한 모든 회원정보</td>
								</tr>
								<tr>
									<th>복구방법</th>
									<td>고객센터를 통한 본인확인 후 정상적으로 이용하실 수 있습니다.</td>
								</tr>
							</table>
						</div>
						<!-- 2017-10-12 버튼 영역 이미지로 수정 -->
						<div class="p_btn">
							<a><img src="../../img/Pbtn_callcenter.gif"></a>
							<a><img class="end" src="../../img/Pbtn_confirm.gif"></a>
						</div>
						<!-- 2017-10-12 버튼 영역 이미지로 수정 -->
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
