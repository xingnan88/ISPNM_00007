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
		�߼�����
	</legend>

	</form>
</fieldset>
		<form action="<%=basePath%>back/expert/expert_findGaoji.action?page=1" method="post" name="form" id="form" target="findGaojiResult">
			<table width="100%" border="0" align="center" style="font-size: 14px">
			
			<tr><td colspan="15" align="center"></td></tr>
				<tr>
					<td width="10%" align="center">
						�о�����:
					</td>
					
					<td >
						<select name="researchFields" id="researchFields">
							<option value="�о�����">
								�о�����
							</option>
							<option value="�ɿ󹤳�">
								�ɿ󹤳�
							</option>
							<option value="��ȫ�뻷������">
								��ȫ�뻷������
							</option>
							<option value="����ӹ�����">
								����ӹ�����
							</option>
							<option value="ұ�𹤳�">
								ұ�𹤳�
							</option>
							<option value=" ���Ϲ���">
								���Ϲ���
							</option>
							<option value="��ұ�豸����">
								��ұ�豸����
							</option>
						</select>
					</td>
					</tr>
					<tr>
					<td width="30%" align="center">
						<lable>ר ��  ��:</lable>
					</td>
					<td >
						<input type="text" name="name"  id="name">
					</td>
					</tr>
					<tr>
					<td width="30%" align="center">
						<lable>רҵ����</lable>
					</td>
					<td width="28%">
						<input type="text" name="majorFields" id="majorFields">
					</td>
				</tr>
				<tr>
					<td  width="30%" align="right">
						<label>��λ��</label>
					</td>
					<td>
						<input type="text" name="workplace" id="workplace">
					</td>
					</tr>
					<tr>
					<td width="30%" align="right">
						<label>�о��ɹ���</label>
					</td>
					<td >
						<input type="text" name="researchCon" id="researchCon">
					</td>
					</tr>
					<tr>
					<td width="30%" align="right">
						<label>ְ��</label>
					</td>
					<td>
						<input type="text" name="workposition" id="workposition">
					</td>
				</tr>
				
					
					<tr  align="center">
					
					<td width="40%" align="right">
						<input type="submit" name="Submit" value="����">
					</td>
					
					<td width="30%" align="right">
						<input type="reset" name="Submit2" value="����">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
