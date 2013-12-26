<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
		<base href="<%=basePath%>">
		<title>My JSP 'update.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		</script>
		<script type="text/javascript" src="<%=basePath%>/tools/ckeditor/ckeditor.js">
</script>

	</head>
	<body bgcolor="#ffffc0" style="font-size: 13px">
		<form
			action="<%=basePath%>back/expert/expert_update.action?id=<s:property value="expert.id"/>"
			method="post">
			<div align="center">
				<table width="100%" border="0">
					<tr>
						<td width="18%" height="29">
							&quot;&nbsp;
						</td>
						<td colspan="2" align="center" valign="middle">
							更新专家
						</td>
					</tr>
					<tr>
						<td height="26" align="center" valign="middle">
							姓名：
						</td>
						<td colspan="2">
							<input type="text" name="name" id="name"
								value="<s:property value="expert.name"/>" />
						</td>
					</tr>
					<tr>
						<td height="24" align="center" valign="middle">
							专家领域：
						</td>
						<td colspan="4">
							<textarea name="majorFields" id="majorFields" cols="4" rows="4"
								style="width: 50%">
								<s:property value="expert.majorFields" />
								<s:property value="expert.majorFields" />
							</textarea>
						</td>
					</tr>
					<tr>
						<td height="24" align="center" valign="middle">
							研究领域：
						</td>
						<td colspan="2">
							<select name="researchFields" id="researchFields">
								<%
									String researchFields = (String) request
											.getAttribute("researchFields");
									int a = 0;
									if (researchFields.equals("采矿工程")) {
										a = 1;
									}
									if (researchFields.equals("安全与环境工程")) {
										a = 2;
									}
									if (researchFields.equals("矿物加工工程")) {
										a = 3;
									}
									if (researchFields.equals("冶金工程")) {
										a = 4;
									}
									if (researchFields.equals("材料工程")) {
										a = 5;
									}
									if (researchFields.equals("矿业设备工程")) {
										a = 6;
									}
								%>
								<option value='采矿工程' <%=a == 1 ? "selected='selected'" : ""%>>
									采矿工程
								</option>
								<option value='安全与环境工程' <%=a == 2 ? "selected='selected'" : ""%>>
									安全与环境工程
								</option>
								<option value='矿物加工工程' <%=a == 3 ? "selected='selected'" : ""%>>
									矿物加工工程
								</option>
								<option value='冶金工程' <%=a == 4 ? "selected='selected'" : ""%>>
									冶金工程
								</option>
								<option value='材料工程' <%=a == 5 ? "selected='selected'" : ""%>>
									材料工程
								</option>
								<option value='矿业设备工程' <%=a == 6 ? "selected='selected'" : ""%>>
									矿业设备工程
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td height="24" align="center">
							研究成果：
						</td>
						<td colspan="4">
							<textarea rows="4" cols="4" name="researchCon" id="researchCon">${expert.researchCon}</textarea>
							<script type="text/javascript">
CKEDITOR.replace('researchCon', {
	skin : 'kama',
	language : 'zh-cn'
});</script>
						</td>
					</tr>
					<tr>
						<td height="24" align="center">
							单位：
						</td>
						<td colspan="2">
							<input type="text" name="workplace" id="workplace"
								value="<s:property value="expert.workplace" />" />
						</td>
					</tr>
					<tr>
						<td height="24" align="center">
							职务：
						</td>
						<td colspan="2">
							<input type="text" name="workposition" id="workposition"
								value="<s:property value="expert.workposition"/>" />
						</td>
					</tr>
					<tr>
						<td height="24" align="center">
							<input type="submit" name="button" id="button" value="提交" />
						</td>
						<td width="16%" align="center">
							<input type="reset" name="button2" id="button2" value="重置" />
						</td>
						<td width="66%">
							&nbsp;
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html>
