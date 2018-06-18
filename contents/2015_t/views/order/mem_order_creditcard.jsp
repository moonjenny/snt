<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<%@ include file="/contents/2015_t/views/includefile/declare.jsp"%>
<!-- html 화면 확인용 임시 스크립트 : 개발 미적용 -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	//$(".order_wrap .order_goods:nth-of-type(2)").hide();
	//$("#contactinfoh3").hide();
	//$(".receive_area.nomember").hide();
	//$(".counselask").hide();
	//$(".coupon_goods li:nth-of-type(2)").hide();
	//$(".nomempw").hide();
	//$(".btns_wrap+.btns_wrap").hide();
	
	$(".type2").click(function () {
		$(".order_wrap .order_goods:nth-of-type(2)").toggle();
	});
	
}); 
</script>
<!-- /html 화면 확인용 임시 스크립트 : 개발 미적용 -->
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
					<h2><span>신규카드등록</span></h2>
					<div class="orderZone">
						<h3 class="order_tit" id="ordererinfoh3">카드정보</h3>
						<div class="order_wrap rcvcustomer">
							<dl class="form_input">
								<dt>카드번호</dt>
								<dd>
									<div class="creditcard_area">
										<p>
											<span>
												<span class="inputBox"><input type="text" name="" tabindex="1" /></span>
											</span>
										</p>
										<p>
											<span>
												<span class="inputBox"><input type="text" name="" tabindex="2" /></span>
											</span>
										</p>
										<p>
											<span>
												<span class="inputBox"><input type="text" name="" tabindex="3" /></span>
											</span>
										</p>
										<p>
											<span>
												<span class="inputBox"><input type="text" name="" tabindex="4" /></span>
											</span>
										</p>
									</div>
								</dd>
							</dl>
							<dl class="form_input">
								<dt>유효기간</dt>
								<dd>
									<div class="cardinfo_area">
										<p>
											<span>
												<span class="inputBox"><input type="tel" placeholder="" name="" tabindex="5" autocapitalize="off" /></span>
											</span>
										</p>
										<p>
											<span>
												<em>/</em>
												<span class="inputBox"><input type="tel" placeholder="" name="" tabindex="6" autocapitalize="off" /></span>
											</span>
										</p>
										<p>
											<span><em class="monthyear">(월/년)</em></span>
										</p>
									</div>
								</dd>
							</dl>
							<dl class="form_input">
								<dt>카드 소유자</dt>
								<dd>
									<p>
										<span>
											<select name="" tabindex="7">
			                                    <option value="">본인</option>
			                                    <option value="">본인</option>
			                                    <option value="">본인</option>
			                                    <option value="">본인</option>
			                                    <option value="">본인</option>
			                                </select>
										</span>
									</p>
								</dd>
							</dl>
							<dl class="form_input">
								<dt>카드 소유자 성함</dt>
								<dd>
									<p>
										<span>
											<span class="inputBox"><input type="text" placeholder="이름 입력" name="" tabindex="8" autocapitalize="off" /></span>
										</span>
									</p>
								</dd>
							</dl>
							<dl class="form_input">
								<dt>카드 소유자 생년월일</dt>
								<dd>
									<p>
										<span>
											<span class="inputBox"><input type="text" placeholder="(예:810203)" name="" tabindex="9" autocapitalize="off" /></span>
										</span>
									</p>
								</dd>
							</dl>
							<div class="form_input">
								<p class="check address_area3"><input type="checkbox" id="myAddr" /><label for="myAddr">이 카드를 보관하여 다음 결제시에도 재사용에 동의</label></p>
							</div>
							<div class="btns_wrap">
								<span class="btn fullwidth bgcolor4"><a>확인</a></span>
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