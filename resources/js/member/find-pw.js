document.write("<script type='text/javascript' src='/resources/js/debug.js'></script>"); 
document.write("<script type='text/javascript' src='/resources/js/comUtil.js'></script>");

document.write("<script type='text/javascript' src='/resources/js/member/auth.js'></script>"); 

$(function() {
	$("input#memId").focus();
	
	$("input#memId").on("focusin", function() {
		$("#errorMemId").html("");
		$("#errorMemId").css("display","none");
		return;
	});
});

function checkId(type) {
	var $form = $('#auth');
	var memId = $("input#memId").val().toLowerCase();
	
	$("input#memId").val(memId);
	
	$("#errorMemId").css("display","none");
	
	if( memId == "" ) {
		$("#errorMemId").html("아이디를 입력해 주세요.");
		$("#errorMemId").css("display","block");
		return;
	}
	var _pattern = /^[a-z0-9]{6,15}$/;
	if( !_pattern.test(memId) ) {
		
		$("#errorMemId").html("올바른 아이디를 입력해 주세요.");
		$("#errorMemId").css("display","block");
		return;
	}

	commonAjax('/member/id-exist-check-for-find-pw', $form.serialize(), "json", "POST")
	.done(function(data, textStatus, jqXHR) {
		if (_debug) console.log(data.code + ' : ' + data.message);
//		$("#duplicateMemId").css("display","none");
//		$("#successMemId").css("display","none");
		if (data.code == 200) { // 아이디 체크에 값을 설정한다.
			if( data.existYn == 1 ) {
				if( type == 'i' ) {
					ipin('auth'); // auth.js
				} else {
					kmc('auth'); // auth.js
				}
			} else {
				$("#errorMemId").html("존재하지 않는 아이디 입니다.");
				$("#errorMemId").css("display","block");
				return;
			}
		}
		else {
			$("input#checkMemId").val('');
			$("#errorMemId").html(data.message);
			$("#errorMemId").css("display","block");
		}
	})
	.fail(function(jqXHR, textStatus, errorThrown) {
		if (_debug) console.log("에러", "실패 : " + errorThrown);
		alert("시스템 에러가 발생했습니다.\n잠시 후 다시 시도 해 주세요.");
	});
}