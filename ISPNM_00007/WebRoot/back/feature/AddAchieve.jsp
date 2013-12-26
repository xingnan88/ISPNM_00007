<%@ page language="java" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<img src="<%=basePath %>images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="<%=basePath %>images/content-bg.gif">
					<div class="titlebt">
						��ӳɹ�
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
				<img src="<%=basePath %>images/icon2_004.png" style="vertical-align: top;" />
				��ӳɹ���Ϣ
			</div>
			<table style="width: 100%;" id="baseInfo" cellpadding="0"
					cellspacing="0">
				<tr>
					<td>
						<div style="font-size: 18px">
							����ѡ��Ҫ��ӳɹ������:
						</div>
						
					</td>
				</tr>
				<tr>
					<td>
						<div style="font-size: 20px" align="center">
							<a style="cursor: hand" href="AddAward.jsp?achieveTy=001">�� </a>
							<a style="cursor: hand" href="AddResearch.jsp?achieveTy=002">������Ŀ </a>
							<a style="cursor: hand" href="AddPaper.jsp?achieveTy=003">���� </a>
							<a style="cursor: hand" href="AddPatent.jsp?achieveTy=004">ר�� </a>
							<a style="cursor: hand" href="AddMaterial.jsp?achieveTy=005">ר���̲� </a>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>