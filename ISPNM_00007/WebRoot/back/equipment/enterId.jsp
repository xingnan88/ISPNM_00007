<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link href="<%=basePath%>images/skin.css"
			rel="stylesheet" type="text/css" />
		<link href="myStyle.css"
			rel="stylesheet" type="text/css" />
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<style type="text/css" >
		
		</style>
		<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-1.5.1.min.js" ></script>
		<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-ui-1.8.14.custom.min.js" ></script>
		<script type="text/javascript">

</script>
	</head>
	<body >
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top" >
					<img src="<%=basePath%>images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="<%=basePath%>images/content-bg.gif">
					<div class="titlebt" style="width:95%">
						�����豸
					</div>
				</td>
				<td width="17" valign="top" >
					<img src="<%=basePath%>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent"  style="width:95%">
		<form action="<%=basePath %>back/equipment/intro" method="post">
			<table cellpadding="0" cellspacing="0" >
				<tr><td style="padding: 7px 0 7px 10px"><img src="../../images/edit.gif" alt="�༭" style="vertical-align: middle;" />�豸id��
						<input style="width: 150px;" type="text" name="equipment.id"/>&nbsp;
						<input  type="submit" class="button" value="  �� ��" style="background-image: url(../../images/yimgbt.gif);" />
						<input  type="submit" class="button" value="  �� ��" style="background-image: url(../../images/yimgbt.gif);" onclick="document.forms[0].action='<%=basePath %>back/equipment/modify'"/>
					</td>
				</tr>
				<tr><td style="padding: 7px 0 7px 10px">�������豸�ľ�ȷID�ţ��������ȷ������ʹ�ò����豸���ܡ�</td></tr>
			</table>
		</form>
		</div>
	</body>
</html>