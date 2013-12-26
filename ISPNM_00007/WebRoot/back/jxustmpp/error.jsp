<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <base href="<%=basePath %>back/jxustmpp/">
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>error</title>
    
	
  </head>
  
  <body>
  
  
    <center>
<script>
	  
      var pgo=0;
      function JumpUrl(){
        if(pgo==0){ location='javascript:history.go(-1);'; pgo=1; }
      }
document.write("<br /><div style='width:450px;padding:0px;border:1px solid #D1DDAA;'><div style='padding:6px;font-size:12px;border-bottom:1px solid #D1DDAA;background:#DBEEBD url(/plus/img/wbg.gif)';'><b>提示信息！</b></div>");
document.write("<div style='height:130px;font-size:10pt;background:#ffffff'><br />");
document.write("<s:property value='errors.error[0]' />");

document.write("<br /><a href='javascript:history.go(-1);'>如果你的浏览器没反应，请点击这里...</a><br/></div>");
setTimeout('JumpUrl()',5000);
</script>
</center>
  </body>
</html>
