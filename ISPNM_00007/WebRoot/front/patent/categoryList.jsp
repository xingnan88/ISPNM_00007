<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'category.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/category.css">
  </head>
  
  <body>
  	<div id="boxs">
  		<div id="box" style="float: left;">
  			<div id="head"><h3>A.人类生活需要</h3></div>
  			<div id="content"><a href="Patent_simpleSearch?page=1&type=mainClassNumber&content=A">A01  农业；林业；畜牧业；狩猎；诱捕；捕鱼</a> </div>
  			<div id="content"><a href="#">A21  焙烤；食用面团</a> </div>
  			<div id="content"><a href="#">A22  屠宰；肉品处理；家禽或鱼的加工 </a> </div>
  			<div id="content"><a href="#">A41  服装 </a> </div>
  			<div id="content"><a href="#">A47  家具；家庭用的物品或设备；咖啡磨； </a> </div>
  		</div>
  		<div id="box" style="float: right;">
  			<div id="head" style="background-color: #FF6600"><h3>B.作业,运输</h3></div>
  		</div>
  		<div id="box" style="float: left;">
  			<div id="head" style="background-color: #CDCD00"><h3>C.化学,冶金</h3></div>
  		</div>
  		<div id="box" style="float: right;">
  			<div id="head" style="background-color: #7B68EE"><h3>D.纺织和造纸</h3></div>
  		</div>
  		<div id="box" style="float: left;">
  			<div id="head" style="background-color: #FFCCFF "><h3>E.固定构架</h3></div>
  		</div>
  		<div id="box" style="float: right;">
  			<div id="head" style="background-color: #CCFF00 "><h3>F.机械工程</h3></div>
  		</div>
  	</div>
  	
  </body>
</html>
