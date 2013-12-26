<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="jxust.isp4nm.serviceImpl.EquipmentServiceImpl"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	if (application.getAttribute("categorys") == null)
		application.setAttribute("categorys", EquipmentServiceImpl
				.currentCategorys());
	String[][] categorys = (String[][]) application
			.getAttribute("categorys");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link href="<%=basePath%>images/skin.css" rel="stylesheet"
			type="text/css" />
		<link href="myStyle.css" rel="stylesheet" type="text/css" />
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-1.5.1.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-ui-1.8.14.custom.min.js"></script>
		<style type="text/css">
#mainContent h2 {
	width: 100px;
	font-size: 20px;
	font-weight: bolder;
	/*border:1px solid #A0C6EB;*/
	margin: 10px;
	background-color: #FFFFFF
}

#mainContent div {
	width: 100%;
	font-size: 20;
	border: 1px solid rgb(10, 100, 130);
	margin: 7px 0 7px 0;
}
</style>
		<script>
			function clickCategory(link){
				$("#clicked").val($(link).attr("id"));
				$("#hidden").submit();
			}
		</script>
	</head>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top">
					<img src="<%=basePath%>images/left-top-right.gif" width="17"
						height="29" />
				</td>
				<td valign="top" background="<%=basePath%>images/content-bg.gif">
					<div class="titlebt">
						分类列表
					</div>
				</td>
				<td width="17" valign="top">
					<img src="<%=basePath%>images/nav-right-bg.gif" width="17"
						height="29" />
				</td>
			</tr>
		</table>

		<div id="mainContent" style="width:95%">
			<form action="search">
				<div id="searchDiv">
					<label style="font-size: 12px; margin-left: 10px;">
						查找关键字：
					</label>
					<img src="../../images/pic7.gif" />
					<input style="width: 150px;" type="text" name="keyWord" />
					<select name="method">
						<option value="0">
							按设备名称
						</option>
						<option value="1">
							按设备类型
						</option>
						<option value="2">
							按设备企业
						</option>
					</select>
					<input class="button"
						style="background-image: url(../../images/yimgbt.gif);"
						type="submit" value="  搜 索" />
				</div>
			</form>
			<form id="hidden" action="<%=basePath%>back/equipment/list"
				style="display: none" method="post">
				<div>
					<input type="hidden" id="clicked" name="equipment.category"
						value="" />
				</div>
			</form>
			<%
				for (int i = 0; i < categorys.length; i++) {
			%>
			<div>
				<h2>
					<img src="../../images/yx.gif" style="display: inline" /><%=categorys[i][0]%></h2>
				<%
					for (int j = 1; j < categorys[i].length; j++) {
				%>
				<a href="#" onclick="clickCategory(this)"
					id="<%=categorys[i][0] + "," + categorys[i][j]%>"> <img
						src="../../images/to.gif" />&nbsp;<%=categorys[i][j]%> </a>
				<%
					}
				%>
			</div>
			<%
				}
			%>
		</div>

	</body>
</html>