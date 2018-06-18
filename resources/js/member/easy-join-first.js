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
	$("input#memId").on("change", function() {
		initCheckMemId();
	});
	$('input#passwd').on('change', function() {
		validPasswd1();
	});
	$('input#passwdRe').on('change', function() {
		validPasswd2();
	});
	$('input#tvPasswd').on('change', function() {
		validTvPasswd1();
	});
	$('input#tvPasswd').on('change', function() {
		validTvPasswd1();
	});
	
	$('input#emailId').on('change', function() {
		if( comUtil.isNotEmpty($('input#emailDomain').val()) ) {
			validEmail();
		}
	});
	
	$('input#emailDomain').on('change', function() {
		if( comUtil.isNotEmpty($('input#emailId').val()) ) {
			validEmail();
		}
	});
	
	$("input#emNo").on("change", function() {
		initCheckEmNo();
	});
	
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
		jQuery('#memId').val('');
		jQuery('#passwd').val('');
		jQuery('#passwdRe').val('');
		jQuery('#emailId').val('');
		jQuery('#emailDomain').val('');
		jQuery('#tvPasswd').val('');
		jQuery('#tvPasswdRe').val('');
		jQuery('#errorMemId').attr('style','display:none');
		jQuery('#errorPasswd1').attr('style','display:none');
		jQuery('#errorPasswd2').attr('style','display:none');
		jQuery('#errorEmail').attr('style','display:none');
		jQuery('#errorTvPasswd1').attr('style','display:none');
		jQuery('#errorTvPasswd2').attr('style','display:none');
//		windowClose();
//		window.location.replace('/member/easy-join/auth', '_self').close();
		return;
	});
	
	$('#joinButton').on('click', function() {
		if( ajaxAccess ) return;
		
		var $form = $('#joinForm');
		
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
		
		// 생년월일 셋팅
		var bDayYear = jQuery("#realBirthYear").val();
		var bDayMonth = jQuery("#realBirthMonth").val();
		var bDayDay = jQuery("#realBirthDate").val();
		var said = jQuery('#said').val();
		
		bDayMonth 	= (bDayMonth.length == 1) ? "0" + bDayMonth : bDayMonth;
		bDayDay 	= (bDayDay.length == 1) ? "0" + bDayDay : bDayDay;
		
		jQuery("#birthday").val(bDayYear+bDayMonth+bDayDay);

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

function checkMemId() {
	var memId = $("input#memId").val().toLowerCase();
	
	$("input#memId").val(memId);
	
	if (!validMemId()) {
		if (_debug) console.log("아이디 유효성 검증 실패.");
		return;
	}
	
	initCheckMemId();

	var url = "/member/id-exist-check?memId=" + memId;
//	if (_debug) console.log('url : ' + url);
	commonAjax(url, null, "json", "GET")
		.done(function(data, textStatus, jqXHR) {
			if (_debug) console.log(data.code + ' : ' + data.message);
			$("#errorMemId").css("display","block");
			$("#duplicateMemId").css("display","none");
			$("#successMemId").css("display","none");
			if (data.code == 200) { // 아이디 체크에 값을 설정한다.
				if (data.existYn == '0'){
					$("input#checkMemId").val('1');
					$("#errorMemId").addClass('emp3');
					$("#errorMemId").html(memId + "는(은) 사용 가능한 ID입니다.");
					$("#errorMemId").css("display","block");
				} else {
					$("#errorMemId").html(memId + "는(은) 이미 다른분이 사용 중 입니다. 다른 새로운 ID를 만들어 주세요.");
					$("#errorMemId").css("display","block");
				}
			}
			else {
				$("#errorMemId").html(data.message);
				$("#errorMemId").css("display","block");
			}
		})
		.fail(function(jqXHR, textStatus, errorThrown) {
			if (_debug) console.log("에러", "실패 : " + errorThrown);
			alert("시스템 에러가 발생했습니다.\n잠시 후 다시 시도 해 주세요.");
		});
}

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

function validMemInfo() {
	var isResult = true;
	
	// 아이디 유효성 검증
	if (isResult) {
		isResult = validMemId();
		
		if( isResult ) {
			// 아이디 유효성 검증
			var checkMemId = $("input#checkMemId").val();
			if (comUtil.isEmpty(checkMemId)) {
				$("#errorMemId").html('아이디 중복확인을 하셔야 합니다.');
				$("#errorMemId").css("display","block");
				isResult = false;
			}
		}
		
		if (!isResult) {
			$("input#memId").focus();
		}
	}
	
	// 비밀번호 유효성 검증
	if (isResult) {
		isResult = validPasswd1();
		if (!isResult) {
			$("input#passwd").focus();
		}
	}
	else {
		validPasswd1();
	}

	// 비밀번호 확인 유효성 검증
	if (isResult) {
		isResult = validPasswd2();
		if (isResult == false) {
			$("input#passwdRe").focus();
		}
	}
	else {
		validPasswd2();
	}
	
	// 메일주소 유효성 검증
	if (isResult) {
		isResult = validEmail();
		if (isResult == false) {
			if( $('input#emailId').val() == '') {
				$("input#emailId").focus();
			} else {
				$("input#emailDomain").focus();
			}
		}
	}
	else {
		validEmail();
	}
	
	// TV비밀번호 유효성 검증
	if (isResult) {
		isResult = validTvPasswd1();
		if (!isResult) {
			$("input#tvPasswd").focus();
		}
	}
	else {
		validTvPasswd1();
	}

	// TV비밀번호 확인 유효성 검증
	if (isResult) {
		isResult = validTvPasswd2();
		if (isResult == false) {
			$("input#tvPasswdRe").focus();
		}
	}
	else {
		validTvPasswd2();
	}
	
	return isResult;
}

function validMemId() {
	var memId = $('#memId').val();
	if (comUtil.isEmpty(memId)) {
		if($("#errorMemId").hasClass('emp3')){
			$("#errorMemId").removeClass("emp3");
			if($("#errorMemId").attr("class") == ''){
				$("#errorMemId").addClass("emp2");
			}	
		}
		$("#errorMemId").html("아이디를 입력해 주세요.");
		$("#errorMemId").css("display","block");
		return false;
	}
	/*else if (!_pattern02.test(memId)) { 
		$("#errorMemId").html("아이디가 적합하지 않습니다.");
		$("#errorMemId").css("display","block");
		return false;
	}*/
	else if(!regType.test(memId)){
		$("#errorMemId").html("‘영문소문자’와 ‘숫자’로 조합하여 6자~15자로 입력해 주세요.");
		$("#errorMemId").css("display","block");
		return false;
	}
	else if (!regType2.test(memId) || !regType3.test(memId) ){
		$("#errorMemId").html("‘영문소문자’와 ‘숫자’로 조합하여 6자~15자로 입력해 주세요.");
		$("#errorMemId").css("display","block");
		return false;
	}
	return true;
}

function validPasswd1(focus) {
	var msg = '';
	
	msg = memPwCheck($('input#passwd').val(), 'new');
	
	$("#errorPasswd1").removeClass('emp3');
	$("#errorPasswd1").html("");
	$("#errorPasswd1").css("display","none");
	
	if( msg != "" ) {
		$("#errorPasswd1").html(msg);
		$("#errorPasswd1").css("display","block");
		if( focus ) $("#passwd").focus();
		return false;
	}
	
	$("#errorPasswd1").addClass('emp3');
	$("#errorPasswd1").html('사용 가능한 비밀번호입니다.');
	$("#errorPasswd1").css("display","block");
	
	if( $('input#passwdRe').val() != "" ) {
		validPasswd2();
	}
	return true;
}

function validPasswd2(focus) {
	var msg = '';
	
	msg = memPwConfirmCheck($('input#passwd').val(), $('input#passwdRe').val(), 'new');
	
	if( msg != "" ) {
		$("#errorPasswd2").html(msg);
		$("#errorPasswd2").css("display","block");
		if( focus ) $("#passwdRe").focus();
		return false;
	}
	$("#errorPasswd2").html("");
	$("#errorPasswd2").css("display","none");
	return true;
}

function validEmail() {
	var emailId = $('input#emailId').val();
	var emailDomain = $('input#emailDomain').val();
	
/*	if($("#errorEmail").hasClass('emp3')){
		$("#errorEmail").removeClass("emp3");
		if($("#errorEmail").attr("class") == 'message'){
			$("#errorEmail").addClass("emp2");
		}	
	}*/
	
	if (comUtil.isEmpty(emailId)) {
		$("#errorEmail").html('이메일을 입력해 주세요.');
		$("#errorEmail").css("display","block");
		return false;
	}
	else if (comUtil.isEmpty(emailDomain)) {
		$("#errorEmail").html('이메일 계정을 입력해 주세요.');//이 선택되지 않았습니다.
		$("#errorEmail").css("display","block");
		return false;
	}
	else if (!comUtil.chkMail(emailId+'@'+emailDomain)) {
		$("#errorEmail").html('이메일 형식이 올바르지 않습니다.');
		$("#errorEmail").css("display","block");
		return false;
	}
	else if (calculate_msglen(emailId+'@'+emailDomain) > 100) {
		$("#errorEmail").html('이메일 주소를 100byte이내로 입력해 주세요.');
		$("#errorEmail").css("display","block");
		return false;
	}
	
/*	if($("#errorEmail").hasClass('emp2')){
		$("#errorEmail").removeClass("emp2");
		if($("#errorEmail").attr("class") == 'message'){
			$("#errorEmail").addClass("emp3");
			$("#errorEmail").html("입력한 이메일은 등록 가능합니다.");
			$("#errorEmail").css("display","block");
		}	
	}else{
		if($("#errorEmail").attr("class") == 'message'){
			$("#errorEmail").addClass("emp2");
			$("#errorEmail").css("display","none");
		}	
	}*/
	$("#errorEmail").css("display","none");
	
	return true;
}

//id 입력란 변경시 checkMemId값 초기화
function initCheckMemId() {
	$("input#checkMemId").val('');
	$("#errorMemId").removeClass('emp3');
	$("#errorMemId").html("");
	$("#errorMemId").css("display","none");
}

//초대권 입력란 변경시 checkEmNo값 초기화
function initCheckEmNo() {
	$("input#checkEmNo").val('');
	$("#errorEmNo").removeClass('emp3');
	$("#errorEmNo").html("");
	$("#errorEmNo").css("display","none");
}

function validTvPasswd1() {
	var _pattern = /([^0-9])/i;
	var passwd1 = $('input#tvPasswd');
	var message = $("#errorTvPasswd1");
	
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

function validTvPasswd2() {
	var passwd1 = $('input#tvPasswd');
	var passwd2 = $('input#tvPasswdRe');
	var message = $("#errorTvPasswd2");
	
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
