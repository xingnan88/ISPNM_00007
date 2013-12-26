<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>øÛ“±Ω Ù÷÷¿‡ø‚</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="text-align: center;">  
  <jsp:include page="/top.jsp"></jsp:include>
   	<table border="0" cellpadding="0" cellspacing="0">
	   		<tr>
	   			<td>
	   				<iframe name="fl" marginwidth=0 marginheight=0 src="front/metaInfo/metalInfo!leftFore.action" frameborder=no
							scrolling=no width=250 height=857></iframe>
				</td>
	   			<td>
	   				<iframe name="fr" src="front/metaInfo/index!rightFore.action" 
	   				style="padding: 0px; border-style: none; width: 765px; height: 855px;"></iframe>
				</td>
	   		</tr>
	   		<tr>
	   			<td colspan="2">
	   				<jsp:include page="/bottom.jsp"></jsp:include>
	   			</td>
	   		</tr>
   	</table>
  </body>
</html>
