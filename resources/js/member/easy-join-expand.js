document.write("<script type='text/javascript' src='/resources/js/debug.js'></script>");
document.write("<script type='text/javascript' src='/resources/js/comUtil.js'></script>");

var ajaxAccess = false;

$(function() {
	/*
	$("select#brithdayYear").on("change", function() {
		setDay();
	});
	
	$("select#brithdayMonth").on("change", function() {
		setDay();
	});
	*/
	
	$('input#tvPasswd').on('change', function() {
		var passwd = $("input#tvPasswd").val();
		
		validPasswd1();
	});
	
	$("input#emNo").on("change", function() {
		initCheckEmNo();
	});
	
	/*$('input#tvPasswdRe').on('change', function() {
		var passwdRe = $('input#tvPasswdRe').val();
		
		validPasswd2();
	});*/
/*
	$('select#selectEmail').on('change', function() {
		var selectEmail = $('#selectEmail').val();
		if (comUtil.isEmpty(selectEmail)) {
			$('#emailDomain').attr('readonly', false);
			$('input#emailDomain').val('');
			//.attr('placeholder','@');
		}
		else {
			$('#emailDomain').attr('readonly', true);
			$('input#emailDomain').val('@' + selectEmail);
		}
	});
*/
	
	$('#joinCancleButton').on('click', function() {
		alert('입력한 회원정보가 초기화 됩니다.');
		jQuery('#tvPasswd').val('');
		jQuery('#tvPasswdRe').val('');
		jQuery('#errorPasswd1').attr('style','display:none');
		jQuery('#errorPasswd2').attr('style','display:none');
//		windowClose();
//		window.location.replace('/member/easy-join/auth', '_self').close();
		return;
	});
	
	$('#joinButton').on('click', function() {
		if( ajaxAccess ) return;
		
		var $form = $('#joinForm');
		var said = jQuery('#said').val();
		
		if (!validMemInfo()) {
			if (_debug) console.log('유효성 검증 실패.');
			return;
		}

		if (!comUtil.isEmpty($("input#emNo").val())) {
			if ($("input#checkEmNo").val() != "1") {
				$("#errorEmNo").html("초대권 확인을 해주세요.");
				$("#errorEmNo").css("display","block");
				return;
			}
		}
		
//		$form.submit();
		ajaxAccess = true;

		commonAjax(
			$form.attr('action'), $form.serialize(), "json", "POST"
		).done(function(data, textStatus, jqXHR) {
			ajaxAccess = false;
			if (_debug)
				console.log(data.code + ' : ' + data.message);
			if (data.code == 200) {
				window.location.replace(data.replaceUrl+"?custName=" + data.custName);
			} else if (data.code == 202) {
				window.location.replace('/member/easy-join/over-session');
				return;
			} else if (data.code == 203) {
				alert('인증정보가 유실되었습니다.\n인증페이지로 이동합니다.');
				window.location.replace('/member/easy-join/auth?said=' + said);
				return;
			} else {
				alert(data.message);
				return;
			}
		}).fail(function(jqXHR, textStatus, errorThrown) {
			ajaxAccess = false;
			if (_debug) console.log("에러", "실패 : " + errorThrown);
			alert("시스템 에러가 발생했습니다.\n잠시 후 다시 시도 해 주세요.");
		});
	});
});

//초대권 체크(사번체크)
function checkEmNo() {
	var emNo = $("input#emNo").val().toLowerCase();
	var custName = $("input#custName").val();
	
	$("input#emNo").val(emNo);
	
	if (comUtil.isEmpty(emNo)) {
		$("#errorEmNo").html("초대권을 입력해주세요.");
		$("#errorEmNo").css("display","block");
		return;
	}
	
	if (comUtil.isEmpty(custName)) {
		$("#errorEmNo").html("이름을 입력해주세요.");
		$("#errorEmNo").css("display","block");
		return;
	}
	
	initCheckEmNo();

	var url = "/member/em-no-check?emNo="+emNo+"&emName="+encodeURIComponent(custName);
//	if (_debug) console.log('url : ' + url);
	commonAjax(url, null, "json", "GET")
		.done(function(data, textStatus, jqXHR) {
			if (_debug) console.log(data.code + ' : ' + data.message);
			$("#errorEmNo").css("display","block");
			if (data.code == 200) { // 아이디 체크에 값을 설정한다.
				if (data.existYn == '1'){
					$("input#checkEmNo").val('1');
					$("#errorEmNo").addClass('emp3');
					$("#errorEmNo").html("태광 임직원 인증이 확인 되었습니다.");
					$("#errorEmNo").css("display","block");
				} else {
					$("#errorEmNo").html("초대권이 잘못 입력 되었습니다.");
					$("#errorEmNo").css("display","block");
				}
			} else {
				$("#errorEmNo").html(data.message);
				$("#errorEmNo").css("display","block");
			}
		})
		.fail(function(jqXHR, textStatus, errorThrown) {
			if (_debug) console.log("에러", "실패 : " + errorThrown);
			alert("시스템 에러가 발생했습니다.\n잠시 후 다시 시도 해 주세요.");
		});
}

//초대권 입력란 변경시 checkEmNo값 초기화
function initCheckEmNo() {
	$("input#checkEmNo").val('');
	$("#errorEmNo").removeClass('emp3');
	$("#errorEmNo").html("");
	$("#errorEmNo").css("display","none");
}

function validMemInfo() {
	var isResult = true;
	
	// 비밀번호 유효성 검증
	if (isResult) {
		isResult = validPasswd1();
		if (!isResult) {
			$("input#tvPasswd").focus();
		}
	}
	else {
		validPasswd1();
	}

	// 비밀번호 확인 유효성 검증
	if (isResult) {
		isResult = validPasswd2();
		if (isResult == false) {
			$("input#tvPasswdRe").focus();
		}
	}
	else {
		validPasswd2();
	}
	
	return isResult;
}

function validPasswd1() {
	var _pattern = /([^0-9])/i;
	var passwd1 = $('input#tvPasswd');
	var message = $("#errorPasswd1");
	
	if (comUtil.isEmpty(passwd1.val())) {
		message.html("TV 비밀번호를 입력해 주세요.");
		message.css("display","block");
		return false;
	}
	else if (passwd1.val().length != 4 ) {
		message.html("TV 비밀번호 4자리 입력를 입력해 주세요.");
		message.css("display","block");
		return false;
	}
	else if ( _pattern.test(passwd1.val())) {
		message.html("TV 비밀번호는 숫자만 입력가능합니다.");
		message.css("display","block");
		return false;
	}
	message.html("");
	message.css("display","none");
	return true;
}

function validPasswd2() {
	var passwd1 = $('input#tvPasswd');
	var passwd2 = $('input#tvPasswdRe');
	var message = $("#errorPasswd2");
	
	if (comUtil.isEmpty(passwd2.val())) {
		message.html("TV 비밀번호 확인을 입력해 주세요.");
		message.css("display","block");
		return false;
	}
	else if (passwd1.val() != passwd2.val()) {
		message.html("입력한 TV 비밀번호 확인이 일치하지 않습니다.");
		message.css("display","block");
		return false;
	}
	message.html("");
	message.css("display","none");
	return true;
}
