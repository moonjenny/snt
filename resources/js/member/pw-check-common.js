document.write("<script type='text/javascript' src='/resources/js/debug.js'></script>"); 
document.write("<script type='text/javascript' src='/resources/js/comUtil.js'></script>"); 

/**
 * 비밀번호 제약조건 확인
 * @param pw
 * @param type - new: 신규, change: 변경
 */
function memPwCheck(pw, type) {
	var _pattern = null,
		_pattern_count = 0,
		_target = '비밀번호';
	
	if( type == "change" ) {
		_target = '새 비밀번호';
	}
	
	if( comUtil.isEmpty(pw) ) {
		return _target + '를 입력해 주세요.';
	}
	
	/*
	// 한글 
	_pattern = /[ㄱ-ㅎ가-힣]/i;
	if( _pattern.test(pw) ) {
		return "영문 대, 소문자, 숫자, 특수문자 중 2종류 조합 할 경우는 10자 이상, 3종류 조합일 경우 8자 이상 입력해 주셔야 합니다.";
	}
	*/
	
	//_pattern = /([^a-zA-Z0-9|`,~,!,@,$,%,^,&,*,(,),_,\-,+,=])/;
	/*_pattern = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
	if( _pattern.test(pw) ) {
		//return "특수문자는 `, ~, !, @, $, %, ^, &, *, (, ), _, -, +, = 만 사용 가능합니다.";
		return '‘영문소문자’와 ‘숫자’로 조합하여 8자~15자로 입력해 주세요.';
	}
	
	*//** 조합 체크 **//*
	_pattern_count = 0;
	// 영문 대문자
	_pattern = /[A-Z]/;
	if( _pattern.test(pw) ){ //_pattern_count++;
		return '‘영문소문자’와 ‘숫자’로 조합하여 8자~15자로 입력해 주세요.';
	}
	// 영문 소문자
	_pattern = /[a-z]/;
	if( _pattern.test(pw) ) _pattern_count++;
	// 숫자
	_pattern = /[0-9]/; 
	if( _pattern.test(pw) ) _pattern_count++;
	// 특수문자
	//_pattern = /[`,~,!,@,$,%,^,&,*,(,),_,\-,+,=]/;
	//if( _pattern.test(pw) ) _pattern_count++;
	
	if( _pattern_count < 1 ) {
		return '‘영문소문자’와 ‘숫자’로 조합하여 8자~15자로 입력해 주세요.';
	}
	
	if( _pattern_count >= 1 ) {
		if( pw.length < 8 ) {
			return '‘영문소문자’와 ‘숫자’로 조합하여 8자~15자로 입력해 주세요.';
		}
	}
	
	if( pw.length > 16 ) {
		return '‘영문소문자’와 ‘숫자’로 조합하여 8자~15자로 입력해 주세요.';//'비밀번호는 16자 이내로 입력해 주셔야 합니다.';
	}*/
	var pwRegType =  /^[a-z0-9]{8,15}$/; 

	var pwRegType2 =  /[0-9]/; 

	var pwRegType3 =  /[a-z]/; 
	
	if(!pwRegType.test(pw)){
		return "‘영문소문자’와 ‘숫자’로 조합하여 8자~15자로 입력해 주세요.";
	}
	else if (!pwRegType2.test(pw) || !pwRegType3.test(pw) ){
		return "‘영문소문자’와 ‘숫자’로 조합하여 8자~15자로 입력해 주세요.";
	}
	
	return '';
}
/**
 * TV비밀번호 제약조건 확인
 * @param pw
 * @param type - new: 신규, change: 변경
 */
function tvPwCheck(pw, type) {
	var _pattern = null,
	_pattern_count = 0,
	_target = '비밀번호';
	
	if( type == "change" ) {
		_target = '새 비밀번호';
	}
	
	if( comUtil.isEmpty(pw) ) {
		return _target + '를 입력해 주세요.';
	}
	
	if( pw.length != 4 ) {
		return '‘숫자’로  4자로 입력해 주세요.';//'비밀번호는 16자 이내로 입력해 주셔야 합니다.';
	}
	var pwRegType =  /^[a-z0-9]{8,15}$/; 
	
	var pwRegType2 =  /[0-9]/; 
	
	var pwRegType3 =  /[a-z]/; 
	
	if (!pwRegType2.test(pw)){
		return "‘숫자’로  4자로 입력해 주세요.";
	}
	
	return '';
}

function memPwConfirmCheck(pw, pw2, type) {
	var _target = '비밀번호';
	if( type == "change" ) {
		_target = '새 비밀번호';
	}
	
	if( comUtil.isEmpty(pw2) ) {
		return _target + ' 확인을 입력해 주세요.';
	}
	else if( pw != pw2 ) {
		//return '비밀번호가 일치하지 않습니다.';
		
		return _target +'가 일치하지 않습니다.';
	}
	return '';
}