document.write("<script type='text/javascript' src='/resources/js/debug.js'></script>");
document.write("<script type='text/javascript' src='/resources/js/comUtil.js'></script>");

var ajaxAccess = false;

$(function() {
//	brithdaySet();
	
	/*
	$("select#brithdayYear").on("change", function() {
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
	
	/*$("select#brithdayMonth").on("change", function() {
		setDay();
	});*/
	
	/*$('input#tvPasswd').on('change', function() {
		var passwd = $("input#tvPasswd").val();
		
		validPasswd1();
	});
	
	$('input#tvPasswdRe').on('change', function() {
		var passwdRe = $('input#tvPasswdRe').val();
		
		validPasswd2();
	});*/
	/** 이메일 중복체크
	$('input#emailId').on('focusin', function() {
		$("#errorEmail").removeClass('match');
		$("#errorEmail").html('');
		$("#errorEmail").css("display","none");
	});
	
	$('input#emailDomain').on('focusin', function() {
		$("#errorEmail").removeClass('match');
		$("#errorEmail").html('');
		$("#errorEmail").css("display","none");
	});
	
	$('input#emailId').on('change', function() {
		if( comUtil.isNotEmpty($('input#emailDomain').val()) ) {
			checkEmail();
		}
	});
	
	$('input#emailDomain').on('change', function() {
		if( comUtil.isNotEmpty($('input#emailId').val()) ) {
			checkEmail();
		}
	});
	*/
	
	$('#joinCancleButton').on('click', function() {
		alert('회원가입이 취소되었습니다.');
		window.history.back();
		/*
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
		jQuery('#errorTvPasswd2').attr('style','display:none');*/
//		windowClose();
//		window.location.replace('/member/easy-join/auth');
	});
	
	$('#joinButton').on('click', function() {
		if( ajaxAccess ) return;
		
		var $form = $('#joinForm'),
			_window = window;

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
		
		// 생년월일 셋팅
		var bDayYear = jQuery("#realBirthYear").val();
		var bDayMonth = jQuery("#realBirthMonth").val();
		var bDayDay = jQuery("#realBirthDate").val();
		
		bDayMonth 	= (bDayMonth.length == 1) ? "0" + bDayMonth : bDayMonth;
		bDayDay 	= (bDayDay.length == 1) ? "0" + bDayDay : bDayDay;
		
		jQuery("#birthday").val(bDayYear+bDayMonth+bDayDay);
		
		if(!agree()){
			return;
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
				return;
			} else if (data.code == 202) {
				window.location.replace('/member/easy-join/over-session');
				return;
			} else if (data.code == 203) {
				alert('인증정보가 유실되었습니다.\n인증페이지로 이동합니다.');
				window.location.replace('/member/easy-join/auth?said='+said);
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
	if(isMemIdExist){
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
	}
	
	// 비밀번호 유효성 검증
	if(isMemIdExist){
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
	}
	/** 이메일 중복체크
	// checkEmail
	var checkEmail = $("input#checkEmail").val();
	if (_debug) console.log("checkEmail : " + checkEmail);
	if (comUtil.isEmpty(checkEmail)) {
		$("#checkEmail").html('이메일 검증에 실패하였습니다..');
		$("#checkEmail").css("display","block");
		isResult = false;
	}
	*/
	//주소 검증
	if(isAddrExist){
		if(isResult){
			isResult = validAddr();
			if(isResult == false){
				$("input#detailAddr").focus();
			}
		}else{
			validAddr();
		}
	}
	
	// 메일주소 유효성 검증
	if(isEmailExist){
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
	
	return isResult;
}

function validMemId() {
	var memId = $('#memId').val();
	if (comUtil.isEmpty(memId)) {
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

function validAddr(){
	var post1 = jQuery("input#post01").val();
	var detailAddr = jQuery("input#detailAddr").val();
       
	if(comUtil.isEmpty(post1)){
		jQuery('#errorAddr').text("주소를 입력해주세요.");
		jQuery('#errorAddr').show();
		return false;
	}
	if(comUtil.isEmpty(detailAddr) ){
		jQuery('#errorAddr').text("상세 주소를 입력해주세요.");
		jQuery('#errorAddr').show();
		return false;
	}
	if(calculate_msglen(detailAddr) > 300){
		jQuery('#errorAddr').text("상세 주소는 300byte 이내로 입력해주세요.");
		jQuery('#errorAddr').show();
		return false;
	}
	jQuery('#errorAddr').hide();
	return true;
}

function validEmail() {
	var emailId = $('input#emailId').val();
	var emailDomain = $('input#emailDomain').val();
	
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
	/*
	if($("#errorEmail").hasClass('emp2')){
		$("#errorEmail").removeClass("emp2");
		if($("#errorEmail").attr("class") == ''){
			$("#errorEmail").addClass("emp3");
		}	
	}*/
//	$("#errorEmail").html("입력한 이메일은 등록 가능합니다.");
	$("#errorEmail").css("display","none");
	
	return true;
}



function validTvPasswd1(focus) {
	var msg = '';
	
	msg = tvPwCheck($('input#tvPasswd').val(), 'new');
	
	$("#errorTvPasswd1").removeClass('emp3');
	$("#errorTvPasswd1").html("");
	$("#errorTvPasswd1").css("display","none");
	
	if( msg != "" ) {
		$("#errorTvPasswd1").html(msg);
		$("#errorTvPasswd1").css("display","block");
		if( focus ) $("#passwd").focus();
		return false;
	}
	
	$("#errorTvPasswd1").addClass('emp3');
	$("#errorTvPasswd1").html('사용 가능한 비밀번호입니다.');
	$("#errorTvPasswd1").css("display","block");
	
	if( $('input#tvPasswd').val() != "" ) {
		validPasswd2();
	}
	return true;
}

function validTvPasswd2(focus) {
	var msg = '';
	
	msg = memPwConfirmCheck($('input#tvPasswd').val(), $('input#tvPasswdRe').val(), 'new');
	
	if( msg != "" ) {
		$("#errorTvPasswd2").html(msg);
		$("#errorTvPasswd2").css("display","block");
		if( focus ) $("#tvPasswd").focus();
		return false;
	}
	$("#errorTvPasswd2").html("");
	$("#errorTvPasswd2").css("display","none");
	return true;
}
/** 이메일 중복체크
function checkEmail() {
	var param = {},
		email = $("input#emailId").val()+'@'+$("input#emailDomain").val();
	
	if (!validEmail()) {
		if (_debug) console.log("이메일 유효성 검증 실패.");
		return;
	}
	
	$("input#checkEmail").val('');
	
	param['email'] = email;
	param['memId'] = $("input[name=memId]").val();
	
	commonAjax('/member/email-exist-check', param, "json", "POST")
		.done(function(data, textStatus, jqXHR) {
			if (_debug) console.log(data.code + ' : ' + data.message);
			if (data.code == 200) {
				if (data.existYn == '0'){
					$("input#checkEmail").val('1');
					$("#errorEmail").addClass('match');
					$("#errorEmail").html('입력한 이메일은 등록 가능합니다.');
					$("#errorEmail").css("display","block");
				} else {
					$("#errorEmail").removeClass('match');
					$("#errorEmail").html('입력한 이메일은 이미 등록되어 있습니다. 다른 이메일을 입력해 주세요.');
					$("#errorEmail").css("display","block");
				}
			}
			else {
				$("#errorEmail").removeClass('match');
				$("#errorEmail").html('이메일 검증 중 오류가 발생하였습니다. 잠시 후 다시 시도해 주세요.');
				$("#errorEmail").css("display","block");
			}
		})
		.fail(function(jqXHR, textStatus, errorThrown) {
			if (_debug) console.log("에러", "실패 : " + errorThrown);
			$("#errorEmail").removeClass('match');
			$("#errorEmail").html('이메일 검증 중 오류가 발생하였습니다. 잠시 후 다시 시도해 주세요.');
			$("#errorEmail").css("display","block");
		});
}
*/
//생년월일 콤보박스 셋팅
function brithdaySet() {
	var brithdayYear    = $("#realBirthYear").val();
	var brithdayMonth	= $("#realBirthMonth").val();
	var brithdayDay     = $("#realBirthDate").val();
	
	var nowDate 			= new Date();
	var nowYear 			= nowDate.getFullYear();
	var selectYearSection	= 100;
	
	$("#brithdayYear option").remove();
	for( var i=nowYear; i > nowYear - selectYearSection; i-- ) {
		$('#brithdayYear').append($("<option/>", {value: i, text: i}));
	}

	$("#brithdayMonth option").remove();
	for (var i=1; i<=12; i++) {
		$('#brithdayMonth').append($("<option/>", {value: i, text: i}));
	}
	
	$("#brithdayYear").val(brithdayYear);
	$("#brithdayMonth").val(brithdayMonth);
	setDay();
	$("#brithdayDay").val(brithdayDay);
}

function setDay() {
	var year    	= $("#brithdayYear").val();
	var month   	= $("#brithdayMonth").val();
	var day     	= $("#brithdayDay").val();
	
	var arrayMonth	= [31,28,31,30,31,30,31,31,30,31,30,31];

	if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
		arrayMonth[1] = 29;
	}
	
	$("#brithdayDay option").remove();
	for (var i=1; i<=arrayMonth[month-1]; i++) {
		$('#brithdayDay').append($("<option/>", {value: i, text: i}));
	}

	if( day != null || day != "" ) {
		if( day > arrayMonth[month-1] ) {
			$("#selectBox option:last").attr("selected", "selected");
		} else {
			$("#selectBox").val(day);
		}
	}
}

function postPopOpen(){
	
	openPostSearch(selectPost);
}


/*
function selectPost(p1, p2, seq, addr, agb, road, roadYn) {
	if(typeof agb == 'undefined'){
		agb = jQuery("input#custAreaGb").val();
	} else {
		jQuery("input#custAreaGb").val(agb);
	}
	
	jQuery("input#post01").val(p1);
	jQuery("input#post02").val(p2);
	jQuery("input#displayPostNo").val(p1+"-"+p2);
	jQuery("input#baseAddr").val(addr);
	jQuery("input#detailAddr").val('').attr('placeholder','상세 주소를 입력해 주세요.');

	jQuery("input#detailAddr").focus();

	jQuery("input#custAreaGb").val(agb);
	jQuery("input#postSeq").val(seq);
	jQuery("#roadAddrNo").val(road);
	jQuery("#roadAddrYn").val(roadYn);
	jQuery("#receiverSeq").val('');
}
*/