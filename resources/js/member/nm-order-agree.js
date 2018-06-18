
$(document).ready(function(){
	var form = $("#verifyLayerForm"),
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
	//window.location.href = "/member/nm-order/login?nmFlag=0";
	return true;
}

function nmOrderRetrieveAuth(){
	window.location.href = "/member/nm-order/auth?nmFlag=1";
}


