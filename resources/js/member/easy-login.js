document.write("<script type='text/javascript' src='/resources/js/debug.js'></script>");
document.write("<script type='text/javascript' src='/resources/js/comUtil.js'></script>");

var _pattern01 = /^[0-9]+$/;
var _pattern02 = /^[A-Za-z0-9]+$/;
var _pattern03 = /^[a-zA-Z0-9]{8,15}$/;



$(function() {
	
	$("#findIdButton").on("click", function() {
		
//		showAuthPage("find-id", function(data){
//			if(data.resultCode == '90' || data.resultCode == '99'){
//				//location.href = "/member/easy-order/find-id/result";
//				
//				commonAjax("/member/easy-order/find-id/result", "", "text", "POST")
//				.done(function(data, textStatus, jqXHR) {
//					isLoading = false;
//					jQuery('#verifyUser').hide();
//					jQuery('.wrap_inner').append(data);
//				}).fail(function(jqXHR, textStatus, errorThrown) {
//					isLoading = false;
//					alert("시스템 에러가 발생했습니다.\n잠시 후 다시 시도 해 주세요.");
//				});
//    		}else{
//				alert("회원 정보가 없습니다. 다시 확인해주세요.");
//			}
//		});
		location.href = "/member/easy-order/find-id?step1="+encodeURIComponent(currentPage);
		
	});
	
	$("#findPasswdButton").on("click", function() {
//		showAuthPage("find-pw", function(data){
//			if(data.resultCode == '90' || data.resultCode == '99'){
//				location.href = data.callback;
//			}else{
//				alert("회원 정보가 없습니다. 다시 확인해주세요.");
//			}
//			
//		});
		location.href = "/member/easy-order/find-pw?step1="+encodeURIComponent(currentPage);
		
	});
	
	
	$('input#memId').on('change', function() {
		$(this).val($(this).val().toLowerCase());
	});
	
	initFocus();
});

var isLoading = false;
function login(){
	var _form = $("#loginForm"),
		_memId = $("input#memId"),
		_passwd = $("input#passwd"),
		_noticeMsg = $("#noticeMsg");
		_referMsg = $("#referMsg");
	
	//var pwRegType =  /^[a-z0-9]{8,15}$/;
	//var pwRegType2 =  /^[a-z0-9]{6,15}$/; 
    var pwRegType3 =  /[0-9]/; 
    var pwRegType4 =  /[a-z]/; 
    var pwRegType5 =  /[~!@\#$%^&*\()\-=+_']/gi; 
		
		
	if( isLoading ) return;
	
	_memId.val($.trim(_memId.val().toLowerCase()));
	
	_noticeMsg.hide();
	_noticeMsg.text('');
	
	if (comUtil.isEmpty(_memId.val())) {
		_noticeMsg.text('아이디를 입력해주세요.');
		_noticeMsg.show();
		_memId.focus();
		return false;
	}
	else if (comUtil.isEmpty(_passwd.val())) {
		_noticeMsg.text('비밀번호를 입력해 주세요.');
		_noticeMsg.show();
		_passwd.focus();
		return false;
	}
	/*
	if(!pwRegType.test(_passwd.val())){
		_noticeMsg.text('입력한 아이디 또는 비밀번호가 잘못되었습니다.');
		_noticeMsg.show();
		return false;
	}
	else if(!pwRegType2.test(_memId.val()) ){
		_noticeMsg.text('입력한 아이디 또는 비밀번호가 잘못되었습니다.');
		_noticeMsg.show();
		return false;
	}
	*/
	if (!pwRegType3.test(_memId.val()) || !pwRegType4.test(_memId.val()) || !pwRegType3.test(_passwd.val())){
		//|| !pwRegType4.test(_passwd.val())
		_noticeMsg.text('입력한 아이디 또는 비밀번호가 잘못되었습니다.');
		_noticeMsg.show();
		return false;
	}else if(pwRegType5.test(_memId.val()) || pwRegType5.test(_passwd.val())){
		_noticeMsg.text('입력한 아이디 또는 비밀번호가 잘못되었습니다.');
		_noticeMsg.show();
		return false;
	}
		
	
	
	isLoading = true;
	
	commonAjax(_form.attr('action'), _form.serialize(), "json", "POST")
	.done(function(data, textStatus, jqXHR) {
		isLoading = false;
		if (data.code == 200) {
//			window.location.replace(data.replaceUrl);
//			var easyForm = document.getElementById('nextStepForm');
//			easyForm.action = '/member/easy-order/login';
//		    easyForm.submit();
			location.href = '/display/easy-order/goods/'+jQuery('#goodsCode').val();
		}
		else {
			if( data.code == '417' ) { 
				_noticeMsg.text('입력한 아이디 또는 비밀번호가 잘못되었습니다.');
				_noticeMsg.show();
				_passwd.focus();
				return;
			} else if( data.code == '418' ) { 
				_noticeMsg.text('10회이상 로그인에 실패하여 개인 정보보호를 위해 로그인이 제한되었습니다. 비밀번호 찾기 후 이용해 주세요.');
				_noticeMsg.show();
				return;
			} else if( data.code == '419' ) { 
				if(Number(data.message) >= 5){
					_noticeMsg.text('비밀번호 모르신다면  \'비밀번호 찾기\'를 누르세요!');
					_noticeMsg.show();
					//_referMsg.attr('style','display:block');
					_passwd.focus();
					return;
				}else{
					_noticeMsg.text('입력한 아이디 또는 비밀번호가 잘못되었습니다.');
					_noticeMsg.show();
					_passwd.focus();
					return;
				}
			} else if( data.code == '420' ) { 
				alert('탈퇴한 회원이십니다.\n부정가입 방지를 위해 탈퇴일로부터 '+data.message+'일 후 재가입이 가능하십니다.');
				//window.location.href = '/member/login';
				return;
			} else if( data.code == '421' ) { //휴먼고객
                location.href = '/mypage/dormantRestoreForm?step1='+encodeURIComponent(currentPage);
                return;
            } 
		}
	}).fail(function(jqXHR, textStatus, errorThrown) {
		isLoading = false;
		alert("시스템 에러가 발생했습니다.\n잠시 후 다시 시도 해 주세요.");
	});
}

function initFocus() {
	var _memId = $("input#memId");
	var _passwd = $("input#passwd");
	
	if( !_memId.val() ) {
		_memId.focus();
		return;
	} else if( !_passwd.val() ) {
		_passwd.focus();
		return;
	} else {
		_passwd.select();
		_passwd.focus();
		return;
	}
}

function magicEvent(){ 
	alert("'매직이벤트' \n 10% 적립금 지급은 회원 주문 시에만 가능합니다.");   //확인
	easyForm.action = '/member/easy-order/nm-info';
    easyForm.submit();
}

function nmLogin(){
	window.location.href = '/member/nm-order/auth';
}