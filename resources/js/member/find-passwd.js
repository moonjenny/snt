document.write("<script type='text/javascript' src='/resources/js/debug.js'></script>"); 
document.write("<script type='text/javascript' src='/resources/js/comUtil.js'></script>"); 

function checkMemId(url) {
	var $form = $("#checkIdForm");
	var checkMemId = $("input#checkMemId").val();
	if (comUtil.isEmpty(checkMemId)) {
		alert("아이디를 입력해 주세요.");
		$("input#memId").focus();
		return false;
	}
	
	commonAjax($form.attr('action'), $form.serialize(), "json", "POST")
		.done(function(data, textStatus, jqXHR) {
			if (_debug) console.log(data.code + ' : ' + data.message);
			if (data.code == 200) {
				submit(url, checkMemId);
			}
			else {
				alert(data.message);
			}
		}).fail(function(jqXHR, textStatus, errorThrown) {
			if (_debug) console.log("에러", "실패 : " + errorThrown);
			alert("시스템 에러가 발생했습니다.\n잠시 후 다시 시도 해 주세요.");
		});
}
  
function submit(url, checkMemId) {
	var $form = $("#findPasswdForm");
	$("input#memId").val(checkMemId);
    var action = $form.attr('action');
	if (_debug) console.log('action : ' + $form.attr('action'));

	$form.attr('action', url);
    action = $form.attr('action');
	if (_debug) console.log('action : ' + $form.attr('action'));

	$form.submit();

}