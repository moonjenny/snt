var url = location.href;
var openPolicyYn = "1";
if( url.indexOf("#policy") < 0 ){	//= hard history back 으로 안갔을때에는 history 추가하지 않는다.
	window.history.pushState('forward', null, '#policy');
}
if (window.history && window.history.pushState) {
	$(window).on('popstate', function() {
  		var hashLocation = location.hash;
  		var hashSplit = hashLocation.split("#!/");
  		var hashName = hashSplit[1];

  		if (hashName !== '') {
    		var hash = window.location.hash;
    		if (hash === '') {
				//= 우편번호 Open상태에서 hard history back 발생 시 주문페이지로 이동
      			if( openPolicyYn == "1" ){
					//window.history.pushState('forward', null, '#policy');
      				closePolicyPage();
				}
    		}
  		}
	});
}
function closePolicyPage(){
    jQuery('main#policy').remove();
    if(isApp()){
    	if(location.href.indexOf("index") >0 ){
    		setupVideo('view', '', menuArr);
    		var hashLocation = location.hash;
        	var hashSplit = hashLocation.split("#");
        	var hashName = hashSplit[1];
    		
    		if( hashName != undefined && hashName != "0") {
        		hashName = Number(hashName);
				location.href = "shoppingntapp://setMainCategoryIndex?main="+hashName;
        	}
    	}else if(location.href.indexOf("goods-list") >0 ){
    		location.href = "shoppingntapp://setGoodsListCategoryItem?q="+JSON.stringify(menuArr);
    	}else if(location.href.indexOf("/display/goods/") >0 ){
    		
    	}else{
    		sendAppTitleInfo();
    	}
    }
    jQuery('main#contents').show();
}
jQuery(document).ready(function(){
	if(isApp()){
		var titleObj = {};
		titleObj.title = jQuery.trim(jQuery('#policyTitle').text());
		if(isIOS()) {
			titleObj.title = encodeURIComponent(jQuery.trim(titleObj.title));
		}
		titleObj.backBtn = "javascript:closePolicyPage()";
		location.href = "shoppingntapp://setTitle?main="+JSON.stringify(titleObj);
	}
});