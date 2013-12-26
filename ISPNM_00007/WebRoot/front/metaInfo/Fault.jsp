<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <script type="text/javascript">
			function check_data() {
			//按提交按钮时，检查数据是否为空
			   if(seniorSearchForm.keyWord.value.length==0){
			  		return false;
				}
				return true;
			}
			function simple_search() {
				window.location.href="front/metaInfo/Search!SimpleSearch.action";
			}
			function senior_search() {
				window.location.href="GetYear!getyearFore.action";
			}
		</script>
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
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
    <table width="740px" cellpadding="1" cellspacing="1"
			background="<%=basePath %>front/feature/images/3-bg.jpg"
			style="BORDER: #B9B9B9 1px solid; background-repeat: repeat-x"
			align="center">
		<tr>
			<td colspan="2">
				<table width="730 cellpadding="0" cellspacing="0" height="35"
						style="BORDER-bottom: #B9B9B9 1px solid;">
						<tr>
							<td style="font-size: 14px; color: FF5100">
							<strong> 金属基本信息 </strong>
							</td>
						</tr>						
				</table>
			</td>					
		</tr>
		<tr>
			<td colspan="2" align="right">
				<form name="seniorSearchForm"
						action="front/metaInfo/Search!SimpleSearch.action"
						onsubmit="return check_data()" method="post">
						<label style="font-size: 12px;">
							查找关键字：
						</label>
						<img src="<%=basePath %>images/pic7.gif" /> 
						<input style="border:1px solid #E9E9F3;width: 150px;" type="text" name="keyWord"/>
						<input class="button"
							style="background-image: url(<%=basePath %>images/yimgbt.gif);"
							type="submit" value="  搜 索" onclick="return simple_search();" />
						<input type="submit" class="button" value="高级搜索"
							style="background-image: url(<%=basePath %>images/yimgbt.gif);"
							onclick="return senior_search();" />
					</form>
			</td>
		</tr>
		<tr>
			<td colspan="2"><Strong><font size="18px" color="red">数据库中找不到你想要的信息！</font></Strong></td>
		</tr>
	</table>
  </body>
</html>
