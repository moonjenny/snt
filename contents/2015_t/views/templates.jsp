<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<%@ include file="/contents/2015_t/views/includefile/declare.jsp"%>
<style>
.line{border-top:dotted 2px #999;margin-top:25px;margin-bottom:15px;padding-top:10px;padding-left:2px;position:relative;}
.line a{position:absolute;right:0px;top:12px;border:solid 1px #eee;padding:2px 5px;vertical-align:middle;font-size:11px;box-shadow:0 1px 2px #aaa;border-radius:3px;}
.line a::before {content:"↑";display:inline-block;width:5px;height:10px;margin:-2px 5px 2px 0;font-size:13px;font-weight:bold;}
.line h3{color:#000;font-size:24px;}
.line h4{color:#000;font-size:18px;}
.line h4:before{content:'>';display:inline-block;width:12px;color:#999;}
.quickmenu {position:relative;z-index:1;padding:5px 5px 3px;border:1px solid #999;background:#eee;margin-top:10px;}
.quickmenu a {display:inline-block;margin:0 9px;font-size:14px;line-height:1.6;color:#000;font-weight:bold;}

</style>
</head>
<body>
<%@ include file="/contents/2015_t/views/includefile/skipNavi.jsp"%>

<div class="container">
	<div class="wrap" style="width:100%;left:0"><!-- 인라인 스타일 제거 후 사용-->
		<%--@ include file="/contents/2015_t/views/includefile/ctgr_sideBar.jsp"--%>

		<div class="wrap_inner" style="width:100%;left:0"><!-- 인라인 스타일 제거 후 사용-->
			<div class="contents_wrap">
				<h3>[퍼블리싱 가이드]</h3>

				<div class="quickmenu">
					<p>
						<a href="#menu01">상단 공통</a>
						<a href="#menu09">하단 공통</a>
						<a href="#menu02">플래그</a>
						<a href="#menu03">탭메뉴</a>
						<a href="#menu04">배너</a>
						<a href="#menu05">안내 메시지</a>
						<a href="#menu06">안내 메시지 + 이미지</a>
						<a href="#menu07">서식</a>
						<a href="#menu08">버튼</a>
						
					</p>
				</div>

				<div class="line" id="menu01">
					<h4 class="gT">상단 공통</h4>
					<a href="#top">top</a>
				</div>
			</div>
			<!--header S-->
			<%@ include file="/contents/2015_t/views/includefile/header.jsp"%>
			<!--header E-->
			<!--main S-->
			<main id="contents">			
				
				<nav class="gnb main" id="topNav">
					<ul>
						<li class="current"><a>홈</a></li>
						<li><a>TV편성</a></li>
						<li><a>라임</a></li>
						<li><a>T는상품</a></li>
						<li><a>이벤트</a></li>
						<li><a>기획전</a></li>				
					</ul>
				</nav>
				<div class="gnb_wrap">
					<nav class="gnb main" id="topNav">
						<ul>
							<li class="current"><a>홈</a></li>
							<li><a>TV편성</a></li>
							<li><a>라임</a></li>
							<li><a>T는상품</a></li>
							<li><a>이벤트</a></li>
							<li><a>기획전기획전기획전기획전</a></li>				
						</ul>
					</nav>
				</div>
				<section class="contents" style="padding-bottom:0"><!-- 인라인 스타일 제거 후 사용-->	
					<nav class="gnb sub" id="topNav">
						<span class="floating_btn_back"><a href="javascript:window.history.back();">이전페이지로 바로가기</a></span>
						<h2><span>페이지 제목</span></h2>
					</nav>
				</section>
				<section class="contents contents_wrap"><!-- 여백 필요 없을때 class="contents 사용 -->					
										
					<div class="line" id="menu02">
						<h4 class="gT">플래그</h4>
						<a href="#top">top</a>
					</div>
					
					<div style="position:relative;height:120px;">					
						<!-- flag -->
						<div class="flag">
							<p class="circle lineCircle"><span class="valign"></span><span>하나SK<em>5%</em></span></p>
							<!-- <p class="circle lineCircle"><span class="valign"></span><span>사은품</span></p>							
							<p class="circle lineCircle"><span class="valign"></span><span>무이자</span></p> -->
							
						</div>
						<!-- //flag -->	
						<span class="goods_benefit2">
							<span class="rate"><em>20</em>%<span></span></span>
							<span class="sale">일시불 할인</span>
						</span>

						<div class="goods_benefit">
							<p><span>사은품</span></p>
							<p><span>무이자12</span></p>
							<p><span>무료배송</span></p>
						</div>
					</div>				


					<div class="line"  id="menu03">
						<h4 class="gT">탭메뉴</h4>
						<a href="#top">top</a>
					</div>
					<ul class="tab_group tabtype2 piece2 ui-tab-btns">
						<li><a class="current" data-tab-target="detail_tab1" style="-webkit-transition: all 300ms; transition: all 300ms;">1:1 문의하기</a></li>
						<li><a class="" data-tab-target="detail_tab2" style="-webkit-transition: all 300ms; transition: all 300ms;">나의 문의내역</a></li>
					</ul>
					
					<ul class="tab_group tabtype2 piece3 ui-tab-btns" style="margin-top:20px;">
						<li><a class="current" data-tab-target="detail_tab1" style="transition: all 300ms; -webkit-transition: all 300ms;">tab1</a></li>
						<li><a class="" data-tab-target="detail_tab2" style="transition: all 300ms; -webkit-transition: all 300ms;">tab2</a></li>
						<li><a class="" data-tab-target="detail_tab3" style="transition: all 300ms; -webkit-transition: all 300ms;">tab3</a></li>
					</ul>

					<ul class="tab_group tabtype2 piece3 line2 ui-tab-btns" style="margin-top:20px;padding:0"><!-- 인라인 스타일 제거 후 사용-->	
						<li><a class="current" data-tab-target="detail_tab1" style="transition: all 300ms; -webkit-transition: all 300ms;">주문/결제</a></li>
						<li><a class="" data-tab-target="detail_tab2" style="transition: all 300ms; -webkit-transition: all 300ms;">배송</a></li>
						<li><a class="" data-tab-target="detail_tab3" style="transition: all 300ms; -webkit-transition: all 300ms;">기간조회</a></li>
						<li><a class="" data-tab-target="detail_tab4" style="transition: all 300ms; -webkit-transition: all 300ms;">혜택</a></li>
						<li><a class="" data-tab-target="detail_tab5" style="transition: all 300ms; -webkit-transition: all 300ms;">회원</a></li>
						<li><a class="" data-tab-target="detail_tab6" style="transition: all 300ms; -webkit-transition: all 300ms;">서비스/기타</a></li>
					</ul>

					<div class="line"  id="menu04">
						<h4 class="gT">배너</h4>
						<a href="#top">top</a>
					</div>
					
					<!-- banner image -->
					<div class="eventBan">
						<ul class="BannerList">
							<li>
								<a href="#"><img src="../img/_tmp/009.jpg" alt=""></a>
							</li>
						</ul>
					</div>
					<!-- /banner image -->						

					<div class="line"  id="menu05">
						<h4 class="gT">안내 메시지</h4>
						<a href="#top">top</a>
					</div>
					<p class="message emp0">새 비밀번호를 입력해 주세요.</p>
					<p class="message emp1">새 비밀번호를 입력해 주세요.</p>
					<p class="message emp2">새 비밀번호를 입력해 주세요.</p>
					<p class="message emp3">새 비밀번호를 입력해 주세요.</p>
					<p class="message iconed emp2">새 비밀번호를 입력해 주세요.</p>

					<div class="line"  id="menu06">
						<h4 class="gT">안내 메시지 + 이미지</h4>
						<a href="#top">top</a>
					</div>
					
					<!-- no data : 게시물 -->
					<p class="list_nodata">등록된 게시물이 없습니다.</p>
					<!-- /no data -->
					<!-- no data : 게시물 -->			
					<div class="list_nodata">
						<p>등록된 게시물이 없습니다.</p>
					</div>
					<!-- /no data -->
					<!-- no data : 검색 -->
					<div class="list_nodata type2">
						<p>검색 결과가 없습니다.</p>
						<p>검색어를 다시 한 번 확인해주세요!</p>
					</div>
					<!-- /no data -->
					<div class="summaryZone">
					<div class="list_nodata">
						<p>적립금 내역이 없습니다.<br>
						적립 및 사용 이력이 있으시다면<br>기간을 길게 설정해보세요.</p><!-- 2015-05-09 수정 -->
					</div>
					</div>
					<div class="scdList">
						<!-- no data : 방송 편성표 -->
						<div class="list_nodata">
							<em class="tv_ready">X</em>
							<p><strong>상품 편성 준비중입니다.</strong></p>
							<p>잠시 편성을 위한 준비중입니다.<br>잠시만 기다려주세요.</p>		
						</div>
						<!-- /no data -->
					</div>
					<!-- //내역이 없을 경우 -->

					<div class="line" id="menu07">
						<h4 class="gT">서식</h4>
						<a href="#top">top</a>
					</div>										

					<dl class="form_input2">
						<dt>제목</dt>
						<dd>
							<span class="inputBox"><input type="password" name="" /></span>
						</dd>
					</dl>

					<dl class="form_input2">
						<dt>제목</dt>
						<dd>
							<select>
								<option></option>
							</select>
						</dd>
					</dl>

					
					<dl class="form_input">
						<dt>제목</dt>
						<dd>
							<div class="pw_area">
								<span class="inputBox"><input type="password" name="pw1" tabindex="2" autocapitalize="off"></span>
							</div>
						</dd>
					</dl>

					<dl class="form_input">
						<dt>제목</dt>
						<dd>
							<select>
								<option></option>
							</select>
						</dd>
					</dl>

					<dl class="form_input">
						<dt>주소</dt>
						<dd>										
							<div class="address_area">
								<p>
									<span>
										<span class="inputBox"><input type="text" name="addr" tabindex="2" autocapitalize="off" /></span>
									</span>
								</p>
								<p>
									<span>
										<em>-</em>
										<span class="inputBox"><input type="text" name="addr" tabindex="2" autocapitalize="off" /></span>
									</span>
								</p>
								<span class="post"><span class="btn size2 bgcolor1"><a>우편번호찾기</a></span></span>
							</div>										
							<p class="address_area2"><span class="inputBox"><input type="text" name="addr" tabindex="3" autocapitalize="off" /></span></p>
							<p class="address_area2"><span class="inputBox"><input type="text" name="addr" tabindex="4" autocapitalize="off" /></span></p>
						</dd>
					</dl>
					<dl class="form_input">
						<dt>이메일</dt>
						<dd>
							<div class="email_area">
								<p>
									<span>
										<span class="inputBox"><input type="email" placeholder="" name="email1" tabindex="9" autocapitalize="off" /></span>
									</span>
								</p>
								<p>
									<span>
										<em>@</em>
										<span class="inputBox"><input type="email" placeholder="" name="tel2" tabindex="10" autocapitalize="off" /></span>
									</span>
								</p>
							</div>							
						</dd>
					</dl>
					<div class="memInforZone" style="margin:0;padding:0"><!-- 인라인 스타일 제거 후 사용-->						
						<dl class="form_input">
							<dt>성별</dt>
							<dd>
								<div class="check">
									<ul>
										<li><input type="radio" name="gender" id="female" checked="checked"/><label for="female">여성</label></li>
										<li><input type="radio" name="gender" id="male" /><label for="male">남성</label></li>
									</ul>
								</div>
							</dd>
						</dl>
					</div>

					<dl class="form_input2 receiverinfo">
						<dt>받으시는 분</dt>
						<dd>
							<div class="receive_area">
								<span class="inputBox"><input type="text" placeholder="이름을 입력해 주세요." name="id" tabindex="1" autocapitalize="off" readonly="readonly"></span>
								<p class="delivery"><span class="btn size2 bgcolor1 adresslist"><a>배송지 목록</a></span><!-- 2015-05-04 class 추가 -->
							</p></div>
							<!-- 비회원 주문인 경우--><!-- 2015-05-02 class 추가 -->
							<div class="receive_area nomember" style="display: none;">
								<span class="inputBox"><input type="text" placeholder="" name="id" tabindex="2" autocapitalize="off"></span>
							</div>
							<!-- /비회원 주문인 경우 -->									
							<div class="delivery_list">
								<!-- 첫구매 and 기본주소 선택시
								<p class="nodata">등록하신 기본 주소가 없습니다.</p>
								<p class="nodata">최근 주문하신 주소가 없습니다.</p>
								 -->
								<!-- 배송지 목록 있을 경우 -->
								<ul>
									<li>
										<div>
											<p>홍길동 집</p>
											<p>서울특별시 중구 퇴계로 24 SK남산그린빌딩</p>
										</div>
										<p class="select"><span class="btn size1 bgcolor1"><a href="#">선택</a></span></p>
									</li>
									<li>
										<div>
											<p>홍길동 집</p>
											<p>서울특별시 중구 퇴계로 24 SK남산그린빌딩</p>
										</div>
										<p class="select"><span class="btn size1 bgcolor1"><a href="#">선택</a></span></p>
									</li>
									<li>
										<div>
											<p>홍길동 집</p>
											<p>서울특별시 중구 퇴계로 24 SK남산그린빌딩</p>
										</div>
										<p class="select"><span class="btn size1 bgcolor1"><a href="#">선택</a></span></p>
									</li>
								</ul>
								<!-- /배송지 목록 있을 경우 -->
							</div>
						</dd>
					</dl>	

					


					<div class="line" id="menu08">
						<h4 class="gT">버튼</h4>
						<a href="#top">top</a>
					</div>
					
					<div class="btns_wrap">
						<span class="btn viewmore"><a>더보기</a></span>
					</div>
					
					<div class="btns_wrap">
						<span class="btn fullwidth bgcolor6 historyback"><a>돌아가기</a></span>
					</div>
					
					<div class="btns_wrap">
						<span class="btn viewmore1"><a>더보기</a></span>
					</div>
					
					<div class="btns_wrap">
						<span class="btn size2 bgcolor2"><a href="#">비밀번호 찾기</a></span>
					</div>
					
					<!-- buttons -->
					<div class="btns_wrap">
						<span class="btn size3 bgcolor4"><a>확인</a></span>
					</div>
					<!-- /buttons -->
					
					<div class="btns_wrap">
						<span class="btn size3 bgcolor4"><a>쇼핑엔T 메인으로</a></span>
					</div>

					<div class="btns_wrap">
						<span class="btn size3 bgcolor4"><a>스토어로 이동</a></span>
					</div>
					
					<!-- buttons : 버튼 2개가 가운데 위치 -->
					<div class="btns_wrap">
						<span class="btn size3 bgcolor2"><a>취소</a></span>
						<span class="btn size3 bgcolor4"><a>확인</a></span>
					</div>
					<!-- /buttons -->
					
					<!-- buttons : 버튼 2개가 전체 너비로 위치 -->
					<div class="btns_wrap btn2">
						<span class="btn size3 bgcolor2"><a>취소</a></span>
						<span class="btn size3 bgcolor4"><a>확인</a></span>
					</div>
					<!-- /buttons -->
					
					<div class="btns_wrap btn2">
						<span class="btn size2 bgcolor2"><a>선택상품 삭제</a></span>
						<span class="btn size2 bgcolor4"><a>선택상품 장바구니 이동</a></span>						
					</div>
					
					<!-- buttons -->
					<div class="btns_wrap">
						<span class="btn fullwidth bgcolor4"><a>확인</a></span>
					</div>
					<!-- /buttons -->					
					
					<!-- buttons -->
					<div class="btns_wrap btn3">
						<span class="btn size2 bgcolor5"><a>쇼핑계속하기</a></span>
						<span class="btn size2 bgcolor4"><a>상담신청</a></span>
						<span class="btn size2 bgcolor2"><a>취소</a></span>
					</div>
					<!-- /buttons -->
					
					<!-- buttons -->
					<div class="btns_wrap btn4">
						<span class="btn size2 bgcolor5"><a>상품평 작성</a></span>
						<span class="btn size2 bgcolor5"><a>교환</a></span>
						<span class="btn size2 bgcolor5"><a>반품</a></span>
						<span class="btn size2 bgcolor5"><a>1:1 문의</a></span>
					</div>
					<!-- /buttons -->
					
					<div class="cartwrap" style="padding:0;">
					<div class="goods_state" style="margin:0;padding:0;border:0;">					
					
					<div class="btns_wrap btn3">
						<span class="btn size2 bgcolor2"><a>삭제</a></span>
						<span class="btn size2 acdntype ui-mypage-switch" data-target="opt_change"><a>옵션/수량변경</a></span><!-- 2015-06-01 수정 -->
						<span class="btn size2 bgcolor4"><a>바로구매</a></span>
					</div>
					
					</div>
					</div>
					
					<!-- buttons -->
					<div class="btns_wrap">
						<span class="btn fullwidth bgcolor5 cscenter"><a>고객센터 바로가기</a></span>
					</div>
					<!-- /buttons -->
					
					<!-- buttons -->
					<div class="btns_wrap">
						<span class="btn fullwidth bgcolor5 cscenter callcenter"><a href="tel:0801301003">콜센터 연결하기</a></span>
					</div>
					<!-- /buttons -->
					
					<div class="btns_wrap search_tv" style="margin:0;padding:0;margin-bottom:20px"><!-- 인라인 스타일 제거 후 사용-->	
						<span class="btn fullwidth bgcolor5"><a href="#.">TV로 검색 결과보기</a></span>
					</div>

					<div class="line" id="menu09">
						<h4 class="gT">하단 공통</h4>
						<a href="#top">top</a>
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
<%--@ include file="/contents/2015_t/views/includefile/scriptlink.jsp"--%>
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