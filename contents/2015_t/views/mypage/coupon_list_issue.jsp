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
					<h2><span>나의 쿠폰</h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>나의 쿠폰</span></h2>
					</nav><!-- 2016-06-24 -->
					<div class="contents_wrap couponwrap"><!-- 2015-05-09 외각 div 추가 -->
					
						<!-- 2015-05-09 수정 -->
						<ul class="tab_group tabtype2 piece2">
							<li><a class="current" data-tab-target="detail_tab1" style="transition: all 300ms; -webkit-transition: all 300ms;">보유 쿠폰</a></li>
							<li><a class="" data-tab-target="detail_tab2" style="transition: all 300ms; -webkit-transition: all 300ms;">완료 쿠폰</a></li>
						</ul>
						<!-- /2015-05-09 수정 -->	

						<!-- 보유 쿠폰 -->
						<p class="headmsg"><strong>홍길동</strong>님의 보유 쿠폰은 <em>24</em>개 입니다.</p><!-- 2015-05-09 수정 -->							
						
						<div class="mypage_wrap">
							<p class="refer">* 쌀, 금, 렌탈, 여행, 상품권 등에는 적용되지 않을 수 있습니다.</p><!-- 2015-05-09 수정 -->
							<div class="table_wrap">
								<table class="colTable aligncenter"><!-- 2015-05-09 수정 -->
									<colgroup>
										<col style="width:37%;"/>
										<col style="width:35%;"/>
										<col style="width:28%;"/>
									</colgroup>
									<thead>
										<tr>
											<th scope="col"><p>쿠폰명</p></th>
											<th scope="col"><p>혜택</p></th><!-- 2015-05-09 수정 -->
											<th scope="col"><p>사용기간</p></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><!-- 2015-05-09 수정 -->
												<p>신규 회원 할인 쿠폰</p>
												<p class="emp3">금일 마감 쿠폰</p>
											</td>
											<td>
												<span class="rate">5%</span>
												<span class="max">최대 50,000원 할인</span>
											</td>
											<td><!-- 2015-05-09 수정 -->
												<p class="ib">2014.01.03</p><!-- 2015-05-09 수정 -->
												<p class="ib">13:00 ~ 14:00</p><!-- 2015-05-09 수정 -->
											</td>
										</tr>
										<tr>
											<td><!-- 2015-05-09 수정 -->
												<p>정액 쿠폰</p>
											</td>
											<td>
												<span class="amount">5,000원</span>
											</td>
											<td><!-- 2015-05-09 수정 -->
												<p>2014.01.03</p>
												<p>~2014.01.03</p>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 2015-05-09 수정 -->
							<div class="btns_wrap">
								<span class="btn viewmore"><a>더보기</a></span>
							</div>
							<!-- /2015-05-09 수정 -->
						</div>
						<!-- 내역이 없을 경우 -->
						<div class="list_nodata">
							<p>보유한 쿠폰 내역이 없습니다.</p><!-- 2015-05-09 수정 -->
						</div>
						<!-- //내역이 없을 경우 -->
						<!-- /보유 쿠폰 -->
						
						<!-- 완료 쿠폰 -->
						<p class="headmsg"><strong>홍길동</strong>님의 사용완료 쿠폰은 <em>6</em>개 입니다.</p><!-- 2015-05-09 수정 -->							
						
						<div class="mypage_wrap">
							<div class="table_wrap">
								<table class="colTable aligncenter"><!-- 2015-05-09 수정 -->
									<colgroup>
										<col style="width:37%;"/>
										<col style="width:35%;"/>
										<col style="width:28%;"/>
									</colgroup>
									<thead>
										<tr>
											<th scope="col"><p>쿠폰명</p></th>
											<th scope="col"><p>혜택</p></th><!-- 2015-05-09 수정 -->
											<th scope="col"><p>사용내역</p></th><!-- 2015-05-09 수정 -->
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><!-- 2015-05-09 수정 -->
												<p>신규 회원 할인 쿠폰</p>
												<p class="emp3">금일 마감 쿠폰</p>
											</td>
											<td>
												<span class="rate">5%</span>
												<span class="max">최대 50,000원 할인</span>
											</td>
											<td><!-- 2015-05-09 수정 -->
												<p class="ib">2014.01.03</p><!-- 2015-05-09 수정 -->
												<p class="ib">13:00 ~ 14:00</p><!-- 2015-05-09 수정 -->
											</td>
										</tr>
										<tr>
											<td><!-- 2015-05-09 수정 -->
												<p>정액 쿠폰</p>
											</td>
											<td>
												<span class="amount">5,000원</span>
											</td>
											<td><!-- 2015-05-09 수정 -->
												<p>2014.01.03</p>
												<p>~2014.01.03</p>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 2015-05-09 수정 -->
							<div class="btns_wrap">
								<span class="btn viewmore"><a>더보기</a></span>
							</div>
							<!-- /2015-05-09 수정 -->
						</div>
						<!-- 내역이 없을 경우 -->
						<div class="list_nodata">
							<p>사용 완료된 쿠폰 내역이 없습니다.</p><!-- 2015-05-09 수정 -->
						</div>
						<!-- //내역이 없을 경우 -->
						<!-- /완료 쿠폰 -->
						
					</div><!-- /2015-05-09 외각 div 추가 -->
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