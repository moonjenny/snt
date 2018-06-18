document.write("<script type='text/javascript' src='/resources/js/debug.js'></script>");
document.write("<script type='text/javascript' src='/resources/js/comUtil.js'></script>");

$(document).ready(function(){
	var form = $("#auth"),
		chk_all = $("input:checkbox:first", form),
		chk_else = $("input:checkbox:not(:first)", form);
	
	chk_all.click(function(){
	    if( $(this).is(":checked") ) {
	        chk_else.prop("checked", true);
	    } else {
	        chk_else.prop("checked", false);
	    }
	});
	
	chk_else.click(function(){
	    allCnt = chk_else.length;
	    checkedCnt = chk_else.filter(":checked").length;
	     
	    if( allCnt == checkedCnt ) {
	        chk_all.prop("checked", true);
	    } else {
	        chk_all.prop("checked", false);
	    }
	});
});

function agree() {
	if( !$("#agree1").is(":checked") ){
		alert("약관에 동의하셔야 주문이 가능합니다.");
		return false;
	}
	if( !$("#agree2").is(":checked") ){
		alert("결제/배송/반품/교환/환불 등과 관련된 sms수신에\n동의하셔야 주문이 가능합니다.");
		return false;
	}
//	var said = jQuery('#said').val();
//	var goodsCode = jQuery('#goodsCode').val();
//	window.location.href = "/member/nm-order/login?nmFlag=0&easyYn=1&said="+said+"&goodsCode="+goodsCode;
	return true;
}

function nmOrderRetrieveAuth(){
	window.location.href = "/member/nm-order/auth?nmFlag=1";
}


