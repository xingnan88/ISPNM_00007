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
				<td valign="middle" background="images/mail_leftbg.gif">&nbsp;
					
				</td>
				<td valign="top" bgcolor="#F7F8F9">
					<table width="80%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td class="left_txt">
								当前位置：开采方法列表 &nbsp;>>&nbsp;<s:property value="mpp.ffname" />信息
							</td>
						</tr>						

						<tr>
							<td>
								<table width="100%" height="31" border="0" cellpadding="0"
									cellspacing="0" class="nowtable">
									<tr>
										<td class="left_bt2">
											&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="mpp.ffname" />采矿信息
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								
									<table width="80%" border="0" cellspacing="0" cellpadding="0" align="center" class="shuoming">
										
										<tr>
											<td width="20%" height="30" align="right" bgcolor="#f2f2f2"
												class="left_txt2">
												开采方式：
											</td>
											
											<td width="32%" height="30" bgcolor="#f2f2f2">
												<s:property value="mpp.kcfs" />
											</td>
											
										</tr>
										<tr>
											<td height="30" align="right" class="left_txt2">
												方法名称：
											</td>
											
											<td height="30">
												<s:property value="mpp.ffname" />
											</td>
											
										</tr>
										<tr>
											<td height="30" align="right" class="left_txt2">
												点击播放次数：
											</td>
											
											<td height="30">
												<s:property value="mpp.counts" />
											</td>
											
										</tr>
										<tr>
				                    	<td  align="right" valign="top" class="left_txt2">采矿 截图</td>
				                        <td >
				                        	<img src="<%=basePath %><s:property value="mpp.tplj" />" alt="<s:property value="mpp.ffname" />" title="<s:property value="mpp.ffname" />" class="post-thumbnail" />                           
				                        </td>
					                    </tr>
					                    <tr>
					                    	<td align="right" class="left_txt2">采矿视频</td>
					                        <td height="30"><a href="mppplay.action?mpp.id=<s:property value="mpp.id" />">观看视频</a></td>
					                    </tr>
										<s:if test="mpp.kcfs == '露天采矿'">
										<tr bgcolor="#f2f2f2">
											<td height="30" align="right" class="left_txt2">
												文字说明：
											</td>
											
											<td height="30">
												<textarea cols="50" rows="6" name="mpp.wzsm" readonly><s:property value="mpp.wzsm" /></textarea>											
											</td>
											
										</tr>
										</s:if>
										<s:else>
                                        <tr>
											<td height="30" align="right" bgcolor="#f2f2f2"
												class="left_txt2">
												适用范围：
											</td>
											
											<td height="30" bgcolor="#f2f2f2">
												<textarea cols="50" rows="2" name="mpp.syfw" readonly><s:property value="mpp.syfw" /></textarea>
											</td>
											
										</tr>
										<tr>
											<td height="30" align="right" class="left_txt2">
												矿块参数：
											</td>
											
											<td height="30">
												<textarea cols="50" rows="2" name="mpp.kkcs" readonly><s:property value="mpp.kkcs" /></textarea>
											</td>
											
										</tr>
										<tr>
											<td height="30" align="right" bgcolor="#f2f2f2"
												class="left_txt2">
												采切工作：
											</td>
											
											<td height="30" bgcolor="#f2f2f2">
												<textarea cols="50" rows="2" name="mpp.cqgz" readonly><s:property value="mpp.cqgz" /></textarea>
											</td>
											
										</tr>
										<tr>
											<td height="30" align="right" bgcolor="#F7F8F9"
												class="left_txt2">
												回采工作：
											</td>
											
											<td height="30" bgcolor="#F7F8F9">
												<textarea cols="50" rows="2" name="mpp.hcgz" readonly><s:property value="mpp.hcgz" /></textarea>
											</td>
											
										</tr>
										</s:else>		
										<tr>
											<td height="17" colspan="4" align="right">&nbsp;
												
											</td>
										</tr>
										<tr>
											<td colspan="4" class="left_txt2" align="center">
												<input type="button" value="修改信息" name="B1" onClick="llocation.href='mppupdate.action?mpp.id=<s:property value="id"/>';" class="button_css" onMouseOver="this.className='myhand'"/>&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="button" value="删除" name="B12" onClick="return del();llocation.href='mpp_delete.action?mpp.id=<s:property value="id"/>';" class="button_css" onMouseOver="this.className='myhand'"/>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="button" value="返回" name="B12" onClick="javascript:history.go(-1);return false;" class="button_css" onMouseOver="this.className='myhand'"/>
											</td>
										</tr>
									</table>
								
							</td>
						</tr>
					</table>

				</td>
				<td background="images/mail_rightbg.gif">&nbsp;
					
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
