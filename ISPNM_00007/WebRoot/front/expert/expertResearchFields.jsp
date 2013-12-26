<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>矿冶行业专家库</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	</head>
	<body>
		
			<table width="1000" border="0" align="center">
				<tr height="125">
					<td colspan="2" height="125"><jsp:include page="/top.jsp"></jsp:include></td>
				</tr>
				<tr>
					 <td width="10%" ><jsp:include page="left.jsp"></jsp:include></td>
					<td width="70%" valign="top">
					<jsp:include page="rightResearchFields.jsp"></jsp:include>
					</td>
				</tr>
				<tr>
					<td colspan="2"><jsp:include page="/bottom.jsp"></jsp:include></td>
				</tr>
			</table>
	
	</body>
</html>
