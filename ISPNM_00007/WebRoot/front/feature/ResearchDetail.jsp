<%@ page language="java" pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
	<head>
		<title>��������ѧ��ɫ��</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link REL="stylesheet" href="<%=basePath %>front/feature/css/home.css"
			type="text/css">
		<script type="text/javascript">
          //�������� by hk 2007-3-9
          function SetFont(size)
          {
              var divBody = document.getElementById("FontTd");
              if(!divBody)
              {
                  return;
              }
              divBody.style.fontSize = size + "px";
              var divChildBody = divBody.childNodes;
              for(var i = 0; i < divChildBody.length; i++)
              {
                  if (divChildBody[i].nodeType==1)
                  {
                      divChildBody[i].style.fontSize = size + "px";
                  }
              }
          }
 </script>
		<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
	</head>

	<body>
		<table width="1000" border="0" cellpadding="0" cellspacing="0"
			align="center"
			style="BORDER-TOP: #BDBDBD 0px solid; BORDER-BOTTOM: #BDBDBD 0px solid; BORDER-LEFT: #BDBDBD 1px solid; BORDER-RIGHT: #BDBDBD 1px solid;"
			bgcolor="#FEF9DB">
			<tr>
				<td height="3" colspan="3"></td>
			</tr>
			<tr>
				<td width="10" height="23"></td>
				<td width="20" align="center"></td>
				<td align="left">
					��ǰλ�ã�
					<a href="<%=basePath %>index.jsp" target="win"><font color="#666666">��
							ҳ</font> </a> &gt;&gt;
					<a href="AchieveList.jsp?count=1">&nbsp;<font color="#666666">��ɫ��</font>
					</a>
					<img src="<%=basePath %>front/feature/images/dot.jpg" align="middle">
				</td>
			</tr>
			<tr>
				<td height="3" colspan="3"></td>
			</tr>
		</table>
		<table width="1000" border="0" cellpadding="0" cellspacing="0"
			align="center"
			style="BORDER-TOP: #BDBDBD 0px solid; BORDER-BOTTOM: #BDBDBD 0px solid; BORDER-LEFT: #BDBDBD 1px solid; BORDER-RIGHT: #BDBDBD 1px solid;"
			bgcolor="#FFFFFF">
			<tr>
				<td height="8"></td>
			</tr>
		</table>
		<table width="1000" border="0" cellpadding="0" cellspacing="0"
			align="center"
			style="BORDER-TOP: #BDBDBD 0px solid; BORDER-BOTTOM: #BDBDBD 0px solid; BORDER-LEFT: #BDBDBD 1px solid; BORDER-RIGHT: #BDBDBD 1px solid;"
			bgcolor="#FFFFFF">
			<tr>
				<td width="716" valign="top">
					<table width="98%" cellpadding="0" cellspacing="0" align="center"
						bgcolor="#FFFFFF"
						style="border: 1px solid #B9B9B9; background-repeat: repeat-x"
						background="<%=basePath %>front/feature/images/3-bg.jpg">
						<tr>
							<td valign="top" align="center">
								<table width="97%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="20" align="center"></td>
									</tr>
								</table>
								<table width="93%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="28" align="center"
											style="font-size: 20px; color: #D3371E; topmargin: 5px; line-height: 150%"
											valign="middle">
											<br>
											<b><s:property value="achieve.achieveName" /> </b>
										</td>
									</tr>
								</table>
								<table width=97% border=0 cellspacing=0 cellpadding=0
									align=center height="100%">
									<tr>
										<td height="10" colspan="2"></td>
									</tr>
									<tr>
										<td height="30" align="right" colspan="4" valign="top"
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<font color="#000000">[<strong>���壺 </strong><a
												href="javascript:SetFont(12);"><font color="#108EBD"><b>С</b>
												</font> </a>&nbsp;&nbsp;<a href="javascript:SetFont(14);"><font
													color="#108EBD"><b>��</b> </font> </a>&nbsp;&nbsp;<a
												href="javascript:SetFont(16);"><font color="#108EBD"><b>��</b>
												</font> </a>]&nbsp;</font><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</font>
											���������<s:property value="achieve.browseTimes" />��&nbsp;&nbsp;
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											��Ŀ����������&nbsp;(�´���)��
										</td>
										<td height="30" colspan="3" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											&nbsp;&nbsp;&nbsp;<s:property value="achieve.achieveName" />
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											��&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;�ˣ�
										</td>
										<td height="30" colspan="3" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											&nbsp;&nbsp;&nbsp;<s:property value="achieve.author" />
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											��&nbsp;Ŀ&nbsp;��&nbsp;Դ��
										</td>
										<td height="30" colspan="3" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											&nbsp;&nbsp;&nbsp;<s:property value="achieve.projectSource" />
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											��Ŀ����ʱ�䣺
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											&nbsp;&nbsp;&nbsp;<s:property value="achieve.achieveTime" />&nbsp;&nbsp; 
										</td>
										<td height="30" width="15%" align="center" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											��&nbsp;��&nbsp;��&nbsp;�ѣ�
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:property value="achieve.accountFund" />&nbsp;&nbsp;
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											��&nbsp;��&nbsp;��&nbsp;��
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											&nbsp;&nbsp;&nbsp;
											<s:if test="achieve.achieveType=='002001'">
								������Ŀ
							</s:if>
											<s:if test="achieve.achieveType=='002002'">
								������Ŀ
							</s:if>
											<s:if test="achieve.achieveType=='002003'">
								ʡ����Ŀ
							</s:if>
											<s:if test="achieve.achieveType=='002004'">
								�м���Ŀ
							</s:if>
											<s:if test="achieve.achieveType=='002005'">
								������Ŀ
							</s:if>
											<s:if test="achieve.achieveType=='002000'">
								���޿������
							</s:if>
										</td>
										<td height="30" width="15%" align="center" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											ѧ&nbsp;Ժ&nbsp;��&nbsp;��
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:if test="achieve.collegeType==1">
								�Ļ�ѧԺ
							</s:if>
											<s:if test="achieve.collegeType==2">
								����ѧԺ
							</s:if>
											<s:if test="achieve.collegeType==3">
								����ѧԺ
							</s:if>
											<s:if test="achieve.collegeType==4">
								��Դ�뻷������ѧԺ
							</s:if>
											<s:if test="achieve.collegeType==5">
								ұ���뻯ѧ����ѧԺ
							</s:if>
											<s:if test="achieve.collegeType==6">
								�����������Զ���ѧԺ
							</s:if>
											<s:if test="achieve.collegeType==7">
								��Ϣ����ѧԺ
							</s:if>
											<s:if test="achieve.collegeType==8">
								�ķ�ѧԺ
							</s:if>
											<s:if test="achieve.collegeType==9">
								��ѧԺ
							</s:if>
											<s:if test="achieve.collegeType==10">
								���Ͽ�ѧ�빤��ѧԺ
							</s:if>
											<s:if test="achieve.collegeType==11">
								���ù���ѧԺ
							</s:if>
											<s:if test="achieve.collegeType==12">
								������óѧԺ
							</s:if>
											<s:if test="achieve.collegeType==13">
								ϡ��ѧԺ
							</s:if>
											<s:if test="achieve.collegeType==14">
								Ӧ�ÿ�ѧѧԺ
							</s:if>
											<s:if test="achieve.collegeType==15">
								���ѧԺ
							</s:if>
											<s:if test="achieve.collegeType==0 || achieve.collegeType=='' || achieve.collegeType==null">
								��������ѧԺ
							</s:if>
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											��&nbsp;��&nbsp;ժ&nbsp;Ҫ��
										</td>
										<td height="30" colspan="3" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											&nbsp;&nbsp;&nbsp;
											<s:if test="achieve.chineseAbstract=='' || achieve.chineseAbstract==null">
												����
											</s:if>
											<s:else>
												<s:property value="achieve.chineseAbstract" />
											</s:else>
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ע��
										</td>
										<td height="30" colspan="3" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											&nbsp;&nbsp;&nbsp;
											<s:if test="achieve.remark=='' || achieve.remark==null">
												����
											</s:if>
											<s:else>
												<s:property value="achieve.remark" />
											</s:else>
										</td>
									</tr>
									<tr>
										<td height="40px" valign="middle" align="right" colspan="4"
											style="line-height: 180%">
											<img src="<%=basePath %>front/feature/images/xl_button_dy.gif"
												border="0" style="cursor: hand"
												onclick="javascript:window.print();">
											<img src="<%=basePath %>front/feature/images/xl_button_gb.gif"
												border="0" style="cursor: hand"
												onclick="javascript:window.top.opener=null; window.top.open('','_self',''); window.top.close();">
										</td>
									</tr>
									<tr>
										<td colspan="4">
											<table width="93%" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tr>
													<td height="30" align="center" width="5%"></td>
													<td height="30" align="center" width="95%" valign="middle">
														<a href="#"><img
																src="<%=basePath %>front/feature/images/returntop.jpg" border="0" />
														</a>&nbsp;&nbsp;
														<a href="<%=basePath %>right.jsp"><img
																src="<%=basePath %>front/feature/images/returnindex.jpg" border="0" />
														</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td height="5" align="left" colspan="4">
											<hr style="height:2;" width="100%">
										</td>
									</tr>
								</table>
								<table width="97%">
									<tr>
										<td height="70" align="left" colspan="4">
											&nbsp;
											<b><font color="#D73624">��һƪ��</font> 
											<c:if test="${requestScope.previousName == null || requestScope.previousName == ''}">
												��û���κ�����
											</c:if> 
											<c:if test="${requestScope.previousName != null && requestScope.previousName != ''}">
												<a
													href="AchieveDetail!detailFore.action?achieveId=${requestScope.previousId }&achieveName=${requestScope.previousName}" target="main">
													${requestScope.previousName }
												</a>
											</c:if>
											</b>
											<br>
											<br>
											&nbsp;&nbsp;
											<b><font color="#D73624">��һƪ��</font> 
											<c:if test="${requestScope.nextName == null || requestScope.nextName == ''}">
												��û���κ�����
											</c:if> 
											<c:if test="${requestScope.nextName != null && requestScope.nextName != ''}">
												<a
													href="AchieveDetail!detailFore.action?achieveId=${requestScope.nextId}&achieveName=${requestScope.nextName}" target="main">
													${requestScope.nextName}
												</a>
											</c:if>
											</b>
											<br>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
