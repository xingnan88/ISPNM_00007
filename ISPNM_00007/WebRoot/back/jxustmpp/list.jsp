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
		<script type="text/javascript">
		function del()
		{
			if(confirm("��ȷ��Ҫɾ��������Ϣ?"))
			{
				return true;
			}
			
			return false;
		}
		</script>
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
						cellspacing="0"  class="golb">
						<tr>
							<td class="left_txt">
								��ǰλ�ã��ɿ󷽷��б�
							</td>
						</tr>						
						<tr>
							<td>
								<table border="0" cellpadding="0"cellspacing="0" class="nowtable" width="15%">
									<tr><td class="left_bt2_kcfs">¶��ɿ�</td></tr>
								</table>
							</td>
						</tr>
						<tr>
							<td align="right">
								
									<table width="85%" border="0" cellspacing="0" cellpadding="0" class="class_kcfs">
										<tr>
											<td width="25%" align="center" bgcolor="#f2f2f2"class="left_txt2" >��������</td>
											<td width="10%" bgcolor="#f2f2f2" class="left_txt2" align="center">�������	</td>
											<td width="20%" bgcolor="#f2f2f2" class="left_txt2" align="center">ʱ��	</td>
											<td width="45%" bgcolor="#f2f2f2" class="left_txt2" align="center">����</td>
										</tr>
										<s:iterator value="lists">
										<s:if test="kcfs == '¶��ɿ�'">
										<tr>
											<td width="25%" height="25" align="center"class="left_txt2" >
												<s:property value="ffname"/>
											</td>
											<td width="10%" height="25" class="left_txt2" align="center" bgcolor="#f2f2f2">
												<s:property value="counts"/>
											</td>
											<td width="20%" height="25" class="left_txt2" align="center">
												<s:date name="time" format="yyyy-MM-dd"/>
											</td>
											<td width="45%" height="25" class="left_txt2" align="center" bgcolor="#f2f2f2">
												<a href="mppinfo.action?mpp.id=<s:property value="id"/>">�鿴��ϸ��Ϣ</a>&nbsp; | &nbsp;
												<a href="mppupdate.action?mpp.id=<s:property value="id"/>">�޸���Ϣ</a>&nbsp; | &nbsp;
												<a href="mppupload.action?mpp.id=<s:property value="id"/>">�޸���Ƶ</a>&nbsp; | &nbsp;
												<a href="mpp_delete.action?mpp.id=<s:property value="id"/>" onclick="return del();">ɾ��</a> 
											</td>
										</tr>
										</s:if>
										</s:iterator>                                                                								
									</table>
							</td>
						</tr>
                        <tr>
							<td>
								<table border="0" cellpadding="0"cellspacing="0" class="nowtable" width="15%">
									<tr><td class="left_bt2_kcfs">����֮�ճ��ɿ�</td></tr>
								</table>
							</td>
						</tr>
						<tr>
							<td align="right">
                            	<table width="85%" border="0" cellspacing="0" cellpadding="0" class="class_kcfs">
										<tr>
											<td width="25%" align="center" bgcolor="#f2f2f2"class="left_txt2" >��������</td>
											<td width="10%" bgcolor="#f2f2f2" class="left_txt2" align="center">�������	</td>
											<td width="20%" bgcolor="#f2f2f2" class="left_txt2" align="center">ʱ��	</td>
											<td width="45%" bgcolor="#f2f2f2" class="left_txt2" align="center">����</td>
										</tr>
										<s:iterator value="lists">
										<s:if test="kcfs == '����֮�ճ��ɿ�'">
										<tr>
											<td width="25%" height="25" align="center"class="left_txt2" >
												<s:property value="ffname"/>
											</td>
											<td width="10%" height="25" class="left_txt2" align="center" bgcolor="#f2f2f2">
												<s:property value="counts"/>
											</td>
											<td width="20%" height="25" class="left_txt2" align="center">
												<s:date name="time" format="yyyy-MM-dd"/>
											</td>
											<td width="45%" height="25" class="left_txt2" align="center" bgcolor="#f2f2f2">
												<a href="mppinfo.action?mpp.id=<s:property value="id"/>">�鿴��ϸ��Ϣ</a>&nbsp; | &nbsp;
												<a href="mppupdate.action?mpp.id=<s:property value="id"/>">�޸���Ϣ</a>&nbsp; | &nbsp;
												<a href="mppupload.action?mpp.id=<s:property value="id"/>">�޸���Ƶ</a>&nbsp; | &nbsp;
												<a href="mpp_delete.action?mpp.id=<s:property value="id"/>" onclick="return del();">ɾ��</a> 
											</td>
										</tr>
										</s:if>
										</s:iterator>						
									</table>	
							</td> 
						</tr>
                        <tr>
							<td>
								<table border="0" cellpadding="0"cellspacing="0" class="nowtable" width="15%">
									<tr><td class="left_bt2_kcfs">����֮����ɿ�</td></tr>
								</table>
							</td>
						</tr>
						<tr>
							<td align="right">
								<table width="85%" border="0" cellspacing="0" cellpadding="0" class="class_kcfs">
										<tr>
											<td width="25%" align="center" bgcolor="#f2f2f2"class="left_txt2" >��������</td>
											<td width="10%" bgcolor="#f2f2f2" class="left_txt2" align="center">�������	</td>
											<td width="20%" bgcolor="#f2f2f2" class="left_txt2" align="center">ʱ��	</td>
											<td width="45%" bgcolor="#f2f2f2" class="left_txt2" align="center">����</td>
										</tr>
										<s:iterator value="lists">
										<s:if test="kcfs == '����֮����ɿ�'">
										<tr>
											<td width="25%" height="25" align="center"class="left_txt2" >
												<s:property value="ffname"/>
											</td>
											<td width="10%" height="25" class="left_txt2" align="center" bgcolor="#f2f2f2">
												<s:property value="counts"/>
											</td>
											<td width="20%" height="25" class="left_txt2" align="center">
												<s:date name="time" format="yyyy-MM-dd"/>
											</td>
											<td width="45%" height="25" class="left_txt2" align="center" bgcolor="#f2f2f2">
												<a href="mppinfo.action?mpp.id=<s:property value="id"/>">�鿴��ϸ��Ϣ</a>&nbsp; | &nbsp;
												<a href="mppupdate.action?mpp.id=<s:property value="id"/>">�޸���Ϣ</a>&nbsp; | &nbsp;
												<a href="mppupload.action?mpp.id=<s:property value="id"/>">�޸���Ƶ</a>&nbsp; | &nbsp;
												<a href="mpp_delete.action?mpp.id=<s:property value="id"/>" onclick="return del();">ɾ��</a> 
											</td>
										</tr>
										</s:if>
										</s:iterator>                             									
									</table>
							</td>
						</tr>
                        <tr>
							<td>
								<table border="0" cellpadding="0"cellspacing="0" class="nowtable" width="15%">
									<tr><td class="left_bt2_kcfs">����֮����ɿ�</td></tr>
								</table>
							</td>
						</tr>
						<tr>
							<td align="right">
								<table width="85%" border="0" cellspacing="0" cellpadding="0" class="class_kcfs">
										<tr>
											<td width="25%" align="center" bgcolor="#f2f2f2"class="left_txt2" >��������</td>
											<td width="10%" bgcolor="#f2f2f2" class="left_txt2" align="center">�������	</td>
											<td width="20%" bgcolor="#f2f2f2" class="left_txt2" align="center">ʱ��	</td>
											<td width="45%" bgcolor="#f2f2f2" class="left_txt2" align="center">����</td>
										</tr>
										<s:iterator value="lists">
										<s:if test="kcfs == '����֮����ɿ�'">
										<tr>
											<td width="25%" height="25" align="center"class="left_txt2" >
												<s:property value="ffname"/>
											</td>
											<td width="10%" height="25" class="left_txt2" align="center" bgcolor="#f2f2f2">
												<s:property value="counts"/>
											</td>
											<td width="20%" height="25" class="left_txt2" align="center">
												<s:date name="time" format="yyyy-MM-dd"/>
											</td>
											<td width="45%" height="25" class="left_txt2" align="center" bgcolor="#f2f2f2">
												<a href="mppinfo.action?mpp.id=<s:property value="id"/>">�鿴��ϸ��Ϣ</a>&nbsp; | &nbsp;
												<a href="mppupdate.action?mpp.id=<s:property value="id"/>">�޸���Ϣ</a>&nbsp; | &nbsp;
												<a href="mppupload.action?mpp.id=<s:property value="id"/>">�޸���Ƶ</a>&nbsp; | &nbsp;
												<a href="mpp_delete.action?mpp.id=<s:property value="id"/>" onclick="return del();">ɾ��</a> 
											</td>
										</tr>
										</s:if>
										</s:iterator> 						
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
