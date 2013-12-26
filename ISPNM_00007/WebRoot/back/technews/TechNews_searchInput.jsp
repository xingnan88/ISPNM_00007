<%@ page contentType="text/html; charset=GBK" language="java"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
	    <base href="<%=basePath%>">
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=GBK">
		<link href="css/bodystyle.css" rel="stylesheet" type="text/css">
		<title>高级搜索</title>

		<script type="text/javascript" src="<%=basePath%>/tools/My97DatePicker/WdatePicker.js">
</script>

	</head>

	<body>
		<br>
		<br>
		<form name="search" method="POST" action="TechNews_search?page=1"
			enctype="multipart/form-data">		
			<table width="70%" border="1" align=left cellpadding="1"
				cellspacing="1">
				<tr background="images/bg.gif">
					<td height="27" colspan="3" background="images/bg.gif">
						&nbsp;&nbsp;
						<b class="title" >高级搜索</b>
					</td>
				</tr>


				<tr class="chinese">
					<td width="130" height="25" align="right">
						信息标题：
					</td>
					<td height="25" colspan="2">
						<input name="news" type="text" class="chinese"
							id="NewsTitle" size="40" maxlength="60">
					</td>
				</tr>
				
				<tr class="chinese">
					<td width="130" height="25" align="right">
						发布时间：
					</td>
					<td height="25" colspan="2">
					   
						<input id="techNews.starttime" type="text" name="techNews.starttime" />
						<img onclick="WdatePicker({el:$dp.$('techNews.starttime')})"
							src="<%=basePath%>/tools/My97DatePicker/skin/datePicker.gif" width="16" height="22"
							align="absmiddle">
					
					--->
					
						<input id="techNews.endtime" type="text" name="techNews.endtime" />
						<img onclick="WdatePicker({el:$dp.$('techNews.endtime')})"
							src="<%=basePath%>/tools/My97DatePicker/skin/datePicker.gif" width="16" height="22"
							align="absmiddle">
					</td>

				</tr>
				



				<tr>
					<td colspan=3>
						<p align="center">
							<br>
							
							<input name="B2" type="submit" class="button" id="B2"
								value="搜索>>">
							<br>
							<br>
							<br>
						</p>
					</td>
				</tr>
			</table>
			<br>
			<br>
		</form>
	</body>
</html>
