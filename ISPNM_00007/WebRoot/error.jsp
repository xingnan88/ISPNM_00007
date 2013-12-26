<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'choice1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="content/themes/sspl/sspl.all.css" type="text/css" />
	<link rel="stylesheet" href="content/standard.css" type="text/css" />
	<script src="js/jquery-1.6.2.min.js" type="text/javascript"></script>
	<script src="js/jquery-ui-1.8.14.custom.min.js" type="text/javascript"></script>
	<script src="js/sspl/div.js" type="text/javascript"></script>
	<script src="js/sspl/button.js" type="text/javascript"></script>
	
	<style type="text/css">
		body{ margin:0px;}
	</style>
  </head>
  
  <body>
    <div class="body">
			<div class="title"><h2>温馨提示</h2></div>
			<div class="detail">
				<div class="info">
					<span class="warnPrompt">操作未成功！</span><br/>
					<p style="text-align:left;padding-left: 20px;">
						<label>错误提示信息：</label><br/>
						<label style="color:red;"><s:property value="exception"/></label>
					</p>
					<input type="button" value="返回" name="back"/>
				</div>
			</div>
			<div class="message"><span>提示信息</span></div>
		</div>
  </body>
</html>
