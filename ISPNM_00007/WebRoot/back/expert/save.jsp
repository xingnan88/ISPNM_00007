<%@ page language="java" import="java.util.*" pageEncoding="gb18030"%>
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
		<title>My JSP 'save.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		</script>
		<script type="text/javascript" src="<%=basePath%>/tools/ckeditor/ckeditor.js">
</script>
	<script type="text/javascript">
	function validation()
	{
		var form=document.form1;
		if(form.name.value=="")
		{
			alert("������ר����");
			
			form.name.focus();
			return false;
		}
	}	
	
	</script>
	
	</head>
	<body>
		<div align="center" >
			<form action="<%=basePath%>back/expert/expert_add.action" method="post" enctype ="multipart/form-data" 
				 name="form1" id="form1">
				<table width="100%" style="font-size: 14px" >
					<tr s  >
						<td width="15%" height="29">
							&nbsp;
						</td>
						<td colspan="2" align="center" valign="middle">
							���ר��
						</td>
					</tr>
					<tr >
						<td height="26" align="center" valign="middle">
							������
						</td>
						<td colspan="2">
							<input type="text" name="name" id="name" />
						</td>
					</tr>
					<tr>
						<td height="24" align="center" valign="middle">
							רҵ����
						</td>
						<td colspan="4">
							<textarea id="majorFields" name="majorFields" rows="4" cols="4" style="width: 50%"></textarea>
							
					</tr>
					<tr >
						<td height="24" align="center" valign="middle">
							�о�����
						</td>
						<td colspan="2">
							<select name="researchFields" id="researchFields">

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
								<option value="���Ϲ���">
									���Ϲ���
								</option>
								<option value="��ҵ�豸����">
									��ҵ�豸����
								</option>
							</select>
						</td>
					</tr>
					<tr >
						<td height="24" align="center">
							�о��ɹ���
						</td>
						<td colspan="2">
							<textarea style="width: 300px; height: 100px" rows="3" cols="3"
								name="researchCon" id="researchCon"></textarea>
									<script type="text/javascript">
CKEDITOR.replace('researchCon', {
	skin : 'kama',
	language : 'zh-cn'
});</script>
						</td>
					</tr>
					<tr >
						<td height="24" align="center">
							��λ��
						</td>
						<td colspan="2">
							<input type="text" name="workplace" id="workplace" />
						</td>
					</tr>
					<tr >
						<td height="24" align="center">
							ְ��
						</td>
						<td colspan="2">
							<input type="text" name="workposition" id="workposition" />
						</td>
					</tr>
					<tr  >
						<td height="24" align="center">
							<font color="#ff0000"><input type="submit" name="button" id="button" value="���" onclick="return validation()"></font>
						</td>
						<td width="16%" align="center">
							<input type="reset" name="button2" id="button2" value="����" />
						</td>
						<td width="66%">
							&nbsp;
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
