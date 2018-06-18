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
				<nav class="gnb main" id="topNav">
					<ul>
						<li><a href="home.jsp">홈</a></li>
						<li class="current"><a href="tv_schedule.jsp">TV편성</a></li>
						<li><a href="#">라임</a></li>
						<li><a href="recommend.jsp">T는상품</a></li>
						<li><a href="event.jsp">이벤트</a></li>
						<li><a href="promotion.jsp">기획전</a></li>					
					</ul>
				</nav>
				<section class="mainContents">
					<div class="tvDate">
						<ol>
							<li><a><span>10월 24일</span></a></li>
							<li><span>10월 25일</span></li>
							<li><a><span></span></a></li>
						</ol>
					</div>
					<div class="scdList">
						<!-- no data -->
						<div class="list_nodata"><!-- 2016-07-22 : 이미지 및 텍스트 변경 -->
							<em class="tv_ready">X</em>
							<p><strong>상품 편성 준비중입니다.</strong></p>
							<p>잠시 편성을 위한 준비중입니다.<br>잠시만 기다려주세요.</p>		
						</div>
						<!-- /no data -->
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
<script type="text/javascript" src="/contents/2015_t/resources/js/jquery.easing.1.3.min.js"></script>
<!-- <script type="text/javascript">
$(document).ready(function () {
	
UI = {
	Load: function(){
		UI.Rolling();
	},

	Rolling: function(){
		var ground = $('.topbanner'),
			imgs_wrap = ground.children('.topbanner ul'),
			imgs = imgs_wrap.children(),
			size = imgs.height();

		//default
		imgs_wrap.css('top',-size);
		imgs_wrap.children('li:last').prependTo(imgs_wrap);

		var prev = function(){
			imgs_wrap.stop().animate({'top':0}, 300, 'easeInExpo', function(){
				$(this).children('li:last').prependTo(this);
				$(this).css({'top':-size});
			});
		}

		var next = function(){
			imgs_wrap.stop().animate({'top':-(size*2)}, 300, 'easeInExpo', function(){
				$(this).children('li:first').appendTo(this);
				$(this).css({'top':-size});
			});
		}

		var start = function(){
			set_interval = setInterval(function(){
				next();
			}, 5000);//5초 자동롤링
		}
		start();
	}
}

$(document).ready(function(){
	UI.Load();
});

var objwidth = $('.topbanner ul li img').width();
var objheight = objwidth/8;
$('.topbanner').css("height",+objheight+"px");

});
</script> -->
<script type="text/javascript">
jQuery('.ui-more-container').length && ui_more.init(listAdd);
function listAdd() {
	ui_loading.attachLoading();//로딩이미지 block
    //alert('바닥');
    //jQuery('.ui-more-container').append(jQuery('.ui-more-container').find('.goods_wide').clone());

	//ui_loading.detachLoading();//로딩이미지 none
};
</script>