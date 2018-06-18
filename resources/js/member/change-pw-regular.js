document.write("<script type='text/javascript' src='/resources/js/debug.js'></script>");
document.write("<script type='text/javascript' src='/resources/js/comUtil.js'></script>");

var ajaxLoding = false;

function validPasswd1(focus) {
	var msg = '';
	
	msg = memPwCheck($('input#passwd1').val(), 'change');
	
	$("#errorPasswd1").removeClass('emp3');
	$("#errorPasswd1").html("");
	$("#errorPasswd1").css("display","none");
	
	if( msg != "" ) {
		$("#errorPasswd1").html(msg);
		$("#errorPasswd1").css("display","block");
		if( focus ) $("#passwd1").focus();
		return false;
	}
	
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

function changePasswd() {
	
	if( ajaxLoding ) return false;
	
	var isResult = true,
		param = new Object(),
		_form = jQuery("#changePasswdForm"),
    	nowPasswd = jQuery('input#nowPasswd'),
    	newPasswd = jQuery('input#passwd1'),
		nowPwdMsg = jQuery('#errorNowPasswd');
	
	//기존비밀번호 유효성 검증
	if(isResult){
		isResult = nowPwCheck(true);
	}else{
		nowPwCheck();
	}
	
	if( !isResult ) return;
		
	// 비밀번호 유효성 검증
	if (isResult) {
		isResult = validPasswd1(true);
	} else {
		validPasswd1();
	}
	
	if( !isResult ) return;
	
	// 비밀번호 확인 유효성 검증
	if (isResult) {
		isResult = validPasswd2(true);
	} else {
		validPasswd2();
	}
	
	if( !isResult ) return;
	
    nowPwdMsg.css("display","none");
    
    param['nowPasswd'] = nowPasswd.val();
    param['newPasswd'] = newPasswd.val();
    
    ajaxLoding = true;
    
    commonAjax("/member/modify/modify-passwd", param, 'json', 'POST')
    .done(function(data, textStatus, jqXHR){
    	ajaxLoding = false;
        if("200" == data.code) {
        	alert("고객님의 비밀번호가\n정상적으로 변경되었습니다.");
			window.location.replace(static_path + '/');
        } else if("440" == data.code){
        	nowPwdMsg.html('비밀번호가 일치하지 않습니다.');
        	nowPwdMsg.css("display","block");
            nowPasswd.focus();
        }else{
            alert(data.message + "[" + data.code + "]");
        }
    })
    .fail(function(jqXHR, textStatus, errorThrown){
    	ajaxLoding = false;
        if("401" == jqXHR.status) {
        	alert("로그인 정보가 유실되었습니다.\n로그인 후 다시 이용해주세요.");
        	window.location.replace(payment_path + '/member/login', '_self').close();
        }
    });
    return true;
}

function changePasswdNext() {
	
	if( ajaxLoding ) return false;
	
	ajaxLoding = true;
    
    commonAjax("/member/change-pw-regular/next", null, 'json', 'POST')
    .done(function(data, textStatus, jqXHR){
    	ajaxLoding = false;
        if("200" == data.code) {
        	alert("정상처리 되었습니다.");
			window.location.replace(static_path + '/');
        } else if("404" == data.code){
        	alert("로그인 정보가 유실되었습니다.\n로그인 후 다시 이용해주세요.");
			window.location.replace(payment_path + '/member/login');
        }else{
            alert(data.message + "[" + data.code + "]");
        }
    })
    .fail(function(jqXHR, textStatus, errorThrown){
    	ajaxLoding = false;
        if("401" == jqXHR.status){
        	alert("로그인 정보가 유실되었습니다.\n로그인 후 다시 이용해주세요.");
        	window.location.replace(payment_path + '/member/login');
        }
        alert("시스템 오류가 발생하였습니다.");
    });
    return true;
}

function nowPwCheck(focus){
    var param = new Object();
	var nowPasswd = jQuery('#nowPasswd');
	var nowPwdMsg = jQuery('#errorNowPasswd');
	var isResult = false;
	
    param['nowPasswd'] = nowPasswd.val();
    
    if (comUtil.isEmpty(nowPasswd.val())) {
        nowPwdMsg.html('비밀번호를 입력해주세요.');
        if(focus) nowPasswd.focus();
        isResult = false;
    }else{
        jQuery.ajax({
                url: "/member/nowpass-check",
                type: "post",
                datatype: "json",
                async: false,
                data: param,
                success: function(response) {
                    var data = response;
                    if("200" == data.code) {
                    	nowPwdMsg.html('');
                        //if(focus) changePasswd();
                    	isResult = true;
                    } else if("440" == data.code){
                    //nowPwdMsg.html(data.message);
                    	nowPwdMsg.html('비밀번호가 일치하지 않습니다.');
                    if(focus) nowPwdMsg.focus();
                    isResult = false;
                } else if("401" == data.code){
                    goUrl('$!{payment_path}/member/login?forwardUrl=$!{payment_path}/member/modify/user/login');
                }
                else{
                    alert(data.message + "[" + data.code + "]");
                    isResult = false;
                }
            },
            error: function() {
                alert("시스템 오류가 발생하였습니다.");
                isResult = false;
            }
        });
    }
    return isResult;
}