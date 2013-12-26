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
							����ר��
						</td>
					</tr>
					<tr>
						<td height="26" align="center" valign="middle">
							������
						</td>
						<td colspan="2">
							<input type="text" name="name" id="name"
								value="<s:property value="expert.name"/>" />
						</td>
					</tr>
					<tr>
						<td height="24" align="center" valign="middle">
							ר������
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
							�о�����
						</td>
						<td colspan="2">
							<select name="researchFields" id="researchFields">
								<%
									String researchFields = (String) request
											.getAttribute("researchFields");
									int a = 0;
									if (researchFields.equals("�ɿ󹤳�")) {
										a = 1;
									}
									if (researchFields.equals("��ȫ�뻷������")) {
										a = 2;
									}
									if (researchFields.equals("����ӹ�����")) {
										a = 3;
									}
									if (researchFields.equals("ұ�𹤳�")) {
										a = 4;
									}
									if (researchFields.equals("���Ϲ���")) {
										a = 5;
									}
									if (researchFields.equals("��ҵ�豸����")) {
										a = 6;
									}
								%>
								<option value='�ɿ󹤳�' <%=a == 1 ? "selected='selected'" : ""%>>
									�ɿ󹤳�
								</option>
								<option value='��ȫ�뻷������' <%=a == 2 ? "selected='selected'" : ""%>>
									��ȫ�뻷������
								</option>
								<option value='����ӹ�����' <%=a == 3 ? "selected='selected'" : ""%>>
									����ӹ�����
								</option>
								<option value='ұ�𹤳�' <%=a == 4 ? "selected='selected'" : ""%>>
									ұ�𹤳�
								</option>
								<option value='���Ϲ���' <%=a == 5 ? "selected='selected'" : ""%>>
									���Ϲ���
								</option>
								<option value='��ҵ�豸����' <%=a == 6 ? "selected='selected'" : ""%>>
									��ҵ�豸����
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td height="24" align="center">
							�о��ɹ���
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
							��λ��
						</td>
						<td colspan="2">
							<input type="text" name="workplace" id="workplace"
								value="<s:property value="expert.workplace" />" />
						</td>
					</tr>
					<tr>
						<td height="24" align="center">
							ְ��
						</td>
						<td colspan="2">
							<input type="text" name="workposition" id="workposition"
								value="<s:property value="expert.workposition"/>" />
						</td>
					</tr>
					<tr>
						<td height="24" align="center">
							<input type="submit" name="button" id="button" value="�ύ" />
						</td>
						<td width="16%" align="center">
							<input type="reset" name="button2" id="button2" value="����" />
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
