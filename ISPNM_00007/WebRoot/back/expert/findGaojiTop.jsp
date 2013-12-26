<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
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
		<title>My JSP 'findGaijitop.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	</head>
	<body>
	<fieldset>
	<legend>
		高级查找
	</legend>

	</form>
</fieldset>
		<form action="<%=basePath%>back/expert/expert_findGaoji.action?page=1" method="post" name="form" id="form" target="findGaojiResult">
			<table width="100%" border="0" align="center" style="font-size: 14px">
			
			<tr><td colspan="15" align="center"></td></tr>
				<tr>
					<td width="10%" align="center">
						研究领域:
					</td>
					
					<td >
						<select name="researchFields" id="researchFields">
							<option value="研究领域">
								研究领域
							</option>
							<option value="采矿工程">
								采矿工程
							</option>
							<option value="安全与环境工程">
								安全与环境工程
							</option>
							<option value="矿物加工工程">
								矿物加工工程
							</option>
							<option value="冶金工程">
								冶金工程
							</option>
							<option value=" 材料工程">
								材料工程
							</option>
							<option value="矿冶设备工程">
								矿冶设备工程
							</option>
						</select>
					</td>
					</tr>
					<tr>
					<td width="30%" align="center">
						<lable>专 家  名:</lable>
					</td>
					<td >
						<input type="text" name="name"  id="name">
					</td>
					</tr>
					<tr>
					<td width="30%" align="center">
						<lable>专业领域：</lable>
					</td>
					<td width="28%">
						<input type="text" name="majorFields" id="majorFields">
					</td>
				</tr>
				<tr>
					<td  width="30%" align="right">
						<label>单位：</label>
					</td>
					<td>
						<input type="text" name="workplace" id="workplace">
					</td>
					</tr>
					<tr>
					<td width="30%" align="right">
						<label>研究成果：</label>
					</td>
					<td >
						<input type="text" name="researchCon" id="researchCon">
					</td>
					</tr>
					<tr>
					<td width="30%" align="right">
						<label>职务：</label>
					</td>
					<td>
						<input type="text" name="workposition" id="workposition">
					</td>
				</tr>
				
					
					<tr  align="center">
					
					<td width="40%" align="right">
						<input type="submit" name="Submit" value="搜索">
					</td>
					
					<td width="30%" align="right">
						<input type="reset" name="Submit2" value="重置">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
