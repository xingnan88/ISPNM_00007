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
								��ǰλ�ã���ұ�������̿�&nbsp;>>&nbsp;<a href="listmpp.action" >���ɷ����б�</a> &nbsp;>>&nbsp;�޸�<s:property value="mpp.ffname" />��Ϣ
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
										<td width="80%" valign="top" class="shuoming">
											<span class="left_txt2">��ʾ��</span>
											<span class="left_txt3">��ҳ��Ϊ��Ϣ�޸�ҳ��</span>
											<br>
											<span class="left_txt2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
											<span class="left_txt3">�ڴ�ҳ�棬����Զ�ԭ����Ϣ�����޸ģ��޸���ɺ������ѡ����ɣ��������Ϣ���޸ģ���ѡ����һ�����������޸�����Ƶ��Ϣ��!</span>
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
											&nbsp;&nbsp;&nbsp;&nbsp;�޸�<s:property value="mpp.ffname" />�ɿ���Ϣ
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
									<form action="mpp_update.action" method="post" name="form1">
									<input type="hidden" name="mpp.id" value="${mpp.id }">
									<input type="hidden" name="mpp.tplj" value="${mpp.tplj }">
									<input type="hidden" name="mpp.dhlj" value="${mpp.dhlj }">
									<table width="80%" border="0" cellspacing="0" cellpadding="0" align="center" class="shuoming">
										
										<tr>
											<td width="20%" height="30" align="right" bgcolor="#f2f2f2"
												class="left_txt2">
												���ɷ�ʽ��
											</td>
											
											<td width="32%" height="30" bgcolor="#f2f2f2">
												<select name="mpp.kcfs">
													<option value="${mpp.kcfs }" selected="selected"><s:property value="mpp.kcfs" /></option>
													<s:if test="mpp.kcfs == '¶��ɿ�'">
														<option value="����֮�ճ��ɿ�">����֮�ճ��ɿ�</option>
														<option value="����֮����ɿ�">����֮����ɿ�</option>
														<option value="����֮����ɿ�">����֮����ɿ�</option>
													</s:if>
													<s:if test="mpp.kcfs == '����֮�ճ��ɿ�'">
														<option value="¶��ɿ�">¶��ɿ�</option>
														<option value="����֮����ɿ�">����֮����ɿ�</option>
														<option value="����֮����ɿ�">����֮����ɿ�</option>
													</s:if>
													<s:if test="mpp.kcfs == '����֮����ɿ�'">
														<option value="¶��ɿ�">¶��ɿ�</option>
														<option value="����֮�ճ��ɿ�">����֮�ճ��ɿ�</option>
														<option value="����֮����ɿ�">����֮����ɿ�</option>
													</s:if>
													<s:if test="mpp.kcfs == '����֮����ɿ�'">
														<option value="¶��ɿ�">¶��ɿ�</option>
														<option value="����֮�ճ��ɿ�">����֮�ճ��ɿ�</option>
														<option value="����֮����ɿ�">����֮����ɿ�</option>
													</s:if>
												</select>
											</td>
											
										</tr>
										<tr>
											<td height="30" align="right" class="left_txt2">
												�������ƣ�
											</td>
											
											<td height="30">
												<input type="text" name="mpp.ffname" value="${mpp.ffname }" />
											</td>
											
										</tr>
										<tr>
											<td height="30" align="right" class="left_txt2">
												������Ŵ�����
											</td>
											
											<td height="30">
											<input type="text" name="mpp.counts" value="${mpp.counts }" readonly="readonly"/>
												
											</td>
											
										</tr>
										<s:if test="mpp.kcfs == '¶��ɿ�'">
										<tr bgcolor="#f2f2f2">
											<td height="30" align="right" class="left_txt2">
												����˵����
											</td>
											
											<td height="30">
												<textarea cols="50" rows="6" name="mpp.wzsm"><s:property value="mpp.wzsm" /></textarea>											
											</td>
											
										</tr>
										</s:if>
										<s:else>
                                        <tr>
											<td height="30" align="right" bgcolor="#f2f2f2"
												class="left_txt2">
												���÷�Χ��
											</td>
											
											<td height="30" bgcolor="#f2f2f2">
												<textarea cols="50" rows="2" name="mpp.syfw"><s:property value="mpp.syfw" /></textarea>
											</td>
											
										</tr>
										<tr>
											<td height="30" align="right" class="left_txt2">
												��������
											</td>
											
											<td height="30">
												<textarea cols="50" rows="2" name="mpp.kkcs"><s:property value="mpp.kkcs" /></textarea>
											</td>
											
										</tr>
										<tr>
											<td height="30" align="right" bgcolor="#f2f2f2"
												class="left_txt2">
												���й�����
											</td>
											
											<td height="30" bgcolor="#f2f2f2">
												<textarea cols="50" rows="2" name="mpp.cqgz"><s:property value="mpp.cqgz" /></textarea>
											</td>
											
										</tr>
										<tr>
											<td height="30" align="right" bgcolor="#F7F8F9"
												class="left_txt2">
												�زɹ�����
											</td>
											
											<td height="30" bgcolor="#F7F8F9">
												<textarea cols="50" rows="2" name="mpp.hcgz"><s:property value="mpp.hcgz" /></textarea>
											</td>
											
										</tr>
										</s:else>		
										<tr>
											<td height="17" colspan="4" align="right">&nbsp;
												
											</td>
										</tr>
										<tr>
											<td colspan="4" class="left_txt2" align="center">
												<input type="submit" value="�����޸�" name="B1" class="button_css" onMouseOver="this.className='myhand'"/>&nbsp;&nbsp;&nbsp;&nbsp;										
												<input type="button" value="����" name="B12" onClick="javascript:history.go(-1);return false;" class="button_css" onMouseOver="this.className='myhand'"/>
											</td>
										</tr>
									</table>
								</form>
								
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
