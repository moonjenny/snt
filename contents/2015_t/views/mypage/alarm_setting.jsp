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
					<h2><span>나의 방송알림</span></h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>나의 방송알림</span></h2>
					</nav><!-- 2016-06-24 -->
					<div class="mypage_wrap">
						
						<div class="user_info">
                        	<div class="memberphone">
                        		<em class="phone"><span>홍길동</span>님의 휴대전화번호 : <strong>010-5678-8765</strong></em>
								<div class="change">변경</div>
                            </div>
                        </div>
						
						<div class="contents_wrap">
							<ul class="mark dot"> 
								<li>휴대폰 번호를 확인바랍니다. <br>
								  본인의 휴대폰 번호가 아니실 경우 ‘휴대폰 번호 변경’ 버튼을 터치 해주세요.</li>
								<li>방송 30분전 SMS를 통해 알려드리는 서비스입니다.</li>
								<li>21:00 ~ 익일 09:00 사이 방송의 경우 20:00에 안내 SMS가 발송 됩니다.</li>
							</ul>
							<div class="alarm_wrap alarmgoods"><!-- 2015-05-02 class 추가 -->
								<ul class="alarm_goods">
									<li>
										<div class="goods">
											<p class="goods_img"><img src="../../img/_tmp/005_1.jpg" alt=""></p>
											<div class="goods_name">무방부제 무발색제 싱가포르 화적포 스타일! 너비향 육포 2종</div>
											<div class="goods_price">
												<span class="sell"><em>287,100</em>원</span>
												<span class="sale"><em>139,700</em>원</span>
											</div>
											<!-- <p class="select">
												<span class="btn size1 bgcolor4"><a href="#">해제</a></span>
											</p> -->
										</div>
										<p class="alarm_txt">~2016. 05. 28 / 기간 내 1회 발송</p>
									</li>
								</ul>
							</div>
							<div class="agree">
								<dl>
									<dt>수신 기간</dt>
									<dd>
										<div class="check_box">
											<input type="radio" id="agree1" name="agree1">
											<label for="agree1">2주일 이내 (~2016. 05. 29)</label>
										</div>
										<div class="check_box">
											<input type="radio" id="agree2" name="agree1">
											<label for="agree2">1개월 이내 (~2016. 06. 15)</label>
										</div>
									</dd>
								</dl>
								<dl>
									<dt>수신 횟수</dt>
									<dd>
										<div class="check_box">
											<input type="radio" id="agree3" name="agree2">
											<label for="agree3">1회</label>
										</div>
										<div class="check_box">
											<input type="radio" id="agree4" name="agree2">
											<label for="agree4">매회 방송시</label>
										</div>
									</dd>
								</dl>
								<dl>
									<dt>수신 동의</dt>
									<dd>
										<div class="check_box">
											<input type="radio" id="agree5" name="agree3">
											<label for="agree5">동의</label>
										</div>
										<div class="check_box">
											<input type="radio" id="agree6" name="agree3">
											<label for="agree6">동의 안함</label>
										</div>
									</dd>
								</dl>
							</div>
						</div>
						<div class="btns_wrap btn2">
							<span class="btn size2 bgcolor2"><a>취소</a></span>
							<span class="btn size2 bgcolor4"><a>저장</a></span>
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