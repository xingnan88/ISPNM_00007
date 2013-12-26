<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base target="_self">
		<base href="<%=basePath %>back/jxustmpp/">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>添加采矿方法</title>
		<link href="images/skin.css" rel="stylesheet" type="text/css" />
		<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
</style>
	</head>

	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top" background="images/mail_leftbg.gif">
					<img src="images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="images/content-bg.gif">
					<table width="100%" height="31" border="0" cellpadding="0"
						cellspacing="0" class="left_topbg" id="table2">
						<tr>
							<td height="31">
								&nbsp;
							</td>
						</tr>
					</table>
				</td>
				<td width="16" valign="top" background="images/mail_rightbg.gif">
					<img src="images/nav-right-bg.gif" width="16" height="29" />
				</td>
			</tr>

			<tr>
				<td valign="middle" background="images/mail_leftbg.gif">
					&nbsp;
				</td>
				<td valign="top" bgcolor="#F7F8F9">
					<table width="80%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td class="left_txt">
								当前位置：添加采矿方法 &nbsp;>>&nbsp;第一步：选择开采方式
							</td>
						</tr>

						<tr>
							<td>
								<table width="100%" height="55" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="10%" height="55" valign="middle">
											<img src="images/title.gif" width="54" height="55">
										</td>
										<td width="90%" valign="top">
											<span class="left_txt2">提示：</span>
											<span class="left_txt3">添加采矿的方法的步骤为：</span>
											<br>
											<span class="left_txt2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
											<span class="left_txt3">第一步：选择开采方式, 第二步：填写采矿信息,
												第三步：上传视频</span>
										</td>
									</tr>
								</table>
							</td>
						</tr>

						<tr>
							<td>
								<table width="100%" height="31" border="0" cellpadding="0"
									cellspacing="0" class="nowtable">
									<tr>
										<td class="left_bt2">
											&nbsp;&nbsp;&nbsp;&nbsp;选择开采方式
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="30">
								&nbsp;
							</td>
						</tr>
						<tr>
							<td align="center" >
							<table class="fsxz">
									<tr>
										<td>开采方式：
											<a href="addlutian.jsp">露天采矿</a>
											<a href="addjingxia.jsp">井下采矿</a> 
										</td>
									</tr>								
								</table>
								
							</td>
						</tr>
						<tr>
							<td height="5">
								&nbsp;
							</td>
						</tr>
						<tr>
							<td align="center">
								<table class="shuoming" >
									<tr>
										<td>说明：	</td><td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td><td>露天采矿：包含的字段为开采方式、采矿方法名称、文字说明</td>
									</tr>
									<tr>
										<td>&nbsp;</td><td>井下采矿：包含的字段为开采方式、采矿方法名称、适用范围、</td>
									</tr>
									<tr>
										<td>&nbsp;</td><td style="padding-left: 80px;">矿块参数、采切工作、回采工作</td>
									</tr>
								</table>
							</td>
						</tr>						
						<tr>
							<td height="30">
								&nbsp;
							</td>
						</tr>
					</table>

				</td>
				<td background="images/mail_rightbg.gif">
					&nbsp;
				</td>
			</tr>


<tr>
				 <td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
			    <td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
			    <td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
			</tr>
		</table>
	</body>
</html>
