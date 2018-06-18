document.write("<script type='text/javascript' src='/resources/js/debug.js'></script>"); 
document.write("<script type='text/javascript' src='/resources/js/comUtil.js'></script>"); 

var ipinUrl = '/member/auth/ipin/form';
var impayUrl = '/member/auth/impay/form';
var kmcUrl = '/member/auth/kmc/form';
var noChkJoin = '/member/no-chk-join/agree';

function ipin(formName) {
	var _form = $('#'+formName);
	_form.attr('action', ipinUrl);
	_form.submit();
}

function impay(formName) {
	var _form = $('#'+formName);
	_form.attr('action', impayUrl);
	_form.submit();
}

function kmc(formName) {
	var _form = $('#'+formName);
	_form.attr('action', kmcUrl);
	_form.submit();
}

function noCheckJoin(formName) {
	var _form = $('#auth');
	_form.attr('action', noChkJoin);
	_form.submit();
}
