<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Bottom.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/index.css"/>
	<script type="text/javascript" src="<%=basePath %>tools/jquery-ui/js/jquery-1.6.2.min.js" ></script>
	<script type="text/javascript" src="<%=basePath %>tools/jquery-ui/js/jquery-ui-1.8.15.custom.min.js" ></script>
	<script type="text/javascript" src="<%=basePath %>/js/index.js" ></script>
	<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
  <style type="text/css">
a.db{
	font-family:'楷体';

}
label {
	display: block;
}
	</style>
	<script >
	</script>

  </head>
  
  <body style="background-image: url('<%=basePath %>front/feature/images/bg.png');">
    <div id="links">
			<div class="titlebg">
				<span class="title" >友情链接</span>
			</div>
			<div>
				<%
					for (int i = 0; i < 6; i++) {
				%>
				<a href="#" title="江西理工大学"><img src="images/link-jxust.png"
						alt="" /> </a>
				<a href="#" title="CSDN论坛"><img src="images/link-csdn.png"
						alt="CSDN论坛" /> </a>
				<a href="#" title="搜狐"><img src="images/link-sohu.png" alt="搜狐" />
				</a>
				<%
					}
				%>
			</div>
		</div>
		<div id="policy">
			<a href="#">关于本站</a>|
			<a href="#">商务合作</a>|
			<a href="#">法律声明</a>|
			<a href="#">帮助中心</a>|
			<a href="#">技术支持</a>
			
			<p>
				Copyright? 2011-2021 www.isp4nm.com All Rights Reserved 版权所有
				江西理工大学图书馆
			</p>
			<p>
				京ICP证：080527号 《网络文化经营许可证》 文网文[2009]127号 京公网安备110105005190号
			</p>
			<p>
				设计团队：江西理工大学信息学院企桥工作室
			</p>
		</div>
		<script type="text/javascript">
swfobject.registerObject("FlashID");
</script>
  </body>
</html>
