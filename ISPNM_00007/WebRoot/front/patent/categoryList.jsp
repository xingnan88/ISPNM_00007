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
  			<div id="head"><h3>A.����������Ҫ</h3></div>
  			<div id="content"><a href="Patent_simpleSearch?page=1&type=mainClassNumber&content=A">A01  ũҵ����ҵ������ҵ�����ԣ��ղ�������</a> </div>
  			<div id="content"><a href="#">A21  ������ʳ������</a> </div>
  			<div id="content"><a href="#">A22  ���ף���Ʒ�������ݻ���ļӹ� </a> </div>
  			<div id="content"><a href="#">A41  ��װ </a> </div>
  			<div id="content"><a href="#">A47  �Ҿߣ���ͥ�õ���Ʒ���豸������ĥ�� </a> </div>
  		</div>
  		<div id="box" style="float: right;">
  			<div id="head" style="background-color: #FF6600"><h3>B.��ҵ,����</h3></div>
  		</div>
  		<div id="box" style="float: left;">
  			<div id="head" style="background-color: #CDCD00"><h3>C.��ѧ,ұ��</h3></div>
  		</div>
  		<div id="box" style="float: right;">
  			<div id="head" style="background-color: #7B68EE"><h3>D.��֯����ֽ</h3></div>
  		</div>
  		<div id="box" style="float: left;">
  			<div id="head" style="background-color: #FFCCFF "><h3>E.�̶�����</h3></div>
  		</div>
  		<div id="box" style="float: right;">
  			<div id="head" style="background-color: #CCFF00 "><h3>F.��е����</h3></div>
  		</div>
  	</div>
  	
  </body>
</html>
