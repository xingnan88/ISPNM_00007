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
		<title>矿冶企业库</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link REL="stylesheet" href="<%=basePath %>front/company/css/home.css"
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
					<a href="<%=basePath %>index.jsp" target="win"><font color="#666666">首 页</font> </a> &gt;&gt;
					<a href="CompanyList!listFore.action?page=1">&nbsp;<font color="#666666">企业库</font>
					</a>
					<img src="<%=basePath %>front/company/images/dot.jpg" align="middle">
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
						background="<%=basePath %>front/company/images/3-bg.jpg">
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
											<b><s:property
													value="company.name" />
											</b>
										</td>
									</tr>
								</table>
								<table width=97% border=0 cellspacing=0 cellpadding=0
									align=center height="100%">
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
											浏览次数：<s:property value="company.browseTimes" />次&nbsp;&nbsp;
										</td>
									</tr>
									<tr>
										<td height="30" width="20%" align=center 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											企&nbsp;业&nbsp;名&nbsp;称：
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:property value="company.name" />
										</td>
										<td height="30" width="20%" align="center" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;区：
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:property value="company.address" />&nbsp;&nbsp;
										</td>
									</tr>
									<tr>
										<td height="30" width="20%" align=center 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											联&nbsp;系&nbsp;方&nbsp;式：
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:property value="company.contact" />&nbsp;&nbsp; 
										</td>
										<td height="30" width="15%" align="center" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											企&nbsp;业&nbsp;邮&nbsp;箱：
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:property value="company.email" />&nbsp;&nbsp;
										</td>
									</tr>
									<tr>
										<td height="30" width="20%" align=center  
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											企&nbsp;业&nbsp;类&nbsp;型：
										</td>
										<td height="30" colspan="3" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:property value="company.type" />
										</td>
									</tr>	
									<tr>
										<td height="30" width="20%" align=center  
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											经营范围、主营产品：
										</td>
										<td height="30" colspan="3" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:property value="company.range" />&nbsp;&nbsp;
										</td>
									</tr>
									<tr>
										<td height="40px" valign="middle" align="right" colspan="4"
											style="line-height: 180%">
											<img src="<%=basePath %>front/company/images/xl_button_dy.gif"
												border="0" style="cursor: hand"
												onclick="javascript:window.print();">
											<img src="<%=basePath %>front/company/images/xl_button_gb.gif"
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
																src="<%=basePath %>front/company/images/returntop.jpg" border="0" />
														</a>&nbsp;&nbsp;
														<a href="<%=basePath %>right.jsp"><img
																src="<%=basePath %>front/company/images/returnindex.jpg" border="0" />
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
													href="CompanyDetail!detailFore.action?id=${requestScope.previousId }&name=${requestScope.previousName}" target="main">
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
													href="CompanyDetail!detailFore.action?id=${requestScope.nextId}&name=${requestScope.nextName}" target="main">
													${requestScope.nextName}
												</a>
											</c:if>
											</b>
											<br>
										</td>
									</tr>
								</table>
							<!-- 
							</td>
						</tr>
						 -->
					</table>
				</td>
			</tr>
		</table>
	</body>
	<script type="text/javascript">
		<c:if test="${requestScope.not_file == 'not the file'}">
			alert('没有对应的论文！');
		</c:if>
	</script>
</html>
