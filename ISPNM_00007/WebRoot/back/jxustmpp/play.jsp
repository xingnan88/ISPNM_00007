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
		<title>观看视频</title>
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
								当前位置：矿冶生产流程库 &nbsp;>>&nbsp;观看<s:property value="mpp.ffname" />视频
							</td>
						</tr>
						<tr>
							<td>
								<table width="100%" height="31" border="0" cellpadding="0"
									cellspacing="0" class="nowtable">
									<tr>
										<td class="left_bt2">
											&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="mpp.ffname" />视频
										</td>
										<td class="left_bt2" align="right">
											<a href="javascript:;" onClick="javascript:history.go(-1);" >返回上一步</a>&nbsp;&nbsp;&nbsp;&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>						
						<tr>
							<td align="center" >
							<table class="fsxz">
									<tr>
										<td align="center">
										<OBJECT id=MediaPlayer1 style="WIDTH: 735px; HEIGHT: 400px" codeBase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701standby=Loading type=application/x-oleobject height=246 width=241 classid=CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6 VIEWASTEXT="">
											<PARAM NAME="URL" VALUE="<%=basePath %><s:property value="mpp.dhlj"/>">
											<PARAM NAME="rate" VALUE="1">
											<PARAM NAME="balance" VALUE="0">
											<PARAM NAME="currentPosition" VALUE="0">
											<PARAM NAME="defaultFrame" VALUE="">
											<PARAM NAME="playCount" VALUE="1">
											<PARAM NAME="autoStart" VALUE="-1">
											<PARAM NAME="currentMarker" VALUE="0">
											<PARAM NAME="invokeURLs" VALUE="-1">
											<PARAM NAME="baseURL" VALUE="">
											<PARAM NAME="volume" VALUE="70">
											<PARAM NAME="mute" VALUE="0">
											<PARAM NAME="uiMode" VALUE="full">
											<PARAM NAME="stretchToFit" VALUE="0">
											<PARAM NAME="windowlessVideo" VALUE="0">
											<PARAM NAME="enabled" VALUE="-1">
											<PARAM NAME="enableContextMenu" VALUE="-1">
											<PARAM NAME="fullScreen" VALUE="0">
											<PARAM NAME="SAMIStyle" VALUE="">
											<PARAM NAME="SAMILang" VALUE="">
											<PARAM NAME="SAMIFilename" VALUE="">
											<PARAM NAME="captioningID" VALUE="">
											<PARAM NAME="enableErrorDialogs" VALUE="0">
											<PARAM NAME="_cx" VALUE="6376">
											<PARAM NAME="_cy" VALUE="6509">
										</OBJECT>
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
