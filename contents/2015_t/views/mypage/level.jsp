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
					<h2><span>나의 회원 혜택</span></h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>나의 회원 혜택</span></h2>
					</nav><!-- 2016-06-24 -->
					<div class="mypage_wrap">
						
						<div class="user_info">
                        	<div class="memberlevel">
                        		<em class="level lv2"><span>홍길동</span>님은 <strong>Platinum</strong> 등급입니다.</em><!-- 2015-05-26 , 2015-05-15 수정 -->
                            </div>
                        </div>
						
						<div class="contents_wrap">
							<h3><em class="level lv2">Platinum</em>등급 혜택</h3><!-- 2015-05-15 수정 -->
							<!-- no data
							<p class="list_nodata type3 nocoupon">발급된 쿠폰 내역이 없습니다.</p>
							 -->
							<ul class="coupon_list">
								<li onclick="">
									<p>전 상품 <em>10%</em> 할인 쿠폰</p>
									<span class="date">2014.10.25 ~ 2014.12.25</span>
								</li>
								<li onclick="">
									<p>전 상품 <em>15%</em> 할인 쿠폰</p>
									<span class="date">2014.10.25 ~ 2014.12.25</span>
								</li>
							</ul>
							<h3>회원 등급 안내</h3>
							<div class="table_wrap level">
								<table class="colTable"><!-- 2015-05-15 수정 -->
									<colgroup><!-- 2015-05-26 수정 -->
										<col /><col /><col />
									</colgroup>
									<thead>
										<tr>
											<th scope="col"><p>등급구분</p></th>
											<th scope="col"><p>조건</p></th>
											<th scope="col"><p>혜택</p></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row"><em class="level lv1">VIP</em></th><!-- 2015-05-15 수정 -->
											<td>최근 1년 10건, <span class="ib">100만원 이상</span></td><!-- 2015-05-26 수정 -->
											<td>1주 1회 쿠폰 발급</td>
										</tr>
										<tr>
											<th scope="row"><em class="level lv2">Platinum</em></th><!-- 2015-05-15 수정 -->
											<td>최근 1년 5건, <span class="ib">50만원 이상</span></td><!-- 2015-05-26 수정 -->
											<td>2주 1회 쿠폰 발급</td>
										</tr>
										<tr>
											<th scope="row"><em class="level lv3">Gold</em></th><!-- 2015-05-15 수정 -->
											<td>최근 1년 3건 <span class="ib">20만원 이상</span></td><!-- 2015-05-26 수정 -->
											<td>1달 1회 쿠폰 발급</td>
										</tr>
										<tr>
											<th scope="row"><em class="level lv4">Silver</em></th><!-- 2015-05-15 수정 -->
											<td>최근 1년 1건 이상</td>
											<td>1달 1회 쿠폰 발급</td>
										</tr>
										<tr>
											<th scope="row"><em class="level lv5">Family</em></th><!-- 2015-05-15 수정 -->
											<td>회원 가입 시</td>
											<td>첫 구매 쿠폰 발급</td>
										</tr>
									</tbody>
								</table>
							</div>						
							<div class="refer">
								<p>- 각 등급별 혜택은 해당 등급을 유지하는 동안 적용이 됩니다.</p>
								<p>- ARS 구매는 적용되지 않습니다.</p>
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