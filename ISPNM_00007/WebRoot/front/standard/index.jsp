<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>矿冶行业标准库</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<script type="text/javascript" src="front/standard/js/standard.js"></script>
	</head>

	<body style="text-align: center">
	  <div style="width: 1020 ; margin: 0 auto 3 auto;padding: 0 auto;">
		<jsp:include page="/top.jsp"></jsp:include>
		</div>
		<table id="main" width="100%" height="32">
			<tr>
			<td width="259"><jsp:include page="left.jsp"></jsp:include></td>
				<td align="left" width="760">
				
					<div border="0" cellpadding="0" cellspacing="0"  align="center" style="border: 1px solid rgb(255, 55, 20); border: 1px solid #CCC;padding:0px">
						<iframe name="myframe" height="760" width="755" src="standard/standardAction!list2" frameborder="0" scrolling="no"></iframe>
					</div>
				</td>
			</tr>
		</table>
	
		<jsp:include page="/bottom.jsp"></jsp:include>
	</body>
</html>