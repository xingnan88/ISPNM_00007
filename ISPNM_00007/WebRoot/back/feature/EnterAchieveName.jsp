<%@ page language="java" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link href="<%=basePath%>back/feature/css/skin.css" rel="stylesheet"
			type="text/css" />
		<link href="<%=basePath%>back/feature/css/myStyle.css"
			rel="stylesheet" type="text/css" />
		<link type="text/css"
			href="<%=basePath%>jquery-ui/css/start/jquery-ui-1.8.15.custom.css"
			rel="stylesheet" />
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-1.6.2.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-ui-1.8.15.custom.min.js"></script>
	</head>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top">
					<img src="<%=basePath%>images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="<%=basePath%>images/content-bg.gif">
					<div class="titlebt">
						�����ɹ�
					</div>
				</td>
				<td width="17" valign="top">
					<img src="<%=basePath%>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent" style="width:95%">
			<form action="JudgeJumpPageAch!list.action?page=1" method="post">
				<table cellpadding="0" cellspacing="0" style="width: 100%;">
					<tr>
						<td style="padding: 7px 0 7px 10px">
							<img src="<%=basePath%>back/feature/images/edit.gif" alt="�༭"
								style="vertical-align: middle;" />
							�ɹ����ƣ�
							<input style="width: 200px;" type="text" name="achieveName" />
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="submit" class="button" value="  �� ��"
								style="background-image: url(<%=basePath%>back/feature/images/yimgbt.gif);" />
								&nbsp;
							<input type="submit" class="button" value="  �� ��"
								style="background-image: url(<%=basePath%>back/feature/images/yimgbt.gif);"
								onclick="document.forms[0].action='JudgeJumpPageAch2!list.action?page=1'" />
							<input type="hidden" name="page" value="1" />
						</td>
					</tr>
					<tr>
						<td style="padding: 7px 0 7px 10px">
							������ɹ����ƣ��������ȷ������ʹ�ò��ҳɹ����ܡ�
						</td>
					</tr>
					<tr>
						<td align="center">
							<font size="4" color="red">${requestScope.not_file}</font>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>