<%@ page language="java" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link href="<%=basePath%>back/company/css/skin.css" rel="stylesheet"
			type="text/css" />
		<link href="<%=basePath%>back/company/css/myStyle.css"
			rel="stylesheet" type="text/css" />
		<link type="text/css"
			href="<%=basePath%>jquery-ui/css/start/jquery-ui-1.8.15.custom.css"
			rel="stylesheet" />
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-1.6.2.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-ui-1.8.15.custom.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<script type="text/javascript">
			function delete_confirm() {
				//��ɾ������ʱ������ȷ�϶Ի���
   				if(confirm("ȷ��Ҫɾ����")){
  				return true;
			}else return false;	
			}
		</script>
	</head>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top">
					<img src="<%=basePath %>images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="<%=basePath %>images/content-bg.gif">
					<div class="titlebt">
						��ҵ����
					</div>
				</td>
				<td width="17" valign="top">
					<img src="<%=basePath %>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent" style="width:95%">
			<div id="title"
				style="width:100%;padding: 7px; text-align: center; border: 1px solid rgb(10, 100, 130);">
				<img src="<%=basePath %>images/st.png" style="vertical-align: top;" />
			</div>
			<div style="margin: 0px; width: 100%">
				<a href="DeleteCompany.action?id=<s:property value="company.id" />&page=1" onclick="return delete_confirm()" class="opera">ɾ����Ϣ</a>
				<a href="UpdateCompany!searchone.action?id=<s:property value="company.id" />&ran=1"
					class="opera">�޸���Ϣ</a>
				<a href="<%=basePath %>back/company/AddCompany.jsp?ran=1" class="opera">�����Ϣ</a>
			</div>
			<div>
				<table style="width: 100%;" id="baseInfo" cellpadding="0"
					cellspacing="0">
					<tr>
						<td style="width: 25%"></td>
						<td style="width: 75%"></td>
					</tr>
					<tr>
						<td align="right">
							��ҵ���ƣ�
						</td>
						<td>
							<s:property value="company.name" />
						</td>
					</tr>
					<tr>
						<td align="right">
							������
						</td>
						<td>
							<s:property value="company.address" />
						</td>
					</tr>
					<tr>
						<td align="right">
							��ϵ��ʽ��
						</td>
						<td>
							<s:property value="company.contact" />
						</td>
					</tr>
					<tr>
						<td align="right">
							��ҵ���䣺
						</td>
						<td>
							<s:property value="company.email" />
						</td>
					</tr>
					<tr>
						<td align="right">
							��ҵ���ͣ�
						</td>
						<td>
							<s:property value="company.type" />
						</td>
					</tr>
					<tr>
						<td align="right">
							��Ӫ��Χ����Ӫ��Ʒ��
						</td>
						<td>
							<s:property value="company.range" />
						</td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>