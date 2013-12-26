<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<link href="<%=basePath%>back/standard/css/bodystyle.css"
			rel="stylesheet" type="text/css">
		<title>添加矿冶法律法规标准信息</title>
		<script language="JavaScript" type="text/javascript"
			src="<%=basePath%>/tools/My97DatePicker/WdatePicker.js">
</script>
		<script language="JavaScript" type="text/javascript"
			src="<%=basePath%>/tools/ckeditor/ckeditor.js">
</script>
		<script type="text/javascript">
function check() {
	var n1 = document.getElementById("number").value;
	var n2 = document.getElementById("title").value;
	var n3 = document.getElementById("classify").value;
	var n4 = document.getElementById("department").value;
	var n5 = document.getElementById("fbdep").value;
	var n6 = document.getElementById("createtime").value;
	var n7 = document.getElementById("imptime").value;
	if (n11 > 50) {
		alert("文  号字符数不能超过50！");
		return false;
	}
	if (n22 > 100) {
		alert("名  称字符数不能超过100！");
		return false;
	}
	if (n33 > 50) {
		alert("类 别字符数不能超过50！");
		return false;
	}
	if (n44 > 50) {
		alert("状   态字符数不能超过50！");
		return false;
	}
	if (n55 > 10) {
		alert("发布单位字符数不能超过10！");
		return false;
	}

	if (n2 == null || n2 == "") {
		alert("名称不能为空！");
		return false;
	}

	if (n1 == null || n1 == "") {
		alert("文号不能为空！");
		return false;
	}
	if (n3 == null || n3 == "") {
		alert("类别不能为空！");
		return false;
	}
	if (n4 == null || n4 == "") {
		alert("所属行业不能为空！");
		return false;
	}
	if (n5 == null || n5 == "") {
		alert("发布单位不能为空！");
		return false;
	}
	if (n6 == null || n6 == "") {
		alert("发布时间不能为空！");
		return false;
	}
	if (n7 == null || n7 == "") {
		alert("实施时间不能为空！");
		return false;
	}

	return true;
}
</script>
		<script type="text/javascript"
			src="<%=basePath%>/tools/ckeditor/ckeditor.js">
</script>

	</head>

	<body>
		<br>
		<br>
		<form name="add" method="POST"
			action="/ISPNM/standard/standardAction!add"
			enctype="multipart/form-data">
			<table width="1004" border="1" align=center cellpadding="1"
				cellspacing="1" height="700">
				<tr background="../images/bg.gif">
					<td height="27" colspan="3" background="../images/bg.gif">
						&nbsp;&nbsp;
						<b class="title">添加矿冶法律法规标准信息 </b>
					</td>
				</tr>

				<tr class="chinese">
					<td width="100" height="25" align="right">
						名&nbsp;&nbsp;&nbsp;&nbsp;称：
					</td>
					<td height="25" colspan="2">
						<input name="standard.title" type="text" class="chinese"
							id="title" size="40" maxlength="60" value="">
						<font color="red">(*)</font>
					</td>
				</tr>
				<tr class="chinese">
					<td width="100" height="25" align="right">
						文&nbsp;&nbsp;&nbsp;&nbsp;号：
					</td>
					<td height="25" colspan="2">
						<input name="standard.number" type="text" class="chinese"
							id="number" size="40" maxlength="60" value="">
						<font color="red">(*)</font>
					</td>
				</tr>

				<tr class="chinese">
					<td width="100" height="25" align="right">
						发布单位：
					</td>
					<td height="25" colspan="2">
						<input name="standard.fbdep" type="text" class="chinese"
							id="fbdep" size="40" maxlength="60" value="">
						<font color="red">(*)</font>
					</td>
				</tr>
				<tr class="chinese">
					<td width="100" height="25" align="right">
						发布时间：
					</td>
					<td height="25" colspan="2">
						<input name="standard.createtime" type="text" id="createtime"
							size="34" maxlength="50" onclick="WdatePicker()" class="Wdate"
							value="">
						<font color="red">(*)</font>
					</td>
				</tr>
				<tr class="chinese">
					<td width="100" height="25" align="right">
						实施时间：
					</td>
					<td height="25" colspan="2">
						<input name="standard.imptime" type="text" id="imptime" size="34"
							maxlength="50" onclick="WdatePicker()" class="Wdate" value="">
						<font color="red">(*)</font>
					</td>
				</tr>
				<tr class="chinese">
					<td width="100" height="25" align="right">
						状&nbsp;&nbsp;&nbsp;&nbsp;态：
					</td>
					<td height="25" colspan="2">
						<input name="standard.department" type="text" class="chinese"
							id="department" size="40" maxlength="60" value="">
						<span><font color="red">(*)</font>现行、过期</span>
					</td>
				</tr>
				<tr class="chinese">
					<td width="100" height="25" align="right">
						类&nbsp;&nbsp;&nbsp;&nbsp;别：
					</td>
					<td height="25" colspan="2">
						<input name="standard.classify" type="text" class="chinese"
							id="classify" size="40" maxlength="60" value="">
						<span><font color="red">(*)</font>法律法规、标准</span>
					</td>
				</tr>
				<tr class="chinese">
					<td width="100" height="25" align="right">
						内&nbsp;&nbsp;&nbsp;&nbsp;容：
					</td>
					<td height="25" colspan="2">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="25" colspan="3">

						<div align="left">


					<textarea cols="80" id="newscontent" name="techNews.newscontent"
								class="chinese" style="display: none"></textarea>
							<script type="text/javascript">
CKEDITOR.replace('newscontent', {
	skin : 'kama',
	language : 'zh-cn'
});</script>
						</div>

					</td>
				</tr>
				<tr>
					<td colspan=3>
						<p align="center">
							<input name="B1" type="button" class="button" value="返回"
								onClick="history.back()">

							<input name="B2" type="submit" class="button" value="添加"
								onClick="return check();">
						</p>
					</td>
				</tr>
			</table>
			<br>
			<br>
		</form>
	</body>
</html>
