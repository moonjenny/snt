var _pattern01 = /^[0-9]+$/;
var _pattern02 = /^[A-Za-z0-9]+$/;
//var _pattern03 = /^[a-zA-Z0-9]{6,15}$/;
//var _pattern03 = /^[a-z!@#$%^&*()]{6,15}$/;
//var _pattern04 = /^[0-9!@#$%^&*()]{6,15}$/;

var regType =  /^[a-z0-9]{6,15}$/; 

var regType2 =  /[0-9]/; 

var regType3 =  /[a-z]/; 


var entityMap = {
	    "&": "&amp;",
	    "<": "&lt;",
	    ">": "&gt;",
	    '"': '&quot;',
	    "'": '&#39;',
	    "/": '&#x2F;'
	  };

var comUtil = {
	isNotEmpty : function(_str) {
		var obj = String(_str);
		if(obj == null || obj == undefined || obj == 'null' || obj == 'undefined' || obj == '' || obj.trim() == '') {
			return false;
		} else {
			return true;
		}
	},
	isEmpty : function(_str) {
		return !comUtil.isNotEmpty(_str);
	},
	chkPhone : function(_str) {
		var reg_phone = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
		if(comUtil.isNotEmpty(_str)){
			return reg_phone.test(_str);	
		}  
		return false;
	},
	chkMail : function(_str) {
		var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
		if(comUtil.isNotEmpty(_str)){
			return reg_email.test(_str);
		}  
		return false;
	}, 
	chkNumber : function(_str) {
		if(comUtil.isNotEmpty(_str)){
			return !isNaN(_str);
		}  
		return false;
	},
	chkEng : function(_str) {
		var reg_eng = /[a-zA-Z]/;
		if(comUtil.isNotEmpty(_str)){
			return reg_eng.test(_str);
		}  
		return false;
	},
	chkHan : function(_str) {
		var reg_han = /^([가-힣]+)$/;
		if(comUtil.isNotEmpty(_str)){
			return reg_han.test(_str);
		}  
		return false;
	},
	chkHanEng : function(_str) {
		var reg_han_eng = /^([가-힣a-zA-Z]+)$/;
		if(comUtil.isNotEmpty(_str)){
			return reg_han_eng.test(_str);
		}  
		return false;
	},
	checkDDD : function (_str) {
		if('02' == _str || '051' == _str || '053' == _str || 
				'032' == _str || '062' == _str || '042' == _str || 
				'052' == _str || '044' == _str || '031' == _str || 
				'033' == _str || '043' == _str || '041' == _str || 
				'063' == _str || '061' == _str || '054' == _str || 
				'055' == _str || '064' == _str || '070' == _str ||
				'0502' == _str || '0505' == _str || '0506' == _str || 
				'0130' == _str || '0303' == _str || '010' == _str || '011' == _str || '016' == _str || 
				'017' == _str || '018' == _str || '019' == _str) {
			return true;
		}
		return false;
	},
	checkHp1 : function (_str) {
		if('010' == _str || '011' == _str || '016' == _str || 
				'017' == _str || '018' == _str || '019' == _str) {
			return true;
		}
		return false;
	},
	formatDate : function(date, fmt) {
	    function pad(value) {
	        return (value.toString().length < 2) ? '0' + value : value;
	    }
	    return fmt.replace(/%([a-zA-Z])/g, function (_, fmtCode) {
	        switch (fmtCode) {
	        case 'Y':
	            return date.getUTCFullYear();
	        case 'M':
	            return pad(date.getUTCMonth() + 1);
	        case 'd':
	            return pad(date.getUTCDate());
	        case 'H':
	            return pad(date.getUTCHours());
	        case 'm':
	            return pad(date.getUTCMinutes());
	        case 's':
	            return pad(date.getUTCSeconds());
	        default:
	            throw new Error('Unsupported format code: ' + fmtCode);
	        }
	    });
	},
	setComma : function (n) {
		var reg = /(^[+-]?\d+)(\d{3})/;   // 정규식
		n += '';  // 숫자를 문자열로 변환
		while (reg.test(n)){
			n = n.replace(reg, '$1' + ',' + '$2');
		}
		return n;
	},
	escapeHtml : function (str) {
		return String(str).replace(/[&<>"'\/]/g, 
			function (s) {
				return entityMap[s];
			}
		);
	}
};

function goPage(url) {
	window.location.replace(url);
}

function goUrl(url){
    window.location.href = url;
}

function winPopupCenter(_url, _popName, _popWidth, _popHeight, _popScrollYn, _popResizeYn){
	var win = null;
	var winL = (screen.width - _popWidth)/2;
	var winT = (screen.height - _popHeight)/2;
	var popOption = [];
	popOption.push('toolbar=no');
	popOption.push(',status=no');
	popOption.push(',location=no');
	popOption.push(',width='+_popWidth);
	popOption.push(',height='+_popHeight);
	popOption.push(',top='+winT);
	popOption.push(',left='+winL);
	popOption.push(',scrollbars='+(_popScrollYn==undefined?'no':_popScrollYn));
	popOption.push(',resizable='+(_popResizeYn==undefined?'no':_popResizeYn));
	win = window.open(_url, _popName, popOption.join(''));
	if(parseInt(navigator.appVersion) >= 4) {
		win.window.focus();
	}
}

function calculate_msglen(message){
   var nbytes = 0;
 
   for (i=0; i<message.length; i++) {
       var ch = message.charAt(i);
       if(escape(ch).length > 4) {
           nbytes += 2;
       } else if (ch == '\n') {
           if (message.charAt(i-1) != '\r') {
               nbytes += 1;
           }
       } else if (ch == '<' || ch == '>') {
           nbytes += 4;
       } else {
           nbytes += 1;
       }
   }
 
   return nbytes;
}

function scriptReplace(str){
	if (str == undefined || str == null){
		return "";
	}
	str = str.replace(/\</g,"&lt;");
	str = str.replace(/\>/g,"&gt;");
	str = str.replace(/\"/g,"&quot;");
	return str;
}

function windowClose() {
	
	if(jQuery("main#policy").length){
		window.history.back();
	}else{
		window.close();
		window.location.replace('about:blank','_self').close();
	}
}
