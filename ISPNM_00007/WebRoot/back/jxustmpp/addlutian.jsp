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
		<base href="<%=basePath %>back/jxustmpp/">
		<base target="_self">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

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
								��ǰλ�ã���Ӳɿ󷽷� &nbsp;>>&nbsp;��д�ɿ���Ϣ
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
										<td width="80%" valign="top">
											<span class="left_txt2">��ʾ��</span>
											<span class="left_txt3">��Ӳɿ�ķ����Ĳ���Ϊ��</span>
											<br>
											<span class="left_txt2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
											<span class="left_txt3">��һ����ѡ�񿪲ɷ�ʽ, �ڶ�������д�ɿ���Ϣ,
												���������ϴ���Ƶ</span>
										</td>
										<td width="10%" height="55" valign="middle">
											&nbsp;
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
											&nbsp;&nbsp;&nbsp;&nbsp;��д�ɿ���Ϣ
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<form name="form1" method="POST" action="add.action">
									<table width="80%" border="0" cellspacing="0" cellpadding="0" align="center" class="shuoming">
										<tr>
											<td width="20%" height="30" align="right" bgcolor="#f2f2f2"
												class="left_txt2">
												���ɷ�ʽ��
											</td>
											<td width="3%" bgcolor="#f2f2f2">
												&nbsp;
											</td>
											<td width="32%" height="30" bgcolor="#f2f2f2">
												<input type="text" name="mpp.kcfs" size="30" value="¶��ɿ�" />
											</td>
											
										</tr>
										<tr>
											<td height="30" align="right" class="left_txt2">
												�������ƣ�
											</td>
											<td>
												&nbsp;
											</td>
											<td height="30">
												<input type="text" name="mpp.ffname" size="30" />
											</td>
											
										</tr>

										<tr bgcolor="#f2f2f2">
											<td height="30" align="right" class="left_txt2">
												����˵����
											</td>
											<td>
												&nbsp;
											</td>
											<td height="30">
												<textarea cols="50" rows="6" name="mpp.wzsm"></textarea>											
											</td>
											
										</tr>
										<tr>
											<td height="17" colspan="4" align="right">
												&nbsp;
											</td>
										</tr>
										<tr>
											<td colspan="4" class="left_txt2" align="center">
												<input type="submit" value="��һ��" name="B1" class="button_css" onmouseover="this.className='myhand'"/>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="button" value="��һ��" name="B12" onclick="javascript:history.go(-1);return false;" class="button_css" onmouseover="this.className='myhand'"/>
											</td>
										</tr>
									</table>
								</form>
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
