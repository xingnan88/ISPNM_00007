<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="jxust.isp4nm.model.MetalInfo"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <style>
		#Marquee{ height:200px; overflow:hidden;}
		#Marquee div{ border:1px solid #DDD3FE; background:#EEECF4; height:120px;}
	</style>
    <title>My JSP 'Left.jsp' starting page</title> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/index.css"/>
	<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-1.6.2.min.js" ></script>
	<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-ui-1.8.15.custom.min.js" ></script>
	<script type="text/javascript" src="index.js" ></script>	
  </head>
  
  <body>
        <div id="left" style="overflow: hidden;"><!-- 图片新闻区域 -->
		    	<div >
           <div style="line-height:10px; overflow:hidden; font-size:12px; color:#000000; 
                text-align:center; text-decoration: none;padding:0px;margin:0px">
           <script type="text/javascript" src="front/metaInfo/js/picture.js"></script>          
	</div>
</div>
<div id="service">
	<div class="titlebg"><span class="title" >金属名称</span></div>
	<div id="Marquee">
	<div style=" height: 200px">
		<s:iterator value="metalList" var="t">
			<a href="front/metaInfo/index!rightFore.action?metalNo=${t.metalNo }" target="fr"><span class="i"><s:property value="metalName"/></span></a>
		</s:iterator>
	</div>
	</div>
	<script type="text/javascript" src="front/metaInfo/js/Text.js"></script>
   	<div id="contact"><!-- 联系我们 -->
   		<div class="titlebg"><span class="title" >在线咨询</span></div>
   		<img src="images/consulter.png" alt="" />
   		<img src="images/lijizixun.png" alt="" />
   		<div>
   			<a href="#"><span class="i">咨询留言：QQ88888888</span></a>
   			<a href="#"><span class="i">电子邮箱：isp4nm@jxust.com</span></a>
   			<a href="#"><span class="i">意见提交：点此填写您对网站的建议</span></a>
   		</div>
   	</div>
    </div>
  </body>
</html>
