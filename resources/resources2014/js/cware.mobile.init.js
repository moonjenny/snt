//document.write("<script src='https://developers.kakao.com/sdk/js/kakao.min.js'></script>");

var iPadAgent = navigator.userAgent.match(/iPad/i) != null;
var iPhoneAgent = ( navigator.userAgent.match(/iPhone/i) != null || navigator.userAgent.match(/iPod/i) != null  );
var iOsAgent = ( navigator.userAgent.match(/iPhone/i) != null || navigator.userAgent.match(/iPod/i) != null || navigator.userAgent.match(/iPad/i) != null );
var AndroidAgent = navigator.userAgent.match(/Android/i) != null;
//var AppFlag = navigator.userAgent.match(/appid/i) != null; // APP WEBVIEW 접속 여부
var NaverAppFlag = navigator.userAgent.match(/NAVER/i) != null; // APP WEBVIEW 접속 여부
var SafariAppFlag = navigator.userAgent.match(/Safari/i) != null;

var AgentOs= navigator.userAgent.replace(/ /g,'');

/*
if(iOsAgent){
	AppFlag = ( navigator.userAgent.match(/Safari/i) == null && navigator.userAgent.match(/NAVER/i) == null);
	if(!AppFlag) AppFlag = navigator.userAgent.match(/appid/i) != null;
}
*/

var AppVersionAndroid = 100;
var AppVersioniOS = '1.0.0';

(function(){
	try{
		var str = window.versionCheck.callAndroid();
		str = str.split(".").join(""); 
		AppVersionAndroid = parseInt(str);
		if(AppVersionAndroid < 100) AppVersionAndroid = AppVersionAndroid*10;
	}catch(E){
		AppVersionAndroid = 100;
	}
})();

function iosVersionCheck(version) {
	if (version != undefined && version != '') { 
		AppVersioniOS = version;
	}
}


//SNS 카카오 스토리, LINE 추가
function sns_kakaoStory(goodsName){
	var shareText = "[쇼핑엔티]"+goodsName;
	var shareUrl = window.location.origin+window.location.pathname+window.location.search;
	var install = function () {
        location.href = "http://itunes.apple.com/app/id486244601";
    };
	
	if (iOsAgent) {
		var kakaoStoryScheme = 'storylink://posting?post='+(shareUrl)+'&appid=_appid&appver=1&apiver=1.0&appname='+encodeURIComponent(shareText);
		jQuery('<iframe style="display:none" width="0" height="0" src="'+kakaoStoryScheme+'"></iframe>').appendTo('body');
		setTimeout(install, 35);
	}
	else {
		var kakaoStoryScheme = 'posting?post='+encodeURIComponent(shareUrl)+'&appid=_appid&appver=1&apiver=1.0&appname='+encodeURIComponent(shareText);
		location.href = "intent://" + kakaoStoryScheme + "#Intent;scheme=storylink;package=com.kakao.story;end";
	}
}

function sns_line(goodsName){
	var shareText = "[쇼핑엔티]"+goodsName+' ';
	var shareUrl = window.location.origin+window.location.pathname+window.location.search;
	var install = function () {
        location.href = "http://itunes.apple.com/jp/app/line/id443904275";
    };
	
	if (iOsAgent) {
		var lineScheme = 'line://msg/text/'+encodeURIComponent(shareText)+encodeURIComponent(shareUrl);
		jQuery('<iframe style="display:none" width="0" height="0" src="'+lineScheme+'"></iframe>').appendTo('body');
		setTimeout(install, 35);
	}
	else {
		var lineScheme = 'msg/text/'+encodeURIComponent(shareText)+encodeURIComponent(shareUrl);
		location.href = "intent://" + lineScheme + "#Intent;scheme=line;package=jp.naver.line.android;end";
	}
}

function sns_kakaoTalk(goodsName){
	var shareText = "[쇼핑엔티]"+goodsName;
	var shareUrl = window.location.origin+window.location.pathname+window.location.search;
	var install = function () {
        location.href = "http://itunes.apple.com/app/id362057947";
    };
	
	if (iOsAgent) {
		var kakaoTalkScheme = 'kakaolink://sendurl?msg='+encodeURIComponent(shareText)+'&url='+encodeURIComponent(shareUrl)+'&appid=appid&appver=1';
		jQuery('<iframe style="display:none" width="0" height="0" src="'+kakaoTalkScheme+'"></iframe>').appendTo('body');
		setTimeout(install, 35);
	}
	else {
		var kakaoTalkScheme = 'sendurl?msg='+encodeURIComponent(shareText)+'&url='+encodeURIComponent(shareUrl)+'&appid=appid&appver=1';
		location.href = "intent:/" + kakaoTalkScheme + "#Intent;scheme=kakaolink;package=com.kakao.talk;end";
	}
	/*
	Kakao.init(''); // 7972aa1f9a59b72eab522652d4fa6e5b
	Kakao.Link.sendTalkLink({
		label: '[쇼핑엔T] ' + goodsName + '\n' + shareUrl
	});
	*/
}

function sns_facebook(goodsName){
	var shareText = '[쇼핑엔티] '+goodsName;
	var shareUrl = window.location.origin+window.location.pathname+window.location.search;
	//window.open('https://www.facebook.com/sharer/sharer.php?m2w&u='+encodeURIComponent(shareUrl), 'facebookWindow', 'width=626,height=436');
	//window.location.href = 'https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent(shareUrl);
	//for test in DEV MODE
//	window.open('https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fm.shoppingntmall.com%2Fdisplay%2Fgoods%2F10001448', 'facebookWindow', 'width=626,height=436');
//	window.location.href = 'https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fm.shoppingntmall.com%2Fdisplay%2Fgoods%2F10001448';
	location.href = 'https://www.facebook.com/dialog/share?app_id=1746235598997435&display=popup&href='+encodeURIComponent(shareUrl)+'&redirect_uri='+encodeURIComponent(shareUrl);
}

function sns_twitter(goodsName){
	var shareText = '[쇼핑엔티] '+goodsName;
	var shareUrl = window.location.origin+window.location.pathname+window.location.search;
	window.open('https://twitter.com/intent/tweet?text='+encodeURIComponent(shareText + ' ' + shareUrl), 'twitterWindow');
	//jQuery(".btn_layer_close").click();
}

//google goo.gl shortener API use by jonghune
//modify html target 변경 jiman 2014-07-08
//android app --문자를 개행문자로 replace 처리
function sns_sms(goodsName){
	var shareText = '[쇼핑엔티] '+goodsName;
	var shareUrl = window.location.origin+window.location.pathname+window.location.search;
	var shareMsg = encodeURIComponent(shareText + ' ' + shareUrl);
	
	if( AndroidAgent ) {
		location.href = "sms://?body="+shareMsg;
	}
	else if( iPhoneAgent ) {
//		if( AgentOs.match(/iPhoneOS[1-7]/i) ) {
//			alert("지원하지 않는 OS 버전입니다.");
//		} else {
			location.href = "sms:&body="+shareMsg + "&title="+goodsName;
//		}
	}
}
