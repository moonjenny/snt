<!doctype html>
<html lang="ko">
<head>

<title>쇼핑엔T</title>
<meta charset="utf-8">
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" id="viewport">
<meta name="format-detection" content="telephone=no">
<link rel="apple-touch-icon-precomposed" href="../../img/favicon_ios.png" /><!-- iOS계열 아이콘 -->
<link rel="shortcut icon" href="../../img/favicon_32x32.ico"><!-- 웹용 -->
<link rel="stylesheet" type="text/css" href="/contents/2015_t/resources/css/layout.css"><!-- 공통 -->
<link rel="stylesheet" type="text/css" href="/contents/2015_t/resources/css/main.css"><!-- 메인 -->
<link rel="stylesheet" type="text/css" href="/contents/2015_t/resources/css/member.css"><!-- 로그인,회원가입 -->
<link rel="stylesheet" type="text/css" href="/contents/2015_t/resources/css/goods.css"><!-- 상품목록및상세 -->
<link rel="stylesheet" type="text/css" href="/contents/2015_t/resources/css/order.css"><!-- 주문결제 -->
<link rel="stylesheet" type="text/css" href="/contents/2015_t/resources/css/mypage.css"><!-- 마이페이지 -->
<link rel="stylesheet" type="text/css" href="/contents/2015_t/resources/css/customer.css"><!-- 고객센터 -->
<link rel="stylesheet" type="text/css" href="/contents/2015_t/resources/css/etc.css"><!-- 기타(푸터메뉴) -->
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body>

<!-- skipnavi -->
<div class="skip_nav">
	<a href="#contents">본문 바로가기</a>
</div>
<!-- /skipnavi -->
<div class="container">
	<div class="wrap">
		
	<div class="nav_sideBar">
		<p class="sideClose"><span><em>X</em></span></p>
		<div class="nav_side">
			 <!-- member info -->
			 <div class="info">
							<div class="box login">
					<p class="t">로그인 해주세요</p>
					<div class="myShop">
						<ul class="btnMy">
							<li><a href="javascript:goJoin();">회원가입</a></li>
							<li><a href="https://m.shoppingntmall.com/member/login">로그인</a></li>
						</ul>
					</div>
				</div>
						</div>
			<!-- /member info -->
			
					<nav class="inquiry">
				<div class="btns_wrap">
					<span class="btn fullwidth"><a href="javascript: noLoginLink('/mypage/order/list');">주문/배송 조회<span></span></a></span>
				</div>
			</nav>
					
			<!-- eventimg -->
			<nav class="eventimg">
				<p id="category_banner">
								</p>
			</nav>
			<!-- /eventimg -->
			
			<!-- category -->
			<nav class="category">
				<ul>
					<li><a href="../goods/goods_list.jsp">패션/잡화</a></li>
                    <li><a href="../goods/goods_list.jsp">이미용</a></li>
					<li><a href="../goods/goods_list.jsp">가구/인테리어</a></li>
                    <li><a href="../goods/goods_list.jsp">생활가전</a></li>
					<li><a href="../goods/goods_list.jsp">유아동</a></li>
                    <li><a href="../goods/goods_list.jsp">디지털</a></li>
					<li><a href="../goods/goods_list.jsp">주방</a></li>
                    <li><a href="../goods/goods_list.jsp">식품</a></li>
					<li><a href="../goods/goods_list.jsp">주방가전</a></li>
                    <li><a href="../goods/goods_list.jsp">헬스/케어</a></li>   
					<li><a href="../goods/goods_list.jsp">생활</a></li>				
					<li><a href="../goods/goods_list.jsp">여행/서비스</a></li>
					<!-- <li><a href="../goods/goods_list.jsp">test</a></li> -->
				</ul>
			</nav>
			<!-- /category -->
			
			<!-- service -->
			<nav class="service"><!-- 2016-06-08 : 서비스영역 추가 -->
				<ul>
									<li><a class="cen" href="javascript:goCustMain();"><span></span>고객센터</a></li>
									<li><a class="app" href="javascript: goApp();"><span></span>App 다운로드</a></li>
								</ul>
			</nav>
			<!-- /service -->
			
			<!-- today's view -->
			<div class="history">
				<h2>오늘 본 상품</h2>
				<p class="his_all"><a href="/category/todayGoodsList">전체보기</a></p>
				<div class="my_goods_wrap">					
					<ul class="goods_list" id="sidebar_goods_list">
										</ul>
					<!-- no data-->
					<p class="list_nodata type3" id="no_goods_list" style="display: none;">아직 오늘 본 상품이 없으시네요</p> 
					<!-- //no data-->
				</div>
			</div>
			<!-- /today's view -->
		</div>
	</div>

		<div class="wrap_inner">
			<!--header S-->
			
		<header class="header">
			<h1><a href="../main/home.jsp"><span>ShoppingnT</span></a></h1>
			<a class="nav_aside"><span>메뉴</span></a>
			<a class="search"><span>검색</span></a>			
		</header>
		
		<div class="searchZone"><!-- 2016-06-17 위치 변경 및 최근검색어 영역 추가 -->
			<fieldset>
				<legend>검색어 입력</legend>
				<form>
					<p>
						<span>
							<input type="text" placeholder="요즘 유행하는 핫 아이템이 궁금하다면?!" name="" id="" />
							<a class="bt"><em></em></a>
						</span>
					</p>
				</form>
			</fieldset>
			<div class="search_list"> 
				<dl>
					<dt>최근검색어</dt>
					<dd><a href="">침대</a></dd>
					<dd><a href="">간이침대</a></dd>
					<dd><a href="">이층침대</a></dd>
					<dd><a href="">매트리스</a></dd>
					<dd><a href="">쇼파형침대</a></dd>
					<dd><a href="">침대 커버</a></dd>
					<!-- 최근 검색어 없을 경우 -->
					<!-- <dd><p>최근 검색어 내역이 없습니다.</p></dd> -->
					<!-- 최근 검색어 없을 경우 //-->
					<dd>
						<span class="btn size2 bgcolor8"><a>닫기</a></span>
					</dd>
				</dl>
			</div>
		</div>
			<!--header E-->
			<!--main S-->
			<main id="contents"> 
				<section class="contents">
					<!-- <span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
					<h2><span>로그인</span></h2> -->
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>로그인</span></h2>
					</nav><!-- 2016-06-24 -->
					<form>
						<div class="loginZone">
							<fieldset>
								<legend class="blind">로그인</legend>
								<div class="input_box">
									<ul>
										<li>
											<span class="inputBox"><label for="id"><input type="text" placeholder="아이디" name="id" tabindex="1" autocapitalize="off" /></label></span>
										</li>
										<li>
											<span class="inputBox"><label for="pw"><input type="password" placeholder="비밀번호" name="pw" tabindex="2" autocapitalize="off" /></label></span>
										</li>
									</ul>
								</div>
								<div class="login_btn"><span class="btn size3 bgcolor4"><a href="#">로그인</a></span></div><!-- 2015-04-28 수정 -->
								<div class="check">
									<ul>
										<li><input type="checkbox" id="auto_login" checked="checked" /><label for="auto_login">자동 로그인</label></li>
										<li><input type="checkbox" id="id_save" /><label for="id_save">아이디 저장</label></li>
									</ul>
								</div>
								<!-- 2015-04-30 수정 -->
								<div class="message">									
									<!-- 2015-04-28 수정 -->
									<!--
									<p class="message emp2">비밀번호를 입력해 주세요.</p>
									<p class="message emp2">아이디를 입력해주세요.</p>
									<p class="message emp2">입력한 아이디 또는 비밀번호가 잘못되었습니다.</p>								
									<p class="message emp2">비밀번호 모르신다면  '비밀번호 찾기'를 누르세요!</p>
									-->
									<!-- /2015-04-28 수정 -->
								</div>
								<!-- /2015-04-30 수정 -->
							</fieldset>
							<!-- 2015-04-28 수정 -->
							<div class="btns_wrap btn3">
								<span class="btn size2 bgcolor2"><a href="#">아이디 찾기</a></span>
								<span class="btn size2 bgcolor2"><a href="#">비밀번호 찾기</a></span>
								<span class="btn size2 bgcolor5"><a href="#">회원가입</a></span>
							</div>
							<div class="btns_wrap">
								<span class="btn fullwidth bgcolor5"><a href="#"><strong>즉시 구매 (비회원 주문)</strong></a></span><!-- 2016-06-14 추가 --><!-- 상품상세 주문 버튼을 클릭해서 이동한 경우 -->
								<span class="btn fullwidth bgcolor2"><a href="#">비회원 주문/배송조회</a></span><!-- 로그인 화면으로 이동한 경우 --><!-- 2016-07-19 : 개발에 bgcolor2 클래스 미적용 -->
							</div>
							<div class="btns_wrap">
								<p class="cacao_txt">카카오톡 계정으로 간편하게 로그인하세요.</p>
								<span class="btn fullwidth cacao"><a>카카오톡 로그인</a></span>
							</div><!-- 2016-06-14 추가 -->
							<!-- /2015-04-28 수정 -->
						</div>
					</form>
				</section>
			</main>
			<!--main E-->
			<!--footer S-->
			
			<footer class="footer">
				<nav class="fmu">
					<ul>
						<li><span style="display:none;"><a>로그인</a></span><span style="display:block;"><a>로그아웃</a></span></li>
						<li><a>고객센터</a></li>
						<li><a href="tel:0801301003">상담전화</a></li>
					</ul>
				</nav>				
				<nav class="fmu2">
					<ul>
						<li><a href="../views/common/service.jsp">회사소개</a></li>
						<li><a href="../views/common/provision1.jsp">이용약관</a></li>
						<li><a href="../views/common/policy2.jsp">청소년보호정책</a></li>
						<li><a href="../views/common/policy1.jsp">개인정보취급방침</a></li>
					</ul>
				</nav>
				<address>
					<p>쇼핑엔T  대표 : 민택근</p>
					<p>서울특별시 중구 동호로310, 별관(장충동 2가, 태광산업)</p>
					<p>사업자등록번호 : 117-81-54803</p>
					<p>통신판매업 신고번호 : 2015-서울중구-0507</p>
					<p class="cs"><span>문의 : <a href="mailto:help@shoppingnt.co.kr">help@shoppingnt.co.kr</a></span></p><!-- 2016-07-04 : 메일주소 수정 -->
					<p><span class="tel"><a href="tel:0801301010">080-130-1010</a></span></p>
					
					<p class="bt">
						<span><a href="http://www.ftc.go.kr/info/bizinfo/communicationView.jsp?apv_perm_no=2015301013030200491&area1=&area2=&currpage=1&searchKey=04&searchVal=1178154803&stdate=&enddate=" target="_blank">사업자정보확인</a></span>
						<span><a href="../views/common/credit_bank.jsp">신한은행 채무지급 보증안내</a></span>
					</p>		
					<p class="copy">Copyright  © SHOPPING&T. All Rights Reserved.</p><!-- 2016-06-09 : 텍스트 수정 -->
				</address>
			</footer>
			<!-- dimmed-->
			<div class="dim" style="display:none;"></div>
			<!-- //dimmed -->
			<!--footer E-->
		</div><!-- end wrap_inner -->

	</div><!-- end wrap -->
	
	<span class="floating_btn_top"><a>페이지 맨위로</a></span>
</div><!-- end container -->

<script type="text/javascript" src="/contents/2015_t/resources/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="/contents/2015_t/resources/js/touch.js"></script>
<script type="text/javascript" src="/contents/2015_t/resources/js/jquery-mobile.ui.js"></script>
<script type="text/javascript" src="/contents/2015_t/resources/js/overflow.js"></script>
<script type="text/javascript" src="/contents/2015_t/resources/js/swipe.js"></script>
<script type="text/javascript" src="/contents/2015_t/resources/js/swiper.js"></script><!-- 2016-05-30 -->
<script type="text/javascript" src="/contents/2015_t/resources/js/iscroll.js"></script><!-- 2016-05-30 -->
</body>
</html>