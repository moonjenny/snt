document.write("<script type='text/javascript' src='/resources/js/debug.js'></script>");
document.write("<script type='text/javascript' src='/resources/js/comUtil.js'></script>");

$(function() {
	$('input#passwd1').on('change', function() {
		validPasswd1();
	});
	
	$('input#passwd2').on('change', function() {
		validPasswd2();
	});
	
	$("#submitButton").on("click", function() {
		var isResult = true,
			_form = $("#changePasswdForm");
		
		// 비밀번호 유효성 검증
		if (isResult) {
			isResult = validPasswd1(true);
		}
		else {
			validPasswd1();
		}

		// 비밀번호 확인 유효성 검증
		if (isResult) {
			isResult = validPasswd2(true);
		}
		else {
			validPasswd2();
		}
		
		if( !isResult ) return;

		commonAjax('/member/find-pw/change', _form.serialize(), "json", "POST")
			.done(function(data, textStatus, jqXHR) {
				if (_debug) console.log(data.code + ' : ' + data.message);
				if (data.code == 200) {
					alert("고객님의 비밀번호가\n정상적으로 변경되었습니다.");
					window.location.replace(url);
				}
				else if (data.code == 203) {
					alert(data.message);
					window.location.replace(url);
				}
				else {
					alert(data.message);
					window.location.replace(url);
				}
	
			}).fail(function(jqXHR, textStatus, errorThrown) {
				if (_debug) console.log("에러", "실패 : " + errorThrown);
				alert("시스템 에러가 발생했습니다.\n잠시 후 다시 시도 해 주세요.");
			});
	});
});

function validPasswd1(focus) {
	var msg = '';
	
	msg = memPwCheck($('input#passwd1').val(), 'change');
	
	if($("#errorPasswd1").attr('class') == 'emp3'){
		$("#errorPasswd1").removeClass('emp3');
		$("#errorPasswd1").addClass('emp2');
	}
	
	$("#errorPasswd1").html("");
	$("#errorPasswd1").css("display","none");
	
	if( msg != "" ) {
		$("#errorPasswd1").html(msg);
		$("#errorPasswd1").css("display","block");
		if( focus ) $("#passwd1").focus();
		return false;
	}
	
	$("#errorPasswd1").removeClass('emp2');
	$("#errorPasswd1").addClass('emp3');
	$("#errorPasswd1").html('사용 가능한 비밀번호입니다.');
	$("#errorPasswd1").css("display","block");
	
	if( $('input#passwd2').val() != "" ) {
		validPasswd2();
	}
	return true;
}

function validPasswd2(focus) {
	var msg = '';
	
	msg = memPwConfirmCheck($('input#passwd1').val(), $('input#passwd2').val(), 'new');
	
	if( msg != "" ) {
		$("#errorPasswd2").html(msg);
		$("#errorPasswd2").css("display","block");
		if( focus ) $("#passwd2").focus();
		return false;
	}
	$("#errorPasswd2").html("");
	$("#errorPasswd2").css("display","none");
	return true;
}