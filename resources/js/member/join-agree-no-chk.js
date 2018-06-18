document.write("<script type='text/javascript' src='/resources/js/debug.js'></script>");
document.write("<script type='text/javascript' src='/resources/js/comUtil.js'></script>");

$(document).ready(function(){
	var form = $("#agreeForm"),
		chk_all = $("input:checkbox:last", form),
		chk_else = $("input:checkbox:not(:last)", form);
	
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
		alert("이용약관에 동의하셔야 가입 가능합니다.");
		return;
	}
	if( !$("#agree2").is(":checked") ){
		alert("개인정보취급방침에\n동의하셔야 가입 가능합니다.");
		return;
	}
	if( !$("#agree3").is(":checked") ){
		alert("청소년 보호정책에\n동의하셔야 가입 가능합니다.");
		return;
	}
	if( !$("#agree4").is(":checked") ){
		alert("결제/배송/반품/교환/환불 등과 관련된 sms수신에\n동의하셔야 가입 가능합니다.");
		return;
	}
	if( $("#agree5").is(":checked") ){
		$("input#emailYn").val(1);
		$("input#smsYn").val(1);
	}
	
	$("#agreeForm").submit();
}

function magicEvent() {
	if( !$("#agree1").is(":checked") ){
		alert("이용약관에 동의하셔야 가입 가능합니다.");
		return;
	}
	if( !$("#agree2").is(":checked") ){
		alert("개인정보취급방침에\n동의하셔야 가입 가능합니다.");
		return;
	}
	if( !$("#agree3").is(":checked") ){
		alert("청소년 보호정책에\n동의하셔야 가입 가능합니다.");
		return;
	}
	if( !$("#agree4").is(":checked") ){
		alert("결제/배송/반품/교환/환불 등과 관련된 sms수신에\n동의하셔야 가입 가능합니다.");
		return;
	}
	if( $("#agree5").is(":checked") ){
		$("input#emailYn").val(1);
		$("input#smsYn").val(1);
	}
	if( !$("#agree5").is(":checked") ){
		if (confirm("5월 한 달 동안 진행 중인 '매직이벤트'는 홍보메시지(선택사항) 동의를 하셔야만 응모하실 수 있습니다.") == true){    //확인
			$("input#emailYn").val(1);
			$("input#smsYn").val(1);
			$("#agreeForm").submit();
		}else{   																					        //취소
			$("input#emailYn").val(0);
			$("input#smsYn").val(0);
			$("#agreeForm").submit();
		}
	}
	$("#agreeForm").submit();
}
function goAuthSelect() {
	window.location.href = "/member/join";
}
