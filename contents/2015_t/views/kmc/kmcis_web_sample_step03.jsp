<%
	response.setHeader("Pragma","no-cache");			// HTTP1.0 ĳ�� ����
	response.setDateHeader("Expires",0);				// proxy ������ ĳ�� ����
	response.setHeader("Pragma", "no-store");			// HTTP1.1 ĳ�� ����
	if(request.getProtocol().equals("HTTP/1.1"))
			response.setHeader("Cache-Control", "no-cache"); // HTTP1.1 ĳ�� ����
%>
<%@ page contentType = "text/html;charset=ksc5601"%>
<%@ page import = "java.util.*" %>
<%

	String rec_cert      = "";  // �����(��ȣȭ)
	String certNum       = "";  // certNum
	
    rec_cert = request.getParameter("rec_cert").trim();
	certNum  = request.getParameter("certNum").trim(); 
	
%>
<html>
<head>
<script type="text/javascript">
	var move_page_url = "http://devm.shoppingnt.co.kr/contents/2015_t/views/kmc/kmcis_web_sample_step04.jsp";
	

	function end() {
   		var UserAgent = navigator.userAgent;
   		
   		// ��� ������ ��� ����
    	document.kmcis_form.action = move_page_url;
	
    	/* ����� ���� üũ*/
    	// ������� ��� (�������� ������� �߰� �ʿ�)
    	if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null) {
		    document.kmcis_form.submit();
	  	} 
	  
	  	// ������� �ƴ� ���
	  	else {
			document.kmcis_form.target = opener.window.name;
		  	document.kmcis_form.submit();
   		  	self.close();
	  	}
	}
</script>
</head>
<body onload="javascript:end()">
<form id="kmcis_form" name="kmcis_form" method="post">
	<input type="hidden"	name="rec_cert"		id="rec_cert"	value="<%=rec_cert%>"/>
	<input type="hidden"	name="certNum"		id="certNum"	value="<%=certNum%>"/>
</form>
</body>
</html>