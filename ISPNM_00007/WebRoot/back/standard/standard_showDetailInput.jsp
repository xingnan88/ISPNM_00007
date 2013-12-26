<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>standard_showDetailInput.jsp</title>
		<style type="text/css">
body,table {
	font-size: 14px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
</style>
	</head>
	<body>

		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top" background="../back/images/mail_leftbg.gif">
					<img src="../back/images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="../back/images/content-bg.gif">
					<table width="100%" height="31" border="0" cellpadding="0"
						cellspacing="0" class="left_topbg" id="table2">
						<tr>
							<td height="31">
								<div class="titlebt">
									法律法规标准详情
								</div>
							</td>
						</tr>
					</table>
				</td>
				<td width="16" valign="top" background="../back/images/mail_rightbg.gif">
					<img src="../back/images/nav-right-bg.gif" width="16" height="29" />
				</td>
			</tr>
			<tr>
				<td valign="middle" background="../back/images/mail_leftbg.gif">
					&nbsp;
				</td>
				<td valign="top" bgcolor="#F7F8F9">
					<p>
					
						<form action="standard/standardAction!showDetail" method="post">
							<input type="hidden" name="standard.id" value="${standard.id}">
							<br />
							文&nbsp;&nbsp;&nbsp;&nbsp;号：${standard.number}
							<br />
							名&nbsp;&nbsp;&nbsp;&nbsp;称：${standard.title}
							<br />
							类&nbsp;&nbsp;&nbsp;&nbsp;别：${standard.classify}
							<br />
							发布单位：${standard.fbdep}
							<br />
							发布时间：${standard.createtime}
							<br />
							实施时间：${standard.imptime}
						    <br />
							状&nbsp;&nbsp;&nbsp;&nbsp;态：${standard.department}
							<br />
							内&nbsp;&nbsp;&nbsp;&nbsp;容：
							<br />
							${standard.content}
							<br>
					<!-- 	
					        <input btnClose" type="button" class="button1" id="btnClose" value="关闭" onClick=window.close(); 
							<input name="B1" type="button" class="button2" value="返回" onClick="location.href='standard/standardAction!list'"> 
					-->
				         	<input name="B1" type="button" class="button2" value="返回" 	onClick="history.back()">
						</form>


					</p>
				</td>
				<td background="back/images/mail_rightbg.gif">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td valign="bottom" background="../back/images/mail_leftbg.gif">
					<img src="../back/images/buttom_left2.gif" width="17" height="17" />
				</td>
				<td background="../back/images/buttom_bgs.gif">
					<img src="../back/images/buttom_bgs.gif" width="17" height="17">
				</td>
				<td valign="bottom" background="../back/images/mail_rightbg.gif">
					<img src="../back/images/buttom_right2.gif" width="16" height="17" />
				</td>
			</tr>
		</table>

	</body>
</html>
