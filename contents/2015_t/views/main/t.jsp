
<!doctype html>
<html lang="ko">
<head>
<title>쇼핑엔T 모바일 쇼핑몰</title>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, width=device-width" id="viewport">
<meta name="format-detection" content="telephone=no">
<meta name="description" content="쇼핑의 새로운 트랜드 쇼핑엔T, 회사소개 및 입점문의">
<meta name="naver-site-verification" content="7e0166f42d11622815838bde7f6e9b59c4d675bb"/>

<link rel="apple-touch-icon-precomposed" href="/contents/2015_t/img/favicon_ios.png" /><!-- iOS계열 아이콘 -->
<link rel="shortcut icon" href="/contents/2015_t/img/favicon_32x32.ico"><!-- 웹용 -->
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

<script type="text/javascript">
var api_server_uri = 'http://m-api.shoppingntmall.com/front';
var static_path = 'http://m.shoppingntmall.com';
var payment_path ='https://m.shoppingntmall.com';
</script>

<script type="text/javascript">
var mobileKeyWords = new Array('iPhone', 'iPod','iPad','Android','BlackBerry','SymbianOS','Bada','Kindle','Wii','SCH-','SPH-','CANU-','Windows Phone','Windows CE','POLARIS','Palm','webOS','Dorothy Browser','IEMobile','MobileSafari','Opera Mobi','Opera Mini','MobileExplorer','Minimo','AvantGo','NetFront','Googlebot-Mobile','Nokia','LGPlayer','SonyEricsson','HTC','hp-tablet','SKT','lgtelecom','Vodafone', 'LG', 'MOT', 'SAMSUNG');
var mobileYn = 0;
for (var i = 0 ; i < mobileKeyWords.length ; i++){
	//모바일 디바이스로 접속일때
	if (navigator.userAgent.match(mobileKeyWords[i]) != null){
		mobileYn = 1;
	}
}
</script>
</head>
<body>
<div class="skip_nav">
	<a href="#contents">본문 바로가기</a>
</div><div class="container">
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
			<ul id="categoryList">
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
					<li><a href="../goods/goods_list.jsp">test</a></li>
				<!--
				<li><a href="http://m.shoppingntmall.com/category/goods-list/10000002"><span></span>패션/잡화</a></li>
				<li><a href="http://m.shoppingntmall.com/category/goods-list/10000003"><span></span>이미용</a></li>
				<li><a href="http://m.shoppingntmall.com/category/goods-list/10000019"><span></span>가구/인테리어</a></li>
				<li><a href="http://m.shoppingntmall.com/category/goods-list/10000023"><span></span>생활가전</a></li>
				<li><a href="http://m.shoppingntmall.com/category/goods-list/10000020"><span></span>유아동</a></li>
				<li><a href="http://m.shoppingntmall.com/category/goods-list/10000022"><span></span>디지털</a></li>
				<li><a href="http://m.shoppingntmall.com/category/goods-list/10000016"><span></span>주방</a></li>
				<li><a href="http://m.shoppingntmall.com/category/goods-list/10000014"><span></span>식품</a></li>
				<li><a href="http://m.shoppingntmall.com/category/goods-list/10000021"><span></span>주방가전</a></li>
				<li><a href="http://m.shoppingntmall.com/category/goods-list/10000024"><span></span>헬스/레저</a></li>		
				<li><a href="http://m.shoppingntmall.com/category/goods-list/10000015"><span></span>생활</a></li>
				<li><a href="http://m.shoppingntmall.com/category/goods-list/10000025"><span></span>여행/서비스</a></li>
				-->
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
        <script>
    if(navigator.userAgent.toLocaleLowerCase().indexOf('shoppingntapp')>0){
    	var wrap = document.getElementsByClassName('wrap');
    	var wrapInner = document.getElementsByClassName('wrap_inner');
    	var swidth = window.screen.width;
    	wrap[0].style.width =640 - 90 +swidth +  'px';
    	wrapInner[0].style.width = swidth +  'px';
    }
</script>
	<header class="header">
		<h1><a href="http://m.shoppingntmall.com/index"><span>ShoppingnT</span></a></h1>
		<a class="nav_aside" onclick="javascript: retrieveCategoryBanner();"><span>메뉴</span></a>
		<a class="search" onclick="javascript: showSearch();" ><span>검색</span></a>
	</header>
	<div class="searchZone" >
		<fieldset>
			<legend>검색어 입력</legend>
				<p>
					<span>
						<input type="text" placeholder="검색어를 입력하세요" id="searchKeywordName" name="searchKeywordName" maxLength="40"/>
						<a class="bt" onclick="javascript: goSearch();"><em></em></a>
					</span>
				</p>
			<form name="searchFrm" id="searchFrm" >
				<input type="hidden" name="searchTxt" id="searchTxt" value="">
				<input type="hidden" name="pageNo" id="pageNo" value="1">
				<input type="hidden" name="rowCnt" id="rowCnt" value="">
				<input type="hidden" name="query" id="query" value="">		
			</form>
		</fieldset>
		<div class="search_list"> 
			<dl id="searchList">
			</dl>
		</div>
	</div>
	
		<!--header E-->
		<!--main S-->
		<main id="contents">
			<section class="contents">
				<nav class="gnb sub" id="topNav">
    				<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
    				<h2><span>로그인</span></h2>
				</nav><!-- 2016-06-24 -->
				<form id="loginForm" method="post" action="/member/login-submit" onsubmit="javascript:return false;">
					<input type="hidden" name="forwardUrl"	value="/" /> 
					<input type="hidden" name="autoLogin"	value="0" />
					<input type="hidden" name="idSave"		value="0" />

					<input type="hidden" name="passwdType"	value="crypto" />
					<div class="loginZone"><!-- 2015-04-28 수정 -->
						<div class="tit"  style="display:none"  >
    						<p>
    							<strong class="emp1"></strong>님은 이미 모바일 회원가입이 되어 있습니다. <br />로그인하면 적립금 혜택을 받으실 수 있습니다.
    						</p>
						</div>
						<fieldset>
							<legend class="blind">로그인</legend>
							<div class="input_box">
								<ul>
									<li>
										<span class="inputBox">
											<label for="memId">
												<input type="text" id="memId" name="memId" tabindex="1" autocapitalize="off"  value="" placeholder="아이디" style="ime-mode:disabled;" onkeypress="if(event.keyCode == '13') $('#passwd').focus();" />
											</label>
										</span>
									</li>
									<li>
										<span class="inputBox">
											<label for="passwd">
												<input type="password" placeholder="비밀번호" id="passwd" name="passwd" tabindex="2" autocapitalize="off" placeholder="비밀번호" style="ime-mode:disabled;" onkeypress="if(event.keyCode == '13') login();" />
											</label>
										</span>
									</li>
								</ul>
							</div>
							<div class="login_btn"><span class="btn size3 bgcolor4"><a href="javascript:login();" id="loginButton">로그인</a></span></div><!-- 2015-04-28 수정 -->
							

							<div class="check">
								<ul>
									<li>
										<input type="checkbox" id="chk_autoLogin" tabindex="4"  />
										<label for="chk_autoLogin">자동 로그인</label>
									</li>
									<li>
										<input type="checkbox" id="chk_idSave" tabindex="5"  />
										<label for="chk_idSave">아이디 저장</label>
									</li>
								</ul>
							</div>
							<!-- 2015-04-28 수정 -->
							<div class="message">
								<p class="message emp2" id="noticeMsg" style="display:none;"></p>
							</div>
													</fieldset>
						<div class="btns_wrap btn3">
							<span class="btn size2 bgcolor2"><a href="javascript:;" id="findIdButton">아이디 찾기</a></span>
							<span class="btn size2 bgcolor2"><a href="javascript:;" id="findPasswdButton">비밀번호 찾기</a></span>
							<span class="btn size2 bgcolor5"><a href="javascript:;" id="signupButton">회원가입</a></span>
						</div>
												<div class="btns_wrap"><!-- 2015-04-28 수정 -->
																				    <span class="btn fullwidth bgcolor2"><a href="/member/nm-order/retrieve">비회원 주문/배송조회</a></span>
						</div>
						<div class="btns_wrap"><!-- 2015-04-28 수정 -->
							<p class="cacao_txt">카카오톡 계정으로 간편하게 로그인하세요.</p>
						    <span class=  "btn fullwidth cacao" ><a href="javascript:kakaoLogin();" id="kakaoLoginButton" >카카오톡 로그인</a></span>
                        </div>
					</div>
				</form>
				<form id="kakaoAppLoginForm" method="post" action="/member/kakaoLoginWithKakaoId" onsubmit="javascript:return false;">
					<input type="hidden" name="forwardUrl"	value="/" /> 
					<input type="hidden" name="id"	id="kakaoId" value="" /> 
                </form>
				<form id="kakaoWebLoginForm" method="post" action="/member/kakaoLogin" onsubmit="javascript:return false;">
					<input type="hidden" name="forwardUrl"	value="/" /> 
                </form>
			</section>
		</main>
		<!--main E-->
		<!--footer S-->
        <script type="text/javascript" src="/contents/2015_t/resources/js/jquery-2.1.1.min.js"></script>
<main id="postPopLayer" style="display:none;">
	<section class="contents" id="postFindPart" >
		<h2><span>우편번호 찾기</span></h2>
		<ul class="tab_group tab_post ui-tab-btns">
			<li>
				<a class="current">지번주소</a>
			</li>
			<li>
				<a>도로명주소</a>
			</li>
		</ul>
		<!-- 지번주소 -->
		<div id="post1" class="post_wrap ui-tab-content" style="display:block;">
			<div class="tit">
				<p><em>주소의 동(읍/면/리)또는 마지막 부분</em>을<br />입력하신 후 검색을 누르세요.</p>
			</div>
			<fieldset>
				<ul>
					<li>
						<div class="addr_area1">
							<em>주소명</em>
							<span class="inputBox"><label for="dongName"><input type="text" placeholder="주소명 입력" id="dongName" name="dongName" tabindex="1" autocapitalize="off" /></label></span>
							<p class="search"><span class="btn size2 bgcolor5"><a href="#N" onclick="javascript:searchPostSubmit('0');return false;">검색</a></span></p>
						</div>
					</li>
				</ul>
				<p class="list_nodata" id="addrNoDataMsgPart" style="display:none;">검색결과가 없습니다.</p>
			</fieldset>
			<!-- 검색결과 -->
			<div class="result"  id="addrResultPart" style="display:none;">
				<h3>검색결과</h3>
				<p class="addr_select" id="addrResultMsgPart" style="display:none;"><span>주소를 선택해 주세요.</span></p>
				<table summary="주소 검색 결과목록">
					<caption>주소를 선택해 주세요.</caption>
					<colgroup>
						<col style="width:24%;"/>
						<col style="width:76%;"/>
					</colgroup>
					<thead>
						<tr>
							<th scope="col"><p>우편번호</p></th>
							<th scope="col" colspan="2"><p>주소</p></th>
						</tr>
					</thead>
					<tbody id="addrListPart">
						
					</tbody>
				</table>
			</div>
			<!-- 로딩 : 컨텐츠 2016-07-13 -->
				<div class="loading2_wrap" id="goodsListLoadingZone" style="display:none;" currentpage="" ismoredata="">
					<div class="loading2">
						<svg height="48" width="48"  viewBox="0 0 120 120">
							<path d="m 41.351403,54.348877 c 0,0 -49.4783399,-12.652 -35.6966999,6.55192 C 19.436343,80.104717 93.314963,107.21615 110.03369,100.21236 126.75239,93.208587 86.311183,73.100937 86.311183,72.423147 c 0,-0.67778 4.29266,-62.5821903 4.29266,-62.5821903 0,0 -1.80744,-7.22973 -8.58529,-6.10008 -6.77786,1.12965 -40.66715,50.6080003 -40.66715,50.6080003 z"  stroke-dasharray="550 550"  />
						</svg>
					</div>
				</div>
			<!-- //검색결과 -->
			<div class="btns_wrap">
				<span class="btn fullwidth bgcolor2 viewmore" id="addrAddPart" style="display:none;"><a href="#N" onclick="javacript: addPostList('0');return false;">더보기</a></span>
				<span class="btn fullwidth bgcolor5 historyback"><a href="#N" onclick="javacript:history.back();return false;">돌아가기</a></span>
			</div>
		</div>
		<!-- //지번주소 -->

		<!-- 도로명주소 -->
		<div id="post2" class="post_wrap ui-tab-content" style="display:none;">
			<div class="tit">
				<p><em>시/도 및 시/군/구</em> 선택 후<br />주소명을 입력해 주세요.</p>
			</div>
			<fieldset>
				<ul>
					<li>
						<div class="addr_area2">
							<em>시/군/구</em>
							<span>
								<select id="cityCode" name="cityCode" tabindex="1">
				                      <option value="">시/도 선택</option>
									  				                </select>
							</span>
							<span>
								<select id="guCode" name="guCode" tabindex="2">
				                      <option value="">시/군/구 선택</option>
				                </select>
				            </span>
						</div>
					</li>
					<li>
						<div class="addr_area1">
							<em>도로명</em>
							<span class="inputBox"><label for="roadName"><input type="text" placeholder="도로명 입력" id="roadName" name="roadName" tabindex="3" autocapitalize="off" /></label></span>
							<p class="search"><span class="btn size2 bgcolor5"><a href="#N" onclick="javascript:searchPostSubmit('1');return false;">검색</a></span></p>
						</div>
					</li>
				</ul>
				<p class="list_nodata" id="roadaddrNoDataMsgPart" style="display:none;">검색결과가 없습니다.</p>
			</fieldset>
			<div class="boxtype1">
				<h4>주소명 검색방법</h4>
				<ol>
					<li>1. 동 + 건물명 입력 : 예) '충무로1가(동명) 중앙우체국(건물명)'</li>
					<li>2. 도로명 + 건물번호 입력 : 예) '소공로(도로명) 70(건물번호)'</li>
					<li>3. 건물명 입력 : 예) '중앙우체국(건물명)'</li>
				</ol>
			</div>
			<!-- 검색결과 -->
			<div class="result" id="roadaddrResultPart" style="display:none;">
				<h3>검색결과</h3>
				<p class="addr_select" id="roadaddrResultMsgPart" style="display:none;"><span>주소를 선택해 주세요.</span></p>
				<table summary="주소 검색 결과목록">
					<caption>주소를 선택해 주세요.</caption>
					<colgroup>
						<col style="width:24%;"/>
						<col style="width:76%;"/>
					</colgroup>
					<thead>
						<tr>
							<th scope="col"><p>우편번호</p></th>
							<th scope="col" colspan="2"><p>주소</p></th>
						</tr>
					</thead>
					<tbody id="roadaddrListPart" style="display:none;">
					</tbody>
				</table>
			</div>
			<!-- 로딩 : 컨텐츠 2016-07-13 -->
				<div class="loading2_wrap" id="goodsListLoadingZone" style="display:none;" currentpage="" ismoredata="">
					<div class="loading2">
						<svg height="48" width="48"  viewBox="0 0 120 120">
							<path d="m 41.351403,54.348877 c 0,0 -49.4783399,-12.652 -35.6966999,6.55192 C 19.436343,80.104717 93.314963,107.21615 110.03369,100.21236 126.75239,93.208587 86.311183,73.100937 86.311183,72.423147 c 0,-0.67778 4.29266,-62.5821903 4.29266,-62.5821903 0,0 -1.80744,-7.22973 -8.58529,-6.10008 -6.77786,1.12965 -40.66715,50.6080003 -40.66715,50.6080003 z"  stroke-dasharray="550 550"  />
						</svg>
					</div>
				</div>
			<!-- //검색결과 -->
			<div class="btns_wrap">
				<span class="btn fullwidth bgcolor2 viewmore" id="roadaddrAddPart" style="display:none;"><a href="#N" onclick="javacript: addPostList('1');return false;">더보기</a></span>
				<span class="btn fullwidth bgcolor6 historyback"><a href="#N" onclick="javacript:history.back();return false;">돌아가기</a></span>
			</div>
		</div>
		<!-- //도로명주소 -->
		
		<input type="hidden" id="currentPage" value="1">
        <input type="hidden" id="rowsPerPage" value="500">
        <input type="hidden" id="totalCount"  value="">
	</section>
</main>
	
<script>
//주소 검색 결과 호출
var postSearchCb;
var openPostYn = "0";

function openPostSearch(callbackFunction){
	openPostYn = "1";
	var url = location.href;
	if( url.indexOf("#postPop") < 0 ){	//= hard history back 으로 안갔을때에는 history 추가하지 않는다.
		window.history.pushState('forward', null, '#postPop');
	}
	window.scrollTo(0,1)


	postSearchCb = callbackFunction;
	
	jQuery("input#dongName").val("");
	jQuery("input#roadName").val("");
    jQuery('main#contents').hide();
    jQuery('#postPopLayer').show();
}

jQuery(document).ready(function($) {
	if (window.history && window.history.pushState) {
    	$(window).on('popstate', function() {
      		var hashLocation = location.hash;
      		var hashSplit = hashLocation.split("#!/");
      		var hashName = hashSplit[1];

      		if (hashName !== '') {
        		var hash = window.location.hash;
        		if (hash === '') {
					//= 우편번호 Open상태에서 hard history back 발생 시 주문페이지로 이동
          			if( openPostYn == "1" ){
    					//window.history.pushState('forward', null, '#postPop');
          				closePostPage();
					}
        		}
      		}
    	});
  	}
});


function closePostPage(){
    jQuery('#postPopLayer').hide();
	
    jQuery('main#contents').show();
}


function searchPostSubmit(sltPostFlag){
	
	var dongName = "";
	var cityCode = "";
	var guCode = "";
	var roadName = "";
	
	jQuery("input#currentPage").val("1");
	var currentPage = Number(jQuery("input#currentPage").val());
    var rowsPerPage = Number(jQuery("input#rowsPerPage").val());
	
	jQuery("#addrNoDataMsgPart").css('display', 'none');
	jQuery("#addrResultMsgPart").css('display', 'none');
	jQuery("#roadaddrNoDataMsgPart").css('display', 'none');
	jQuery("#roadaddrResultMsgPart").css('display', 'none');
	
	jQuery("#roadaddrAddPart").css('display', 'none');
	
	if( "1" == sltPostFlag){
    	cityCode = jQuery("#cityCode > option:selected").val();
    	guCode = jQuery("#guCode > option:selected").val();
		roadName = jQuery.trim(jQuery("input#roadName").val());
		
		if( cityCode == ""){
			var msg = "시/도를 선택해 주세요.";
			jQuery('#roadaddrNoDataMsgPart').html(msg); 
			jQuery("#roadaddrNoDataMsgPart").css('display', '');
			jQuery("#cityCode").focus();
			return false;
		}
		
		if( guCode == ""){
			var msg = "시/군/구를 선택해 주세요.";
			jQuery('#roadaddrNoDataMsgPart').html(msg); 
			jQuery("#roadaddrNoDataMsgPart").css('display', '');
			jQuery("#guCode").focus();
			return false;
		}
		
		if( roadName == ""){
			var msg = "도로명을 입력해 주세요.";
			jQuery('#roadaddrNoDataMsgPart').html(msg); 
			jQuery("#roadaddrNoDataMsgPart").css('display', '');
			jQuery("#roadName").focus();
			return false;
		}
		
		if( 2 > roadName.length ){
			var msg = "도로명은 2글자 이상 입력해 주세요.";
			jQuery('#roadaddrNoDataMsgPart').html(msg); 
			jQuery("#roadaddrNoDataMsgPart").css('display', '');
			jQuery("#dongName").focus();
			return false;
		}
	}else{
    	dongName = jQuery.trim(jQuery("input#dongName").val());
		
		if( dongName == ""){
			var msg = "지역명을 입력해 주세요.";
			jQuery('#addrNoDataMsgPart').html(msg); 
			jQuery("#addrNoDataMsgPart").css('display', '');
			jQuery("#dongName").focus();
			return false;
		}
		
		if( 2 > dongName.length ){
			var msg = "지역명은 2글자 이상 입력해 주세요.";
			jQuery('#addrNoDataMsgPart').html(msg); 
			jQuery("#addrNoDataMsgPart").css('display', '');
			jQuery("#dongName").focus();
			return false;
		}
	}
	
	var param = new Object();
	param['sltPostFlag'] = sltPostFlag;
	param['dongName'] = dongName;
	param['cityCode'] = cityCode;
	param['guCode'] = guCode;
	param['roadName'] = roadName;
	param['currentPage'] = currentPage;
	param['rowsPerPage'] = rowsPerPage;
	ui_loading.attachLoading();
	
	commonJsonAjax("/member/postno-list", param, 'json', 'POST')
	.done(function(result, textStatus, jqXHR){
		var data = result.data;
		
		if("200" == data.code) {
			if( "1" == sltPostFlag ){
				var totalCount = 0;
				
				var htm = [];
    			if("0" == data.roadaddrList.length) {
    				htm.push("검색결과가 없습니다.");
					jQuery("div.result").css('display', 'none');
    				jQuery("#roadaddrNoDataMsgPart").empty().append(htm.join('')).css('display', '');
					ui_loading.detachLoading();
    			} else {
					totalCount = data.roadaddrList[0].totalCount;
					jQuery("input#totalCount").val(totalCount);
					jQuery("#roadaddrListPart").empty();
    				jQuery.each(data.roadaddrList, function(index, model){
						htm = "";	
						htm += "<tr >	";
						htm += "	<td>"+model.postNo.substr(0,3)+"-"+model.postNo.substr(3,3)+"</td>	";
						htm += "	<td>	";
						htm += "		<p class=\"juso1\">"+model.cityName+" "+model.guName+" "+model.roadPostAddr+"</p>";
						htm += "		<p class=\"juso2\">"+model.cityName+" "+model.guName+" "+model.postAddr+"</p>	";
						htm += "	</td>	";
						htm += "</tr> ";
						var html = jQuery(htm);
						html.data("model", model).on('click', function(){
                            closePostPage();
                            postSearchCb(model.postNo.substr(0,3), model.postNo.substr(3,3), model.postSeq, model.cityName+" "+model.guName+" "+model.roadPostAddr, model.custAreaGb, model.roadAddrNo,'1');
                        });
						jQuery("#roadaddrListPart").append(html);
						
    				});
					
					if ((currentPage * rowsPerPage) < totalCount) {
						jQuery("#roadaddrAddPart").css('display', '');
					}
					
    				jQuery("div.result").css('display', '');
        			jQuery("#roadaddrListPart").css('display', '');
					ui_loading.detachLoading();
    			}
				
			}else{
			
				var htm = [];
    			if("0" == data.postArr.length) {
    				htm.push("검색결과가 없습니다.");
					jQuery("div.result").css('display', 'none');
    				jQuery("#addrNoDataMsgPart").empty().append(htm.join('')).css('display', '');
					ui_loading.detachLoading();
    			} else {
					jQuery("#addrListPart").empty();
    				jQuery.each(data.postArr, function(index, model){
						htm = "";	
    					htm += "<tr >	";
						htm += "	<td>"+model.postNo.substr(0,3)+"-"+model.postNo.substr(3,3)+"</td>	";
						htm += "	<td>	";
						if( model.note == null ){
							htm += "		<p class=\"juso1\">"+model.cityName+" "+model.guName+" "+model.dongName+"</p>";
						}else{
							htm += "		<p class=\"juso1\">"+model.cityName+" "+model.guName+" "+model.dongName+" "+model.note+"</p>";
						}
						htm += "	</td>	";
						htm += "</tr> ";
						var html = jQuery(htm);
						html.data("model", model).on('click', function(){
							var thisData = jQuery(this).data("model");
                            closePostPage();
                            postSearchCb(thisData.postNo.substr(0,3), thisData.postNo.substr(3,3), thisData.postSeq, thisData.dongDtName, thisData.custAreaGb, '','0');
                        });
						jQuery("#addrListPart").append(html);
    				});
					jQuery("div.result").css('display', '');
        			jQuery("#addrListPart").css('display', '');
					ui_loading.detachLoading();
    			}
			
			}
    	} else {
    		alert(data.message);
			ui_loading.detachLoading();
    	}
    }) 
    .fail(function(jqXHR, textStatus, errorThrown){
    	alert("시스템 오류가 발생하였습니다.");
		ui_loading.detachLoading();
    });
	
}


//주소 검색 결과 호출
function addPostList(sltPostFlag){
	
	var currentPage = Number(jQuery("input#currentPage").val());
    var rowsPerPage = Number(jQuery("input#rowsPerPage").val());
    var totalCount = Number(jQuery("input#totalCount").val());
	
	var dongName = "";
	var cityCode = "";
	var guCode = "";
	var roadName = "";
	
	if ((currentPage * rowsPerPage) < totalCount) {
        currentPage++;
        jQuery("#currentPage").val(currentPage);
	
    	jQuery("#addrNoDataMsgPart").css('display', 'none');
    	jQuery("#addrResultMsgPart").css('display', 'none');
    	jQuery("#roadaddrNoDataMsgPart").css('display', 'none');
    	jQuery("#roadaddrResultMsgPart").css('display', 'none');
    	
    	if( "1" == sltPostFlag){
        	cityCode = jQuery("#cityCode > option:selected").val();
        	guCode = jQuery("#guCode > option:selected").val();
    		roadName = jQuery.trim(jQuery("input#roadName").val());
    	}else{
        	dongName = jQuery.trim(jQuery("input#dongName").val());
    	}
    	
    	var param = new Object();
    	param['sltPostFlag'] = sltPostFlag;
    	param['dongName'] = dongName;
    	param['cityCode'] = cityCode;
    	param['guCode'] = guCode;
    	param['roadName'] = roadName;
    	param['currentPage'] = currentPage;
    	param['rowsPerPage'] = rowsPerPage;
		ui_loading.attachLoading();
    
    	commonJsonAjax("/member/postno-list", param, 'json', 'POST')
    	.done(function(result, textStatus, jqXHR){
    		var data = result.data;
    		if("200" == data.code) {
    			if( "1" == sltPostFlag ){
    				
    				var htm = [];
        			if("0" == data.roadaddrList.length) {
        				htm.push("검색결과가 없습니다.");
    					jQuery("div.result").css('display', 'none');
        				jQuery("#roadaddrNoDataMsgPart").empty().append(htm.join('')).css('display', '');
						ui_loading.detachLoading();
        			} else {
        				jQuery.each(data.roadaddrList, function(index, model){
    						htm = "";	
    						htm += "<tr >	";
    						htm += "	<td>"+model.postNo.substr(0,3)+"-"+model.postNo.substr(3,3)+"</td>	";
    						htm += "	<td>	";
    						htm += "		<p class=\"juso1\">"+model.cityName+" "+model.guName+" "+model.roadPostAddr+"</p>";
    						htm += "		<p class=\"juso2\">"+model.cityName+" "+model.guName+" "+model.postAddr+"</p>	";
    						htm += "	</td>	";
    						htm += "</tr> ";
    						var html = jQuery(htm);
    						html.data("model", model).on('click', function(){
                                closePostPage();
                                postSearchCb(model.postNo.substr(0,3), model.postNo.substr(3,3), model.postSeq, model.cityName+" "+model.guName+" "+model.roadPostAddr, model.custAreaGb, model.roadAddrNo,'1');
                            });
    						jQuery("#roadaddrListPart").append(html);
    						
        				});
    					
    					if ((currentPage * rowsPerPage) < totalCount) {
    						jQuery("#roadaddrAddPart").css('display', '');
    					}
    					
        				jQuery("div.result").css('display', '');
            			jQuery("#roadaddrListPart").css('display', '');
    					ui_loading.detachLoading();
        			}
    				
    			}else{
    			
    				var htm = [];
        			if("0" == data.postArr.length) {
        				htm.push("검색결과가 없습니다.");
    					jQuery("div.result").css('display', 'none');
        				jQuery("#addrNoDataMsgPart").empty().append(htm.join('')).css('display', '');
						ui_loading.detachLoading();
        			} else {
        				jQuery.each(data.postArr, function(index, model){
    						htm = "";	
        					htm += "<tr >	";
    						htm += "	<td>"+model.postNo.substr(0,3)+"-"+model.postNo.substr(3,3)+"</td>	";
    						htm += "	<td>	";
    						if( model.note == null ){
    							htm += "		<p class=\"juso1\">"+model.cityName+" "+model.guName+" "+model.dongName+"</p>";
    						}else{
    							htm += "		<p class=\"juso1\">"+model.cityName+" "+model.guName+" "+model.dongName+" "+model.note+"</p>";
    						}
    						htm += "	</td>	";
    						htm += "</tr> ";
    						var html = jQuery(htm);
    						html.data("model", model).on('click', function(){
    							var thisData = jQuery(this).data("model");
                                closePostPage();
                                postSearchCb(thisData.postNo.substr(0,3), thisData.postNo.substr(3,3), thisData.postSeq, thisData.dongDtName, thisData.custAreaGb, '','0');
                            });
    						jQuery("#addrListPart").append(html);
        				});
    					jQuery("div.result").css('display', '');
            			jQuery("#addrListPart").css('display', '');
    					ui_loading.detachLoading();
        			}
    			
    			}
        	} else {
        		alert(data.message);
				ui_loading.detachLoading();
        	}
        }) 
        .fail(function(jqXHR, textStatus, errorThrown){
        	alert("시스템 오류가 발생하였습니다.");
			ui_loading.detachLoading();
        });
	}
}
jQuery(function(){

	
	jQuery('input#dongName').on('keyup', function(e){
		jQuery("#addrNoDataMsgPart").css('display', 'none');
		if (13 == e.keyCode) {
			searchPostSubmit('0');
		}
		
	});
	
	jQuery('input#roadName').on('keyup', function(e){
		jQuery("#roadaddrNoDataMsgPart").css('display', 'none');
		if (13 == e.keyCode) {
			searchPostSubmit('1');
		}
	});
    //= 시/도 선택시 시/군/구 AJAX 조회
    jQuery("#cityCode").change(function() {
    
    	jQuery("#roadaddrNoDataMsgPart").css('display', 'none');
    	jQuery("div.result").css('display', 'none');
    	
    	var htm = [];
    	htm.push("<option value=''>시/군/구 선택</option>");
    	var cityCode = jQuery("#cityCode").val();
    	
    	var param = new Object();
    	param['cityCode'] = cityCode;
    
    	commonJsonAjax("/member/gu-list", param, 'json', 'POST')
    	.done(function(result, textStatus, jqXHR){
    		var data = result.data;
        	if("200" == data.code) {
    			if("0" != data.guList.length) {
    				jQuery.each(data.guList, function(index, model){
    					htm.push("<option value='" + model.guCode + "'>" + model.guName + "</option>");
    				});
        			jQuery("#guCode").empty().append(htm.join(''));
    				jQuery("#guCode option:first").attr('selected', 'selected');
    			}
    		} else {
    			if("220.1" == data.code || "401" == data.code) {
    				checkLogin();
    			} else {
    				alert(data.message);
    				//window.location.reload(true);
    			}
        	}
    	})
    	.fail(function(jqXHR, textStatus, errorThrown){
    		alert("시스템 오류가 발생하였습니다.");
        });
    });
    
    //= 시/군/구 선택시 메시지 비노출
    jQuery("#guCode").change(function() {
    	jQuery("#roadaddrNoDataMsgPart").css('display', 'none');
    	jQuery("div.result").css('display', 'none');
    });
});

</script><form id="authSmsFrom" method="post">
	<input type="hidden" id="sms_chk" value="0" />
	<input type="hidden" name="sms_phoneno" />
	<input type="hidden" name="sms_key" />
</form>
<script type="text/javascript">
var authSms = {
	form : jQuery('#authSmsFrom'),
	
	authNumberSize : 5, // 인증번호 길이
	delayYn : 0, // 발송후 제한중인지 여부
	delaySecond : 12, // 발송후 발송제한 시간 (초) 
	
	/**
	 * 인증 초기화
	 */
	init : function() {
		this.form.find('input').val('');
		return;
	},
	
	/**
	 * 인증여부 조회
	 * @return Boolean
	 */
	isConfirm : function() {
		return ( 1 == this.form.find('input#sms_chk').val());
	},
	
	/**
	 * 발송
	 * @param _phoneNo
	 * @param _successFn
	 * @param _failFn
	 * @param _confrimOkFn
	 * @param _args
	 */
	send : function(_phoneNo, _successFn, _failFn, _confrimOkFn, _args) {
		var me = this,
			param = {},
		    resultMsg = '';
		
		if( me.isConfirm() ){
			resultMsg = '인증이 이미 완료 되었습니다.';
			me.notice(_successFn, _args, resultMsg);
			return;
		}
		
		if( me.isDelay() ) {
			resultMsg = '이미 발송되었습니다. 인증번호를 입력해 주세요.';
			me.notice(_successFn, _args, resultMsg);
			return;
		}
		
		me.init();
		
		if( !me.checkFormat(_phoneNo) ) {
			resultMsg = '올바른 휴대전화 번호를 입력해 주세요.';
			me.notice(_failFn, _args, resultMsg);
			return;
		}
		
		param['phoneno'] = _phoneNo;
		
		commonAjax(
			'/member/auth/sms/send', param, "json", "POST"
		).done(function(data, textStatus, jqXHR) {
			if( data.code == 200 ) {
				me.form.find('input[name="sms_phoneno"]').val(_phoneNo);
				me.form.find('input[name="sms_key"]').val(data.key);
				resultMsg = '인증번호를 입력해 주세요.';
				me.delay();
				me.notice(_successFn, _args, resultMsg);
			} else if( data.code == 201 || data.code == 202 ) {
				if( data.code == 201) resultMsg = '인증이 이미 완료 되었습니다.'; // 기존 번호
				else if( data.code == 202) resultMsg = '인증이 이미 완료 되었습니다.'; // 기인증 번호 
				me.delayClear();
				me.form.find('input#sms_chk').val(1);
				me.notice(_confrimOkFn, _args, resultMsg);
			} else {
				if( data.message ) resultMsg = data.message;
				else resultMsg = "시스템 에러가 발생했습니다.\n잠시 후 다시 시도 해 주세요.";
				me.notice(_failFn, _args, resultMsg);
			}
		}).fail(function(jqXHR, textStatus, errorThrown) {
			if (_debug) console.log("에러", "실패 : " + errorThrown);
			resultMsg = "시스템 에러가 발생했습니다.\n잠시 후 다시 시도 해 주세요.";
			me.notice(_failFn, _args, resultMsg);
		});
		return;
	},
	
	/**
	 * 인증번호 확인
	 * @param _no - 인증번호
	 * @param _successFn
	 * @param _failFn
	 * @param _args
	 */
	confirm : function(_no, _successFn, _failFn, _args) {
		var me = this,
			param = {},
	    	resultMsg = '';
		
		if(me.isConfirm()) return;
		
		if( !_no || _no.length != me.authNumberSize ) {
			resultMsg = '인증번호를 올바르게 입력해 주세요.';
			me.notice(_failFn, _args, resultMsg);
			return;
		}
		
		param['phoneno'] = me.form.find('input[name="sms_phoneno"]').val();
		param['key']     = me.form.find('input[name="sms_key"]').val();
		param['no']      = _no;
		
		commonAjax(
			'/member/auth/sms/confirm', param, "json", "POST"
		).done(function(data, textStatus, jqXHR) {
			if( data.code == 200 ) {
				me.form.find('input#sms_chk').val(1);
				resultMsg = '인증이 완료 되었습니다.';
				me.delayClear();
				me.notice(_successFn, _args, resultMsg);
			} else if( data.code == 400 ) {
				resultMsg = '인증번호가 일치하지 않습니다.';
				me.notice(_failFn, _args, resultMsg);
			} else {
				resultMsg = data.message;
				me.notice(_failFn, _args, resultMsg);
			}
		}).fail(function(jqXHR, textStatus, errorThrown) {
			if (_debug) console.log("에러", "실패 : " + errorThrown);
			resultMsg = "시스템 에러가 발생했습니다. 잠시 후 다시 시도 해 주세요.";
			me.notice(_failFn, _args, resultMsg);
		});
		return;
	},
	
	notice: function(_fn, _args ,_msg) {
		if( !_fn ) {
			alert(_msg);
			return;
		}
		
		_args = _args || [];
		_args.push(_msg);
		_fn.apply(null, _args);
		return;
	},
	
	/**
	 * 발송 일시제한중 여부
	 * @return Boolean
	 */
	isDelay : function() {
		return ( 1 == authSms.delayYn );
	},
	
	/**
	 * 발송 일시제한
	 */
	delay: function() {
		var me = this;
		
		authSms.delayYn = 1;
		setTimeout( me.delayClear , me.delaySecond * 1000);
		return;
	},
	
	/**
	 * 발송 일시제한 해제
	 */
	delayClear: function() {
		authSms.delayYn = 0;
		return;
	},
	
	checkFormat : function(_str) {
		var reg_phone = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
		if( _str ) {
			return reg_phone.test(_str);	
		}  
		return false;
	},
	
	isNotEmpty : function(_str) {
		var obj = String(_str);
		if(obj == null || obj == undefined || obj == 'null' || obj == 'undefined' || obj == '' ) {
			return false;
		} else {
			return true;
		}
	},
	
	isEmpty : function(_str) {
		return !this.isNotEmpty(_str);
	}
};
</script><main id="verifyUser" style="display:none">
	<section class="contents">
		<nav class="gnb cate" id="topNav">
    		<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
    		<h2><span id="title">회원 확인</span></h2>
		</nav>
		<form id="verifyForm" method="post" action="/member/checkUserWithUserInfo" onsubmit="javascript:return false;">
			<ol class="step" id="joinStepInfo" style="display:none">
    			<li class="current"><span><u>1</u>가입확인</span></li><!-- 2016-06-13 : 텍스트 수정 -->
    			<li><span><u>2</u>약관동의</span></li>
    			<li><span><u>3</u>회원정보</span></li>
    			<li><span><u>4</u>가입완료</span></li>
    		</ol>
			<ol class="step half" id="nmOrderStepInfo" style="display:none">
				<!-- 2015-05-07 수정 -->
				<li class="current"><span><u>1</u>주문자정보</span></li><!-- 2016-06-13 텍스트 수정 -->
				<li><span><u>2</u>약관동의</span></li>
				<!-- /2015-05-07 수정 -->
			</ol>
			<div class="memSrchZone"><!-- 2015-04-28 수정 -->
				<div class="tit"  style="display:none"  >
					<p>
						<strong class="emp1"></strong>님은 이미 모바일 회원가입이 되어 있습니다. <br />로그인하면 적립금 혜택을 받으실 수 있습니다.
					</p>
				</div>
				<div class="tit" id="idInfo" style="display:none">
					<p>회원가입 시 등록 된 생년월일과 휴대폰 번호를 입력해주세요.<br>입력하신 휴대폰 번호로 인증번호가 발송 됩니다.</p>
				</div>		
				<div class="tit" id="pwInfo" style="display:none">
					<p>아이디 및 회원가입 시 등록 된 생년월일과 휴대폰 번호를 입력해주세요.<br>입력하신 휴대폰 번호로 인증번호가 발송 됩니다.</p>
				</div>		
				<div class="tit" id="joinInfo" style="display:none">
					<p>기존 회원 가입여부를 확인하는 단계입니다.</p>
					<p>아래 개인정보를 입력해 주세요.</p>
				</div>		
				<div class="tit" id="nmOrderInfo" style="display:none">
					<p>주문자정보를 입력하는 단계입니다.</p>
					<p>아래 개인정보를 입력해 주세요.</p>
				</div>
				
				
				<div class="pw_change type2">
					<div id="memIdLayer" style="display:none">
						<dl class="form_input2">
							<dt><label for="memId">아이디</label></dt>
							<dd>
								<span class="inputBox"><input type="text" id="memId" name="memId" tabindex="1" autocapitalize="off" style="ime-mode:disabled;"/></span>
							</dd>
						</dl>
						<p id="idErr1" class="message emp2" style="display:none">아이디를 입력해주세요.</p>
						<p id="idErr2" class="message emp2" style="display:none">한글 및 특수문자는 입력이 불가능합니다.</p>
						<p id="idErr3" class="message emp2" style="display:none">6~15자 이내로 입력해주세요.</p>
					</div>
					<div>
						<dl class="form_input2">
							<dt><label for="name">이름</label></dt>
							<dd>
								<span class="inputBox"><input type="text" id="name" name="name" tabindex="2" autocapitalize="off" style="ime-mode:disabled;" onkeypress="if(event.keyCode == '13') $('#passwd').focus();"/></span>
							</dd>
						</dl>
						<p id="nameErr1" class="message emp2" style="display:none">이름을 입력해주세요.</p>
						<p id="nameErr2" class="message emp2" style="display:none">특수문자는 입력이 불가능합니다.</p>
						<p id="nameErr3" class="message emp2" style="display:none">40Byte 이내로 입력해주세요.</p>
						<p id="nameErr4" class="message emp2" style="display:none">공백은 입력이 불가능합니다.</p>
					</div>
					<div>
						<dl class="form_input2">
							<dt>생년월일</dt>
							<dd>
								<div class="phone_area">
									<p>
										<span>
											<select id="birthYear" tabindex="3" >
										    																												<option value="1920" >1920년</option>
																								    																											<option value="1921" >1921년</option>
																								    																											<option value="1922" >1922년</option>
																								    																											<option value="1923" >1923년</option>
																								    																											<option value="1924" >1924년</option>
																								    																											<option value="1925" >1925년</option>
																								    																											<option value="1926" >1926년</option>
																								    																											<option value="1927" >1927년</option>
																								    																											<option value="1928" >1928년</option>
																								    																											<option value="1929" >1929년</option>
																								    																											<option value="1930" >1930년</option>
																								    																											<option value="1931" >1931년</option>
																								    																											<option value="1932" >1932년</option>
																								    																											<option value="1933" >1933년</option>
																								    																											<option value="1934" >1934년</option>
																								    																											<option value="1935" >1935년</option>
																								    																											<option value="1936" >1936년</option>
																								    																											<option value="1937" >1937년</option>
																								    																											<option value="1938" >1938년</option>
																								    																											<option value="1939" >1939년</option>
																								    																											<option value="1940" >1940년</option>
																								    																											<option value="1941" >1941년</option>
																								    																											<option value="1942" >1942년</option>
																								    																											<option value="1943" >1943년</option>
																								    																											<option value="1944" >1944년</option>
																								    																											<option value="1945" >1945년</option>
																								    																											<option value="1946" >1946년</option>
																								    																											<option value="1947" >1947년</option>
																								    																											<option value="1948" >1948년</option>
																								    																											<option value="1949" >1949년</option>
																								    																											<option value="1950" >1950년</option>
																								    																											<option value="1951" >1951년</option>
																								    																											<option value="1952" >1952년</option>
																								    																											<option value="1953" >1953년</option>
																								    																											<option value="1954" >1954년</option>
																								    																											<option value="1955" >1955년</option>
																								    																											<option value="1956" >1956년</option>
																								    																											<option value="1957" >1957년</option>
																								    																											<option value="1958" >1958년</option>
																								    																											<option value="1959" >1959년</option>
																								    																											<option value="1960" >1960년</option>
																								    																											<option value="1961" >1961년</option>
																								    																											<option value="1962" >1962년</option>
																								    																											<option value="1963" >1963년</option>
																								    																											<option value="1964" >1964년</option>
																								    																											<option value="1965" >1965년</option>
																								    																											<option value="1966" >1966년</option>
																								    																											<option value="1967" >1967년</option>
																								    																											<option value="1968" >1968년</option>
																								    																											<option value="1969" >1969년</option>
																								    																											<option value="1970" >1970년</option>
																								    																											<option value="1971" >1971년</option>
																								    																											<option value="1972" >1972년</option>
																								    																											<option value="1973" >1973년</option>
																								    																											<option value="1974" >1974년</option>
																								    																											<option value="1975" >1975년</option>
																								    																											<option value="1976" >1976년</option>
																								    																											<option value="1977" >1977년</option>
																								    																											<option value="1978" >1978년</option>
																								    																											<option value="1979" >1979년</option>
																								    																											<option value="1980" selected>1980년</option>
																								    																											<option value="1981" >1981년</option>
																								    																											<option value="1982" >1982년</option>
																								    																											<option value="1983" >1983년</option>
																								    																											<option value="1984" >1984년</option>
																								    																											<option value="1985" >1985년</option>
																								    																											<option value="1986" >1986년</option>
																								    																											<option value="1987" >1987년</option>
																								    																											<option value="1988" >1988년</option>
																								    																											<option value="1989" >1989년</option>
																								    																											<option value="1990" >1990년</option>
																								    																											<option value="1991" >1991년</option>
																								    																											<option value="1992" >1992년</option>
																								    																											<option value="1993" >1993년</option>
																								    																											<option value="1994" >1994년</option>
																								    																											<option value="1995" >1995년</option>
																								    																											<option value="1996" >1996년</option>
																								    																											<option value="1997" >1997년</option>
																								    																											<option value="1998" >1998년</option>
																								    																											<option value="1999" >1999년</option>
																								    																											<option value="2000" >2000년</option>
																								    																											<option value="2001" >2001년</option>
																								    																											<option value="2002" >2002년</option>
																								    																											<option value="2003" >2003년</option>
																								    																											<option value="2004" >2004년</option>
																								    																											<option value="2005" >2005년</option>
																								    																											<option value="2006" >2006년</option>
																								    																											<option value="2007" >2007년</option>
																								    																											<option value="2008" >2008년</option>
																								    																											<option value="2009" >2009년</option>
																								    																											<option value="2010" >2010년</option>
																								    																											<option value="2011" >2011년</option>
																								    																											<option value="2012" >2012년</option>
																								    																											<option value="2013" >2013년</option>
																								    																											<option value="2014" >2014년</option>
																								    																											<option value="2015" >2015년</option>
																								    																											<option value="2016" >2016년</option>
																								                                                </select>
										</span>
									</p>
									<p>
										<span>
											<select id="birthMonth" tabindex="4" >
												<option value="">선택(월)</option>
																									<option  value="01" >1월</option>
																									<option  value="02" >2월</option>
																									<option  value="03" >3월</option>
																									<option  value="04" >4월</option>
																									<option  value="05" >5월</option>
																									<option  value="06" >6월</option>
																									<option  value="07" >7월</option>
																									<option  value="08" >8월</option>
																									<option  value="09" >9월</option>
																									<option  value="10" >10월</option>
																									<option  value="11" >11월</option>
																									<option  value="12" >12월</option>
																								
                                            </select>
										</span>
									</p>
									<p>
										<span>
											<select id="birthDate" tabindex="5" >
                                              <option value="">선택(일)</option>
												                                                  <option  value="01" >1일</option>
												                                                    <option  value="02" >2일</option>
												                                                    <option  value="03" >3일</option>
												                                                    <option  value="04" >4일</option>
												                                                    <option  value="05" >5일</option>
												                                                    <option  value="06" >6일</option>
												                                                    <option  value="07" >7일</option>
												                                                    <option  value="08" >8일</option>
												                                                    <option  value="09" >9일</option>
												                                                    <option  value="10" >10일</option>
												                                                    <option  value="11" >11일</option>
												                                                    <option  value="12" >12일</option>
												                                                    <option  value="13" >13일</option>
												                                                    <option  value="14" >14일</option>
												                                                    <option  value="15" >15일</option>
												                                                    <option  value="16" >16일</option>
												                                                    <option  value="17" >17일</option>
												                                                    <option  value="18" >18일</option>
												                                                    <option  value="19" >19일</option>
												                                                    <option  value="20" >20일</option>
												                                                    <option  value="21" >21일</option>
												                                                    <option  value="22" >22일</option>
												                                                    <option  value="23" >23일</option>
												                                                    <option  value="24" >24일</option>
												                                                    <option  value="25" >25일</option>
												                                                    <option  value="26" >26일</option>
												                                                    <option  value="27" >27일</option>
												                                                    <option  value="28" >28일</option>
												                                                    <option  value="29" >29일</option>
												                                                    <option  value="30" >30일</option>
												                                                    <option  value="31" >31일</option>
												                                              </select>
										</span>
									</p>
								</div>
							</dd>
						</dl>
						<input type="hidden" name="birthday" id="birthday"/>
						<p id="birthdayErr1" class="message emp2" style="display:none">태어난 월을 선택해주세요.</p>
						<p id="birthdayErr2" class="message emp2" style="display:none">태어난 일을 선택해주세요.</p>
					</div>
					<div>
						<dl class="form_input2">
							<dt>휴대폰번호</dt>
							<dd>
								<div class="phone_area">
									<p>
										<span>
											<select id="hp1" name="hp1" tabindex="6" >
                                                  <option value="010">010</option>
                                                  <option value="011">011</option>
                                                  <option value="016">016</option>
                                                  <option value="017">017</option>
                                                  <option value="018">018</option>
                                                  <option value="019">019</option>
                                            </select>
										</span>
									</p>
									<p>
										<span>
											<em>-</em>
											<span class="inputBox"><input type="tel" value="" id="hp2" name="hp2" tabindex="7" autocapitalize="off"  maxlength="4"/></span>
										</span>
									</p>
									<p>
										<span>
											<em>-</em>
											<span class="inputBox"><input type="tel" value="" id="hp3" name="hp3" tabindex="8" autocapitalize="off"  maxlength="4"/></span>
										</span>
									</p>
								</div>
							</dd>
						</dl>
						
						
						<p id="hpErr1" class="message emp2" style="display:none">휴대폰 번호를 입력해주세요.</p>
						<p id="hpErr2" class="message emp2" style="display:none">휴대폰 번호 형식이 올바르지 않습니다. <br>확인 후 다시 입력해주세요.</p>
						<p id="hpErr3" class="message emp2" style="display:none">인증요청 하신 휴대폰 번호를 다른 번호로 변경하셨습니다. <br>해당 번호로 다시 인증 받으세요.</p>
							
						<div class="btns_wrap"><span class="btn size2 bgcolor4" id="sBtn"><a href="javascript:verifyUser();" id="authBtn">확인</a></span></div>
						<input type="hidden" name="methodType" id="methodType"/>
					</div>
					<div id="smsVerifyDiv" style="display:none">
						<dl class="form_input2">
							<dt><label for="number">인증번호</label></dt>
							<dd>
								<span class="inputBox"><input type="text" value="" id="no" tabindex="9" autocapitalize="off" /></span>
							</dd>
						</dl>
						
						<p id="authErr1" class="message emp2" style="display:none">인증번호를 입력해주세요. <br>통신 상황에 따라 5분 정도 소요될 수 있습니다.</p>
						<p id="authErr2" class="message emp2" style="display:none">인증번호를 입력해주세요.</p>
						<p id="authErr3" class="message emp2" style="display:none">인증번호가 일치하지 않습니다. <br>인증번호를 요청 할 때마다 인증번호가 갱신되어 발송 됩니다.<br>마지막으로 받은 인증번호를 입력해주세요.</p>
								
    					<div class="btns_wrap"><span class="btn size2 bgcolor4"><a href="javascript:smsAuth();">확인</a></span></div>
					</div>
				</div>
			</div>
		</form>
	</section>
</main>
<!--main E-->
<script type="text/javascript">

//= 본인확인 Open 여부
var openVerifyYn = "0";
jQuery(document).ready(function($) {
	if (window.history && window.history.pushState) {
    	$(window).on('popstate', function() {
      		var hashLocation = location.hash;
      		var hashSplit = hashLocation.split("#!/");
      		var hashName = hashSplit[1];

      		if (hashName !== '') {
        		var hash = window.location.hash;
        		if (hash === '') {
					//= 우편번호 Open상태에서 hard history back 발생 시 주문페이지로 이동
          			if( openVerifyYn == "1" ){
    					//window.history.pushState('forward', null, '#verify');
          				closeAuthPage();
          				initAuthValue();
					}
        		}
      		}
    	});
  	}
});


	var needSmsAuthType = ["find-pw", "find-id"];
	
	var succCallbackFunction,
	    failCallbackFunction,
		mMethodType,
		tempResult;
		
	/**
	* 본인확인 창 open 함수
	* methodType 		: "join" | "easy-join" | "find-id" | "find-pw" | "nm-order" | "easy-nm-order" | "nm-ret" 
	* showAuthPage 	: function
	* failFunction 	: function
	**/
	function showAuthPage(methodType, succ, fail){
		openVerifyYn = "1";
    	var url = location.href;
    	if( url.indexOf("#forward") < 0 ){	//= hard history back 으로 안갔을때에는 history 추가하지 않는다.
    		window.history.pushState('forward', null, '#verify');
    	}
    	window.scrollTo(0,1);	
		
	
	
		mMethodType = methodType;
		succCallbackFunction = succ;
		failCallbackFunction = fail;
		
		//휴대전화 인증이 필요한 메소드
		if(jQuery.inArray(mMethodType, needSmsAuthType) >= 0){
			jQuery('#sBtn').removeClass('bgcolor4');
			jQuery('#sBtn').addClass('bgcolor5');
			jQuery('#authBtn').text('인증번호 요청');		
		}
		if(methodType=="join"){
			jQuery('#verifyUser #joinStepInfo').show();
			jQuery('#verifyUser #joinInfo').show();
			jQuery('#verifyUser #title').text('회원가입');
		}
		if(methodType=="find-id"){
			jQuery('#idInfo').show();
			jQuery('#verifyUser #title').text('아이디 찾기');
		}
		if(methodType=="find-pw"){
			jQuery('#pwInfo').show();
			jQuery('#verifyUser #title').text('비밀번호 찾기');
		}
		if(methodType=="nm-order"){
			jQuery('#nmOrderStepInfo').show();
			jQuery('#nmOrderInfo').show();
			jQuery('#verifyUser #title').text('비회원 주문하기');
		}
		
		if(mMethodType =="find-pw"){
			jQuery('#verifyUser #memIdLayer').show();
		}
		jQuery('main#contents').hide();
		jQuery('main#verifyUser').show();
		jQuery('#verifyUser #methodType').val(mMethodType);
	}
	
	function closeAuthPage(){
		openVerifyYn = "0";
		jQuery('main#contents').show();
		jQuery('main#verifyUser').hide();
	}
	
	
	function initAuthValue(){
		succCallbackFunction = null;
		failCallbackFunction = null;
		tempResult = null;
		jQuery('#verifyUser #memIdLayer').hide();
		jQuery('#verifyUser #memId').val('');
		jQuery('#verifyUser #name').val('');
		jQuery('#verifyUser #birthday').val('');
		jQuery('#verifyUser #birthYear').val('1980');
		jQuery('#verifyUser #birthMonth').val('');
		jQuery('#verifyUser #birthDate').val('');
		jQuery('#verifyUser #hp1').val('010');
		jQuery('#verifyUser #hp2').val('');
		jQuery('#verifyUser #hp3').val('');
		jQuery('#verifyUser #methodType').val('');
		jQuery('#smsVerifyDiv #no').val('');
		jQuery('#verifyUser #authBtn').text('확인');
		jQuery('#verifyUser #idInfo').hide();
		jQuery('#verifyUser #pwInfo').hide();
		jQuery('#verifyUser #nmOrderInfo').hide();
		jQuery('#verifyUser #nmOrderStepInfo').hide();
		jQuery('#verifyUser #joinStepInfo').hide();
		jQuery('#verifyUser #joinInfo').hide();
		jQuery('#verifyUser #title').text('회원 확인');
		jQuery('#sBtn').removeClass('bgcolor5');
		jQuery('#sBtn').addClass('bgcolor4');
		initErrMsg();
	}
	
	
	function initErrMsg(){
		jQuery('#verifyUser #idErr1').hide();
		jQuery('#verifyUser #idErr2').hide();
		jQuery('#verifyUser #idErr3').hide();
		
		jQuery('#verifyUser #nameErr1').hide();
		jQuery('#verifyUser #nameErr2').hide();
		jQuery('#verifyUser #nameErr3').hide();
		
		jQuery('#verifyUser #birthdayErr1').hide();
		jQuery('#verifyUser #birthdayErr2').hide();
		
		jQuery('#verifyUser #hpErr1').hide();
		jQuery('#verifyUser #hpErr2').hide();
		jQuery('#verifyUser #hpErr3').hide();
		
		jQuery('#verifyUser #authErr1').hide();
		jQuery('#verifyUser #authErr2').hide();
		jQuery('#verifyUser #authErr3').hide();
	}
	
	function verifyUser(){
		initErrMsg();
		
		var pwRegType4 =  /[a-z]/; 
		var pwRegType5 =  /[~!@\#$%^&*\()\-=+_']/gi;
		var numberTest = /^\d+$/;
		
		if(mMethodType =="find-pw"){
        	var memId = jQuery('#verifyUser #memId');
    		if(memId.val() ==""){
        		jQuery('#verifyUser #idErr1').show();
    			memId.focus();
        		return;
    		}
    		if(memId.val().length <6 || memId.val().length >15){
        		jQuery('#verifyUser #idErr3').show();
    			memId.focus();
        		return;
    		}
			
			if(!pwRegType4.test(memId.val()) || pwRegType5.test(memId.val())){
        		jQuery('#verifyUser #idErr2').show();
    			memId.focus();
        		return;
			}
        		jQuery('#verifyUser #idErr1').hide();
        		jQuery('#verifyUser #idErr2').hide();
        		jQuery('#verifyUser #idErr3').hide();
			
		}
		
		
		var namePattern = /[^(ㄱ-힣0-9a-zA-Z\. )]/;
		//이름 validation
    	var name = jQuery('#verifyUser #name');
		if(name.val() ==""){
    		jQuery('#verifyUser #nameErr1').show();
			name.focus();
    		return;
		}
		if(name.val().length < 2 ){
    		jQuery('#contents #nameErr5').show();
			name.focus();
    		return;
		}
		if(namePattern.test(name.val())){
    		jQuery('#contents #nameErr2').show();
			name.focus();
    		return;
		}
		if(pwRegType5.test(name.val())){
    		jQuery('#verifyUser #nameErr2').show();
			name.focus();
    		return;
		}
		if(/\s/g.test(name.val())){
        	jQuery('#verifyUser #nameErr4').show();
        	name.focus();
        	return;
        }
		if(name.val().replace(/[\0-\x7f]|([0-\u07ff]|(.))/g,"$&$1$2").length > 40){
    		jQuery('#verifyUser #nameErr3').show();
			name.focus();
    		return;
		}
		jQuery('#verifyUser #nameErr1').hide();
		jQuery('#verifyUser #nameErr2').hide();
		jQuery('#verifyUser #nameErr3').hide();
		jQuery('#verifyUser #nameErr4').hide();
		
		//생년월일 validation
    	var bYear = jQuery('#verifyUser #birthYear');
    	var bMonth = jQuery('#verifyUser #birthMonth');
    	var bDate = jQuery('#verifyUser #birthDate');
    	
    	if(bMonth.val() ==""){
    		jQuery('#verifyUser #birthdayErr1').show();
			bMonth.focus();
    		return;
    	}
    	if(bDate.val() ==""){
    		jQuery('#verifyUser #birthdayErr2').show();
			bDate.focus();
    		return;
    	}
		jQuery('#verifyUser #birthdayErr1').hide();
		jQuery('#verifyUser #birthdayErr2').hide();
		
		//휴대전화 validation
    	var hp2 = jQuery('#verifyUser #hp2');
    	var hp3 = jQuery('#verifyUser #hp3');
		if(hp2.val() ==""){
			jQuery('#verifyUser #hpErr1').show();
			hp2.focus();
			return;
		}
		if(hp3.val() ==""){
			jQuery('#verifyUser #hpErr1').show();
			hp3.focus();
			return;
		}
		
		if(hp2.val().length <3 || !numberTest.test(hp2.val())){
			jQuery('#verifyUser #hpErr2').show();
			hp2.focus();
			return;
		}
		
		if(hp3.val().length !=4 || !numberTest.test(hp3.val())){
			jQuery('#verifyUser #hpErr2').show();
			hp3.focus();
			return;
		}
		jQuery('#verifyUser #hpErr1').hide();
		jQuery('#verifyUser #hpErr2').hide();
		
		jQuery('#verifyUser #birthday').val(bYear.val() +bMonth.val() + bDate.val() );
	
	
	var _form = $("#verifyForm");
		commonAjax(_form.attr('action'), _form.serialize(), "json", "POST").done(function(data, textStatus, jqXHR) {
            		isLoading = false;
					
					//휴대전화 인증이 필요한 메소드
					if(jQuery.inArray(mMethodType, needSmsAuthType) >= 0){
						//기회원일 경우 sms 전송
						if(data.resultCode == '90' || data.resultCode == '99'){
							tempResult = data;
							sendSms();
						}else{
                    		succCallbackFunction(data);
							//closeAuthPage();
        					//initAuthValue();
						}
					}else{
    					//closeAuthPage();
                		succCallbackFunction(data);
    					//initAuthValue();
					}
        	}).fail(function(jqXHR, textStatus, errorThrown) {
        		isLoading = false;
        		alert("시스템 에러가 발생했습니다.\n잠시 후 다시 시도 해 주세요.");
				closeAuthPage();
				initAuthValue();
    	});
	}
	function sendSms(){
		authSms.init();
		var phoneNo = jQuery("select[name=hp1]").val()+jQuery('#verifyUser #hp2').val() + jQuery('#verifyUser #hp3').val(); 
		authSms.send(phoneNo, 
			function(smsResult){//_successFn
				jQuery('#verifyUser #smsVerifyDiv').show();
				jQuery('#verifyUser #authErr1').show();
				jQuery('#smsVerifyDiv #no').focus();
			},
			function(smsResult){//_failFn
				alert(smsResult);
			
			}, 
			function(smsResult){//_confrimOkFn
				alert(smsResult);
			}
		);
		
	}
	function smsAuth(){
		var authCode = jQuery('#smsVerifyDiv #no').val();
		if(authCode.length == 0){
			alert("인증번호를 입력해주세요");
			return;
		}
		
		authSms.confirm(authCode,
			function(smsResult){//_successFn
				smsAuthOk();
			},
			function(smsResult){//_failFn
				jQuery('#verifyUser #authErr1').hide();
				jQuery('#verifyUser #authErr3').show();
			},
			null
		)
	}
	var smsAuthOk = function(){
		succCallbackFunction(tempResult);
	}
</script>
		<footer class="footer">
							<nav class="fmu">
					<ul>
													<li><a href="https://m.shoppingntmall.com/member/login">로그인</a></li>
	            								<li><a href="javascript:goCustMain()">고객센터</a></li>
						<li><a href="tel:0801301010">상담전화</a></li>
					</ul>
				</nav>
						<nav class="fmu2">
				<ul>
    				<li><a href="http://m.shoppingntmall.com/service">회사소개</a></li>
    				<li><a href="javascript: windowOpen('/common/terms');">이용약관</a></li>
    				<li><a href="javascript: windowOpen('/common/policy4');">청소년보호정책</a></li>
    				<li><a href="javascript: windowOpen('/common/policy');">개인정보취급방침</a></li>
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
    					<span><a href="javascript: appWindowOpen('http://www.ftc.go.kr/info/bizinfo/communicationView.jsp?apv_perm_no=2015301013030200491&area1=&area2=&currpage=1&searchKey=04&searchVal=1178154803&stdate=&enddate=');">사업자정보확인</a></span>
    					<span>신한은행 채무지급 보증안내</span>
					</p>
					<!--span><a href="http://m.shoppingntmall.com/common/creditKb">신한은행 채무지급 보증안내</a></span-->
				</p>		
				<p class="copy">Copyright  © SHOPPING&T. All Rights Reserved.</p>
			</address>
		</footer>
		<div class="dim" style="display:none;"></div>		<!--footer E-->
	</div><!-- end wrap_inner -->
</div><!-- end wrap -->
<span class="floating_btn_top" ><a>페이지 맨위로</a></span>
	
<script>	
	if(location.href.indexOf("/display/goods/") > 0) {
		jQuery('.floating_btn_top').css('margin-bottom', 0);
	}
</script></div><!-- end container -->
<script type="text/javascript" src="/contents/2015_t/resources/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="/contents/2015_t/resources/js/touch.js"></script>
<script type="text/javascript" src="/contents/2015_t/resources/js/jquery-mobile.ui.js"></script>
<script type="text/javascript" src="/contents/2015_t/resources/js/overflow.js"></script>
<script type="text/javascript" src="/contents/2015_t/resources/js/swipe.js"></script>
<script type="text/javascript" src="/resources/resources2014/js/cware.mobile.init.js?2014120406"></script>
<script type="text/javascript" src="/contents/2015_t/resources/js/jquery.easing.1.3.min.js"></script>
<script type="text/javascript" src="/contents/2015_t/resources/js/jquery.cookie.js"></script>
<script type="text/javascript" src="/contents/2015_t/resources/js/swiper.js"></script>
<script type="text/javascript" src="/contents/2015_t/resources/js/iscroll.js"></script>
<script type="text/javascript" src="/contents/2015_t/resources/js/loading.js"></script>
<script type="text/javascript" src="/resources/js/lib/LAB.js"></script>
<script type="text/javascript" src="/resources/js/comUtil.js"></script>
<script type="text/javascript" src="/resources/messages/ko_KR/message-common.js"></script>

<div id="tvPlayer" style="background-color:#000000; overflow-y:hidden; overflow-x:hidden;display:none;z-index:100000">
	<video id="video" type="video/mp4" style="width:100%; height:100%; display:block; z-index:999;" webkit-playsinline autoplay controls></video>
</div>
<script type="text/javascript">
// DEBUG 여부를 확인하기 위한 설정.
var _debug = true;
window.addEventListener('load', function(){window.scrollTo(0,1);});

var version = new Date().getTime() / 1000;

var searchList = []; // 최근 검색어 쿠키 저장 리스트

var ie = (function(){
	var undef, 
	v = 3,
	div = document.createElement('div'),
	all = div.getElementsByTagName('i');
	while(
		div.innerHTML = '<!--[if gt IE ' + (++v) + ']><i></i><![endif]-->',
		all[0]
	); 
	return v > 4 ? v : undef;
}());

$LAB
.queueScript("/resources/js/mypage/jquery.number.min.js")
.queueScript(ie < 9 ? '/resources/js/mypage/html5.js' : '')
.queueScript(ie < 9 ? '/resources/js/mypage/jquery.xdr-transport.js' : '')
.queueScript("/resources/js/comUtil.js?"+version)


var commonAjax = function(target_url, target_data, target_dataType, target_method) {
	return jQuery.ajax({
		url : target_url,
		type : target_method,
		data : target_data,
		dataType : target_dataType
	});
};

var commonJsonAjax = function(target_url, target_data, target_dataType, target_method) {
	return jQuery.ajax({
		url : target_url,
		type : target_method,
		data : target_data,
		dataType : target_dataType,
		cache:false,
        timeout : 30000, 
        contentType : "application/json;charset=UTF-8",
        dataType : target_dataType,
        data: JSON.stringify(target_data)
	});
};

function setMenuTop(height) {
	//$('.gnb').css('top', Number(height));
}

// 앱 카테고리 사이드바 제어
function sideOpen() {
	appCloseVideo();
	sidebar.open('c');
	retrieveCategoryBanner();
	topBarHide();
	appBarHide();
}

// 앱 검색바 제어
function searchOpen() {
	appCloseVideo();
	ui_search.viewSearchBar();
	showSearch();
	topBarHide();
	appBarHide();
	jQuery('#searchKeywordName').select();
    jQuery('#searchKeywordName').focus();
}

// dim 상태 해제 시 앱 구현 바 복구
$(".dim, .sideClose").on('click', function(){ topBarShow(); appBarShow(); });

//검색어 조회후 입력
commonAjax("/goods-search/recommKeyward", '', "json", "GET")
.done(function(data, textStatus, jqXHR){
	if(data.code =="200"){
		var keywardArr = data.data;
		if(keywardArr.length>0){
			var randomVlaue = Math.floor(Math.random() * keywardArr.length);
			var keywardBanner = keywardArr[randomVlaue];
			var text = keywardBanner.textContents;
			var link = keywardBanner.linkUrl;
			jQuery('#searchKeywordName').attr('placeholder', text);
			jQuery('#searchKeywordName').attr('link', link);
		}
    }
});

function goSearch(){
	var searchKeyword = jQuery('#searchKeywordName').val();
	var pageNo = jQuery('#pageNo').val();
	var query = jQuery('#query').val();
	var url = "";
	
	searchKeyword = searchKeyword.trim();

	var re = /[.~!@\#$%^&*\-=+|\\/:;?"`<>'_]/gi;
			  
    if(re.test(searchKeyword)){
    	alert("특수문자는 입력할 수 없습니다.");
		event.preventDefault();
		return;
	}
	
	if (searchKeyword == null || searchKeyword == '' ) {
		var linkUrl = jQuery('#searchKeywordName').attr('link');
		if(linkUrl!= null && linkUrl !=''){
			window.location.href =  "http://m.shoppingntmall.com" +jQuery('#searchKeywordName').attr('link');
		}else{
    		alert("검색어를 입력해주세요");
    		return;
		}
	} else {
	    if(comUtil.isEmpty(query)){
		    url = "/goods-search/search/"+ encodeURIComponent(searchKeyword);
		}else{
		    url = "/goods-search/search/"+ encodeURIComponent(searchKeyword)+ "?query="+query;
		}
		
		try{
			if(jQuery.cookie('searchList').split(',').indexOf(searchKeyword) != -1){
    		}else{
    			searchList.push(searchKeyword);
    			jQuery.cookie('searchList', searchList, { path: '/' });
    		}
		}catch(e){
		
		}
		
		window.location.href = "http://m.shoppingntmall.com" + url;
	}
}

// 로그인을 체크한다.
function checkLogin(forwardUrl) {
	if (confirm('로그인 후 이용 가능합니다.\n로그인페이지로 이동하시겠습니까?')) {
		if (comUtil.isEmpty(forwardUrl)) {
			window.location.replace('https://m.shoppingntmall.com/member/login');
		}
		else {
			window.location.replace('https://m.shoppingntmall.com/member/login?forwardUrl=' + encodeURIComponent(forwardUrl));
		}
	}
}

// 로그인을 체크한다.
function login(id) {
	if(id != '' && id != undefined && id != null){
		window.location.replace('https://m.shoppingntmall.com/member/login?memId=' + id);
	}else{
		window.location.replace('https://m.shoppingntmall.com/member/login');
	}
	//window.location.replace("/html/index.html#!/login");
}

function logout() {
	if (confirm('로그아웃 하시겠습니까?')) {
		window.location.replace("/member/logout");
	}
}

function aLoginCheck(forwardUrl) {
	var param = {};
	
	if( forwardUrl ) {
		param['forwardUrl'] = forwardUrl;
	}
	
	commonAjax('/member/login/check', param, 'json', 'post')
	.done(function(data, textStatus, jqXHR) {
		if( data.code == 200 ) {
			window.location.replace(data.replaceUrl);
		}
	}).fail(function(jqXHR, textStatus, errorThrown) {
		if( _debug ) console.log("에러", "실패 : " + errorThrown);
	});
}

function goCustMain() {
    window.location="http://m.shoppingntmall.com/customer/main";
}

function goApp() {
	var iOsAgent = "false";
	var AndroidAgent = "true";
	var AppFlag = "false";

	if(AppFlag == "false"){
		if(iOsAgent == "true") {
			window.location.replace("https://itunes.apple.com/kr/app/syoping-ent/id1004806037?mt=8");
		} else if(AndroidAgent == "true") {
			// window.location.replace("http://play.google.com/store/apps/details?id=com.shoppingntmall.mcapp");
			window.location.replace("market://details?id=com.shoppingntmall.mcapp");
		} else {
			alert("휴대폰에서 앱을 설치 해주십시오.");
		}
	} else {
	    // alert("쇼핑엔T 앱 \n 오픈 준비중입니다.\n 잠시만 기다려 주시기 바랍니다.");
	}
}

function goTop(){
  window.scrollTo(0,1);
}

jQuery('input#searchKeywordName').on('keydown', function(e){
	if (13 == e.which) {
		goSearch();
	}
});

function isIOSWeb(){
	var mobileKeyWords = new Array('iPhone', 'iPod','iPad');
	var iosYn = 0;
	for (var i = 0 ; i < mobileKeyWords.length ; i++){
		//모바일 디바이스로 접속일때
		if (navigator.userAgent.match(mobileKeyWords[i]) != null){
			iosYn = 1;
		}
	}
	return iosYn;
}

function isIOS(){
    return /iP(hone|od|ad)/.test(navigator.userAgent);
}
function isAndroid(){
    return /(Android)/.test(navigator.userAgent);
}

function isApp(){
    return /(shoppingntapp)/.test(navigator.userAgent);
}

function playVideo(_url, playerIdx, goodsCode, goodsName, live, price, endDate){
    var movieUrl = _url;
    
	if(!confirm('실시간 방송을 시청하시려면, 3G/4G 환경에서는 사용자 요금에 따라 요금이 부가될 수 있습니다. 시청하시겠습니까?')){
		if(endDate) {
    		endDate = new Date(endDate);
    	    var curDate = new Date();
    	    var leftTime = (endDate - curDate) / 1000;
    	    jQuery('#time').attr('leftTime', leftTime);
		} else {
    		endDate = new Date();
    	}
        return false;
    }
	
	if(endDate) {
    	endDate = new Date(endDate);
        var curDate = new Date();
        var leftTime = (endDate - curDate) / 1000;
        jQuery('#time').attr('leftTime', leftTime);
	} else {
		endDate = new Date();
	}
	
    if(_url != ""){
	
		var lbsParam = {
			said				:"LBSTEST",
			asset_id			:"10010",
			zone				:"HOT",
			path				:_url,
			request_bit_rate	:"S",
			stream_count		:"2",
			ad_path				:"none",
			protocol			:"HTTP",
			otu_encoding		:"0",
			otu_expirementime	:"120",
			client_ip			:"LBSTEST",
			said				:"0.0.0.0",
			level				:"0"
		}
		if(live){
			lbsParam.svc = "LIVE";
		}else{
			lbsParam.svc = "VOD";
		}
		commonAjax("/videoUrl", lbsParam, "json", "POST")
			.done(function(data, textStatus, jqXHR) {
    			try{
    				var resultData = JSON.parse(data.data);
    				movieUrl = resultData.content[0].content_otu;
        			if (isApp()) { 
                        live = live || "false";
                        var playParams = {
                            "src" : movieUrl,
                            "live" : live,
            				"linkUrl" : ( goodsCode != "" ? "/display/goods/"+goodsCode : "" ),
            				"price" : price,
            				"playerX" : playerIdx,
            				"title" : goodsName,
            				"endDate" : endDate
                        };
                        window.location = "netplay://playVideo?q=" + JSON.stringify(playParams);
                 	}else {
                        window.location = movieUrl;
                	}
    			}catch(e){
            		alert('동영상이 존재하지 않습니다.');
    			}
        	}).fail(function(jqXHR, textStatus, errorThrown) {
    	});
		/*
		if (isApp()) { 
            live = live || "false";
            var playParams = {
                "src" : movieUrl,
                "live" : live,
				"linkUrl" : ( goodsCode != "" ? "/display/goods/"+goodsCode : "" ),
				"price" : price,
				"playerX" : playerIdx,
				"title" : goodsName,
				"endDate" : endDate
            };
            window.location = "netplay://playVideo?q=" + JSON.stringify(playParams);
     	}else {
            window.location = movieUrl;
    	}
		*/
		
    }else{
		alert('동영상이 존재하지 않습니다.');
    }
}

function setupVideo(type, playerIdx, menuArr) 
{

console.log(JSON.stringify(menuArr));
    var r = 1;
    var heightP = 0;
    
	if(typeof endDate == "undefined") {
		endDate = "0";
	}
	
    // 임시
    if (isIOS() && !isApp()) return;
    
    if (!isIOS()) {
        r = window.devicePixelRatio;
    }
    
    if(type == "view"){
      if(isIOS()) {
          heightP = 80;
      } else {
          heightP = 80;
      }
    }
    
    var setupParams = {
        "default" : {
            "pmode" : {
                "x" :  "p",
                "y" :  "p",
                "w" :  "p",
                "h" :  "p"
            },
            "position" : {
                "x" :  "0",
                "y" :  "0",
                "w" :  "1.0",
                "h" :  "0"
            },
            "limit" : {
                "l" :  "0",
                "r" :  "1.0",
                "t" :  "0",
                "b" :  "1.0"
            },
            "mmode" : "true",
            "dmode" : "zoom",
            "menu" : {
                "top" : "true",
                "middle" : "false",
                "bottom" : "true",
                "custom" : "false"
            }
        },
        "zoom" : {
            "pmode" : {
                "x" :  "r",
                "y" :  "r",
                "w" :  "r",
                "h" :  "r"
            },
            "position" : {
                "x" :  "0.05",
                "y" :  "0.12",
                "w" :  "0.4",
                "h" :  "0"
            },
            "rarea" : {
                "l" :  "0",
                "r" :  "1.0",
                "t" :  "0",
                "b" :  "0.5"
            },
            "mmode" : "true",
            "dmode" : "zoom",
            "dtype" : "down",
            "menu" : {
                "top" : "true",
                "middle" : "true",
                "bottom" : "true",
                "custom" : "true"
            }
        },
        "full" : {
            "status" : "true",
            "mmode" : "true",
            "menu" : {
                "top" : "false",
                "middle" : "true",
                "bottom" : "true",
                "custom" : "true"
            }
        },
        "scroll" : {
            "attach" : "true",
            "limit" : {
                "l" :  "0",
                "r" :  "1.0",
                "t" :  "0",
                "b" :  "1.0"
            },
           "position" : {
               "x" :  "0",
               "y" :  String(Math.floor((heightP) * r))
           }
        }
    };
	var pramObj;
	if(menuArr){
    	pramObj = {
    		videoParam :setupParams,
    		mainmenuParam : menuArr
    	}
	}else{
    	pramObj = {
    		videoParam :setupParams
    	}
	}
	
    if(iOsAgent){
        window.location = "netplay://setupVideo?q=" + JSON.stringify(setupParams) + "&main=" + JSON.stringify(menuArr);
	}else{
        window.location = "netplay://setupVideo?q=" + JSON.stringify(pramObj);
	}
}

function sendPlayerViewStatus(status)
{
    var deem = jQuery('.deem_white');
    
    if(deem.length > 0){
        if(status == "zoom" || status == "hide"){
            deem.hide();
        }
        else{
            deem.show();
        }
    }
}

var locationParams = {
	"linkUrl" : window.location.pathname
};

// App ActionBar 숨김
function appBarHide(){
	if (isApp()) { 
		try{
			window.shoppingntapp.appActionBottomBarHide();
		}catch(e){}
	}
}

// App ActionBar 노출(단 디폴트 액션바가 노출되는 상황 조건)
function appBarShow(){
	if (isApp()) { 
		if(appActionVarDisplayYn()){
			try{
				window.shoppingntapp.appActionBottomBarShow();
			}catch(e){}
		}
	}
}

// App HeaderBar 숨김
function topBarHide(){
	if (isApp()) { 
		try{
			if(isAndroid()) {
				window.shoppingntapp.appActionTopBarHide();
			} else {
				window.location = "shoppingntapp://hideBar?q=" + JSON.stringify(locationParams);
			}
		}catch(e){}
	}
}

// App HeaderBar 노출
function topBarShow(){
	if (isApp()) {
		if(appActionVarDisplayYn()){
    		try{
    			if(isAndroid()) {
    				window.shoppingntapp.appActionTopBarShow();
    			} else {
    				window.location = "shoppingntapp://showBar?q=" + JSON.stringify(locationParams);
    			}
    		}catch(e){}
		}
	}
}

// 페이지 App ActionBar 기본 노출 여부
function appActionVarDisplayYn(){
	// var checkUrlWords = new Array('/display/goods/', '/order/purchase/','/mypage/myPage','/member/login','/member/nm-order/exist-member','/member/find-id','/member/find-pw','/member/chagne-pw-regular','/member/nm-order','/member/join','/common/terms?win=pop','/common/policy/1','/common/policy/2','/common/policy/3');
	var checkUrlWords = new Array('/display/goods/');
	var defaultDisplayYn = 1;
	var urlPath = window.location.pathname + window.location.search;
	for (var i = 0 ; i < checkUrlWords.length ; i++){
		if (urlPath.match(checkUrlWords[i]) != null){
			defaultDisplayYn = 0;
		}
	}
	return defaultDisplayYn;
}

function showSearch(){
	//jQuery.removeCookie('searchList', { path: '/' }); 
	if(jQuery.cookie('searchList')==undefined||jQuery.cookie('searchList')==""){
		jQuery.cookie('searchList', searchList, { path: '/' });
	}else{
		searchList = jQuery.cookie('searchList').split(',');
	}

	jQuery("#searchList").html("").append('<dt>최근검색어</dt>');
	if(searchList.length == 0){
		jQuery("#searchList").append('<dd><p id="searchResult0">최근 검색어 내역이 없습니다.</p></dd>');
	}else{
		var count = 1;
		for(var x = searchList.length; x > 0; x--){
			if(count > 10) break;
			jQuery("#searchList").append('<dd><a href="javascript: setSearchKeyword(\''+searchList[x-1]+'\');" id="searchResult1">'+searchList[x-1]+'</a></dd>');
			count++;
		} 
	}
	
	jQuery("#searchList").append('<dd><span class="btn size2 bgcolor8"><a>닫기</a></span></dd>');
	jQuery(".search_list dl dd .btn a").on('click', function(){  
		topBarShow(); 
		appBarShow(); 
		ui_search.hideSearchBar();
		float_header.side_close();	
		$('.wrap_inner').css('height', 'auto');	
		$('.floating_btn_top').show(); // 2016-06-30
	});
}

function setSearchKeyword(keyword){
	jQuery('#searchKeywordName').val(keyword);
	goSearch();
}

// App 동영상 닫기
function appCloseVideo() {
	if(isApp()) {
    	if(isAndroid()) {
    		try{
    			window.shoppingntapp.closeVideo();
    		}catch(e){}
    	} else {
    		window.location = "netplay://closeVideo";
    	}
	}
}

function sendAppTitleInfo(){
	    
	if(location.href.indexOf("index") <0 && location.href.indexOf("goods-list") <0 && location.href.indexOf("/display/goods/") <0 ){ 
    	var titleObj = {};
    	jQuery('.gnb.sub').hide();
    	titleObj.title = jQuery.trim(jQuery('.gnb.sub').find('h2').children('span').text());
		if(isIOS()) {
			titleObj.title = encodeURIComponent(jQuery.trim(titleObj.title));
		}
		if(jQuery('.gnb.sub').find('a').attr('href')){
			var backBtnUrl = "";
			backBtnUrl = jQuery('.gnb.sub').find('a').attr('href');
			if(backBtnUrl.substring(0,1) == "/"){
					titleObj.backBtn = encodeURIComponent("http://m.shoppingntmall.com"+backBtnUrl);
					//titleObj.backBtn = "http://m.shoppingntmall.com"+backBtnUrl;
			}else if (backBtnUrl == "javascript:;"){
				titleObj.backBtn = "javascript:window.history.back();";
			}else{
				titleObj.backBtn = backBtnUrl;
			}
		}else{
			titleObj.backBtn = "javascript:window.history.back();";
		}
    	console.log(JSON.stringify(titleObj));
    	location.href = "shoppingntapp://setTitle?main="+JSON.stringify(titleObj);
	}
}
$(document).ready(function(){
	if(isApp()){
		sendAppTitleInfo();
	}
});

function windowOpen(targetUrl) {
	if(jQuery('main#policy').length>0){
		jQuery('main#policy').remove();
	}
	commonAjax(targetUrl, '', "text", "GET")
    .done(function(data, textStatus, jqXHR){
		jQuery(data).insertAfter('main#contents');
		jQuery('main#contents').hide();
		jQuery('main#policy').show();
		scrollTo(0, 0);
    });
}

function appWindowOpen(targetUrl) {
	if(isApp()) {
		targetUrl = targetUrl.replace('https://', '');
		targetUrl = targetUrl.replace('http://', '');
		window.location = "shoppingntapp://openpc?"+targetUrl;
	}
	else {
		window.open(targetUrl, '_agree');
	}
}

function setDay() {
    var year        = jQuery("#birthYear").val();
    var month       = jQuery("#birthMonth").val();
    var day         = jQuery("#birthDate").val();
    
    var arrayMonth  = [31,28,31,30,31,30,31,31,30,31,30,31];

    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
        arrayMonth[1] = 29;
    }
    
    $("#birthDate option").remove();
    for (var i=0; i<=arrayMonth[month-1]; i++) {
		if(i==0) {
			$('#birthDate').append($("<option/>", {value: '', text: '선택(일)'}));
		} else {
			if(i < 10) {
        		$('#birthDate').append($("<option/>", {value: '0'+i, text: i+'일'}));
			} else {
				$('#birthDate').append($("<option/>", {value: i, text: i+'일'}));
			}
		}
    }

    if( day != null && day != "" ) {
		if( Number(day) > arrayMonth[month-1] ) {
            $("#birthDate option:last").attr("selected", "selected");
        } else {
            $("#birthDate").val(day);
        }
    }
}
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-80829108-1', 'auto');
  ga('send', 'pageview');
</script><script type="text/javascript" src="/resources/js/member/login.js"></script>
</body>
 
</html>