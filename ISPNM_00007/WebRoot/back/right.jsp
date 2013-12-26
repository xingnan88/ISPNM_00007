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
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title></title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
								<div class="menu">
									<a href="right.jsp">穿孔爆破</a>
									<a href="#">采装</a>
									<a href="#">运输</a>
									<a href="#">排土</a>
								</div>
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
								当前位置：基本设置
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
											<span class="left_txt2">在这里，您可以根据您的网站要求，修改设置网站的</span><span
												class="left_txt3">基本参数</span><span class="left_txt2">！</span>
											<br>
											请选择要上传的视频：<input type="file" name="file" /><input type="submit" value="上传视频" />
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
											&nbsp;&nbsp;&nbsp;&nbsp;系统参数设置
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<form name="form1" method="POST" action="admintitlechk.asp">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
									
										<tr>
											<td width="20%" height="25" align="right" bgcolor="#f2f2f2"
												class="left_txt2">
												开采方式：
											</td>
											<td width="3%" bgcolor="#f2f2f2">
												&nbsp;
											</td>
											<td width="32%" height="25" bgcolor="#f2f2f2">
												<select>
													<option>
														露天采矿
													</option>
													<option>
														井下采矿之空场采矿
													</option>
													<option>
														井下采矿之崩落采矿
													</option>
													<option>
														井下采矿之充填采矿
													</option>
												</select>
											</td>
											<td width="45%" height="25" bgcolor="#f2f2f2"
												class="left_txt">
												此采矿所属的开采方式
											</td>
										</tr>
										<tr>
											<td height="25" align="right" class="left_txt2">
												方法名称：
											</td>
											<td>
												&nbsp;
											</td>
											<td height="25">
												<input type="text" name="web" size="50" />
											</td>
											<td height="25" class="left_txt">
												采矿的方法名称
											</td>
										</tr>
										<tr>
											<td height="25" align="right" bgcolor="#F2F2F2"
												class="left_txt2">
												动画路径：
											</td>
											<td bgcolor="#F2F2F2">
												&nbsp;
											</td>
											<td height="25" bgcolor="#F2F2F2">
												<input name="mymail" type="text" id="mymail" size="50" />
											</td>
											<td height="25" bgcolor="#F2F2F2">
												<span class="left_txt">上传采矿视频的路径</span>
											</td>
										</tr>
										<tr>
											<td height="25" align="right"
												class="left_txt2">
												图片路径：
											</td>
											<td >
												&nbsp;
											</td>
											<td height="25">
												<input name="tongj" type="text" id="tongj" size="50" />
											</td>
											<td height="25" class="left_txt">
												上传采矿视频截图的路径
											</td>
										</tr>
										<tr>
											<td height="30" align="right" bgcolor="#f2f2f2"
												class="left_txt2">
												适用范围：
											</td>
											<td bgcolor="#f2f2f2">
												&nbsp;
											</td>
											<td height="30" bgcolor="#f2f2f2">
												<textarea cols="50" rows="2"></textarea>
											</td>
											<td height="30" bgcolor="#f2f2f2" class="left_txt">
												<em style="font-style: normal;color: #f00;">井下采矿类开采方式请填写,</em>露天采矿不必填写
											</td>
										</tr>
										<tr>
											<td height="30" align="right" class="left_txt2">
												矿块参数：
											</td>
											<td>
												&nbsp;
											</td>
											<td height="30">
												<textarea cols="50" rows="2"></textarea>
											</td>
											<td height="30" class="left_txt">
												<em style="font-style: normal;color: #f00;">井下采矿类开采方式请填写,</em>露天采矿不必填写
											</td>
										</tr>
										<tr>
											<td height="30" align="right" bgcolor="#f2f2f2"
												class="left_txt2">
												采切工作：
											</td>
											<td bgcolor="#f2f2f2">
												&nbsp;
											</td>
											<td height="30" bgcolor="#f2f2f2">
												<textarea cols="50" rows="2"></textarea>
											</td>
											<td height="30" bgcolor="#f2f2f2" class="left_txt">
												<em style="font-style: normal;color: #f00;">井下采矿类开采方式请填写,</em>露天采矿不必填写
											</td>
										</tr>
										<tr>
											<td height="35" align="right" bgcolor="#F7F8F9"
												class="left_txt2">
												回采工作：
											</td>
											<td bgcolor="#F7F8F9">
												&nbsp;
											</td>
											<td height="30" bgcolor="#F7F8F9">
												<textarea cols="50" rows="2"></textarea>
											</td>
											<td height="30" bgcolor="#F7F8F9" class="left_txt">
												<em style="font-style: normal;color: #f00;">井下采矿类开采方式请填写,</em>露天采矿不必填写
											</td>
										</tr>										
										<tr>
											<td height="30" align="right" class="left_txt2"  bgcolor="#F2F2F2">
												文字说明：
											</td>
											<td  bgcolor="#F2F2F2">
												&nbsp;
											</td>
											<td height="30"  bgcolor="#F2F2F2">
												<textarea cols="50" rows="6"></textarea>												
											</td>
											<td height="30" class="left_txt"  bgcolor="#F2F2F2">
												<em style="font-style: normal;color: #f00;">露天采矿开采方式请填写,</em>井下采矿类开采方式不必填写
											</td>
										</tr>
										<tr>
											<td height="17" colspan="4" align="right">
												&nbsp;
											</td>
										</tr>
										<tr>
											<td colspan="4" class="left_txt2" align="center">
												<input type="submit" value="添加采矿方法" name="B1" />
												&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="reset" value="重置 " name="B12" />
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
				<td valign="bottom" background="images/mail_leftbg.gif">
					<img src="images/buttom_left2.gif" width="17" height="17" />
				</td>
				<td background="images/buttom_bgs.gif">
					<img src="images/buttom_bgs.gif" width="17" height="17">
				</td>
				<td valign="bottom" background="images/mail_rightbg.gif">
					<img src="images/buttom_right2.gif" width="16" height="17" />
				</td>
			</tr>
		</table>
	</body>
</html>
