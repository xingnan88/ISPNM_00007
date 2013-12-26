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
		<title>江西理工大学特色库</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link REL="stylesheet" href="<%=basePath %>front/feature/css/home.css"
			type="text/css">
		<script type="text/javascript">
          //设置字体 by hk 2007-3-9
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
					当前位置：
					<a href="<%=basePath %>index.jsp" target="win"><font color="#666666">首
							页</font> </a> &gt;&gt;
					<a href="AchieveList.jsp?count=1">&nbsp;<font color="#666666">特色库</font>
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
											<font color="#000000">[<strong>字体： </strong><a
												href="javascript:SetFont(12);"><font color="#108EBD"><b>小</b>
												</font> </a>&nbsp;&nbsp;<a href="javascript:SetFont(14);"><font
													color="#108EBD"><b>中</b> </font> </a>&nbsp;&nbsp;<a
												href="javascript:SetFont(16);"><font color="#108EBD"><b>大</b>
												</font> </a>]&nbsp;</font><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</font>
											浏览次数：<s:property value="achieve.browseTimes" />次&nbsp;&nbsp;
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											项目、课题名称&nbsp;(下达编号)：
										</td>
										<td height="30" colspan="3" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											&nbsp;&nbsp;&nbsp;<s:property value="achieve.achieveName" />
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											负&nbsp;&nbsp;&nbsp;责&nbsp;&nbsp;&nbsp;人：
										</td>
										<td height="30" colspan="3" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											&nbsp;&nbsp;&nbsp;<s:property value="achieve.author" />
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											项&nbsp;目&nbsp;来&nbsp;源：
										</td>
										<td height="30" colspan="3" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											&nbsp;&nbsp;&nbsp;<s:property value="achieve.projectSource" />
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											项目起讫时间：
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											&nbsp;&nbsp;&nbsp;<s:property value="achieve.achieveTime" />&nbsp;&nbsp; 
										</td>
										<td height="30" width="15%" align="center" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											到&nbsp;帐&nbsp;经&nbsp;费：
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:property value="achieve.accountFund" />&nbsp;&nbsp;
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											科&nbsp;研&nbsp;类&nbsp;别：
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											&nbsp;&nbsp;&nbsp;
											<s:if test="achieve.achieveType=='002001'">
								国际项目
							</s:if>
											<s:if test="achieve.achieveType=='002002'">
								国家项目
							</s:if>
											<s:if test="achieve.achieveType=='002003'">
								省级项目
							</s:if>
											<s:if test="achieve.achieveType=='002004'">
								市级项目
							</s:if>
											<s:if test="achieve.achieveType=='002005'">
								横向项目
							</s:if>
											<s:if test="achieve.achieveType=='002000'">
								暂无科研类别
							</s:if>
										</td>
										<td height="30" width="15%" align="center" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											学&nbsp;院&nbsp;类&nbsp;别：
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:if test="achieve.collegeType==1">
								材化学院
							</s:if>
											<s:if test="achieve.collegeType==2">
								建测学院
							</s:if>
											<s:if test="achieve.collegeType==3">
								机电学院
							</s:if>
											<s:if test="achieve.collegeType==4">
								资源与环境工程学院
							</s:if>
											<s:if test="achieve.collegeType==5">
								冶金与化学工程学院
							</s:if>
											<s:if test="achieve.collegeType==6">
								电气工程与自动化学院
							</s:if>
											<s:if test="achieve.collegeType==7">
								信息工程学院
							</s:if>
											<s:if test="achieve.collegeType==8">
								文法学院
							</s:if>
											<s:if test="achieve.collegeType==9">
								理学院
							</s:if>
											<s:if test="achieve.collegeType==10">
								材料科学与工程学院
							</s:if>
											<s:if test="achieve.collegeType==11">
								经济管理学院
							</s:if>
											<s:if test="achieve.collegeType==12">
								外语外贸学院
							</s:if>
											<s:if test="achieve.collegeType==13">
								稀土学院
							</s:if>
											<s:if test="achieve.collegeType==14">
								应用科学学院
							</s:if>
											<s:if test="achieve.collegeType==15">
								软件学院
							</s:if>
											<s:if test="achieve.collegeType==0 || achieve.collegeType=='' || achieve.collegeType==null">
								暂无所属学院
							</s:if>
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											中&nbsp;文&nbsp;摘&nbsp;要：
										</td>
										<td height="30" colspan="3" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											&nbsp;&nbsp;&nbsp;
											<s:if test="achieve.chineseAbstract=='' || achieve.chineseAbstract==null">
												不详
											</s:if>
											<s:else>
												<s:property value="achieve.chineseAbstract" />
											</s:else>
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：
										</td>
										<td height="30" colspan="3" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											&nbsp;&nbsp;&nbsp;
											<s:if test="achieve.remark=='' || achieve.remark==null">
												不详
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
											<b><font color="#D73624">上一篇：</font> 
											<c:if test="${requestScope.previousName == null || requestScope.previousName == ''}">
												暂没有任何文章
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
											<b><font color="#D73624">下一篇：</font> 
											<c:if test="${requestScope.nextName == null || requestScope.nextName == ''}">
												暂没有任何文章
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
