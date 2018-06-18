document.write("<script type='text/javascript' src='/resources/js/debug.js'></script>");
document.write("<script type='text/javascript' src='/resources/js/comUtil.js'></script>");

function easyJoinCheck() {
		
	var $form = $("#easyJoinCheckForm");
	var $actionUrl = $("input#actionUrl").val();
	
	if( $('input#encInfo').val() == "" ) {
		$("#errorMsg").html('인증정보가 유실되었습니다. 다시 시도하여 주십시오.');
		$("#errorMsg").css("display","block");
		return;
	}
	
	if( !$('input#authNo').val() ) {
		$("#errorMsg").html('인증번호를 입력해 주세요.');
		$("#errorMsg").css("display","block");
		return;
	}
	
	if( $('input#authNo').val().length != 5 ) {
		alert("인증번호 자리수를 확인하세요.");
		return;
	}

	commonAjax('/member/easy-order/check', $form.serialize(), "json", "POST")
		.done(function(data, textStatus, jqXHR) {
			if(_debug) console.log(data.code + ' : ' + data.message);
			if( data.code == 200 && data.successYn == 1 ) {
				window.location.replace(data.replaceUrl);
				return;
			}
			
			$("input#authNo").val('');
			if( data.code == 400 ) { // 인증번호 불일치
				$("#errorMsg").html('인증번호가 일치하지 않습니다. 재입력해 주세요.');
			}
			else if( data.code == 401 ) { // 인증정보 미존재
				$("#errorMsg").html('인증정보가 존재하지 않습니다. TV에서 새로운 인증번호를 발급받으십시요.');
				
				$('#authMsgPart').html("인증정보가 존재하지 않습니다."); 
				$("#authInputPart").css('display', 'none');
				$("#authInputOverPart").css('display', '');
			}
			else if( data.code == 408 ) { // 인증가능 시간 경과
				$("#errorMsg").html('인증번호 입력 시간을 초과하셨습니다. TV에서 새로운 인증번호를 발급받으십시요.');
				
				$('#authMsgPart').html("TV 비밀번호 입력제한 시간<br />3분이 지났습니다."); 
				$("#authInputPart").css('display', 'none');
				$("#authInputOverPart").css('display', '');
			}
			else if( data.code == 410 ) { // 인증정보 기사용
				$("#errorMsg").html('인증정보가 만료되었습니다. TV에서 새로운 인증번호를 발급받으십시요.');
				
				$('#authMsgPart').html("인증정보가 만료되었습니다."); 
				$("#authInputPart").css('display', 'none');
				$("#authInputOverPart").css('display', '');
			}
			else {
				if(data.message) {
					$("#errorMsg").html(data.message);
				} else {
					$("#errorMsg").html('시스템 에러가 발생했습니다. 잠시 후 다시 시도 해 주세요.');
				}
			}
			$("#errorMsg").css("display","block");
			return;
		}).fail(function(jqXHR, textStatus, errorThrown) {
			if (_debug) console.log("에러", "실패 : " + errorThrown);
			alert("시스템 에러가 발생했습니다.\n잠시 후 다시 시도 해 주세요.");
		});
}