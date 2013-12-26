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
		<title>矿冶论文库</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link REL="stylesheet" href="<%=basePath %>front/article/css/home.css"
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
					<a href="ArticleList!listFore.action?page=1">&nbsp;<font color="#666666">论文库</font>
					</a>
					<img src="<%=basePath %>front/article/images/dot.jpg" align="middle">
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
						background="<%=basePath %>front/article/images/3-bg.jpg">
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
													value="article.articleName" />
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
											浏览次数：<s:property value="article.browseTimes" />次&nbsp;&nbsp;
										</td>
									</tr>
									<tr>
										<td height="30" width="15%" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											作&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;者：
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:property value="article.author" />
										</td>
										<td height="30" width="15%" align="center" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											年&nbsp;&nbsp;卷&nbsp;&nbsp;期：
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:property value="article.annualVolume" />&nbsp;&nbsp;
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											分&nbsp;&nbsp;&nbsp;类&nbsp;&nbsp;&nbsp;号：
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:property value="article.classId" />&nbsp;&nbsp; 
										</td>
										<td height="30" width="15%" align="center" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											期&nbsp;&nbsp;刊&nbsp;&nbsp;名：
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:property value="article.journalName" />&nbsp;&nbsp;
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right  
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N：
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:if test="article.cn == null || article.cn == ''">
												无对应的CN
											</s:if>
											<s:else>
												<s:property value="article.cn" />
											</s:else>
										</td>
										<td height="30" width="15%" align="center" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											I&nbsp;&nbsp;S&nbsp;&nbsp;S&nbsp;&nbsp;N：
										</td>
										<td height="30" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:if test="article.issn == null || article.issn == ''">
												无对应的ISSN&nbsp;&nbsp;
											</s:if>
											<s:else>
												<s:property value="article.issn" />&nbsp;&nbsp;
											</s:else>
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											关&nbsp;&nbsp;&nbsp;键&nbsp;&nbsp;&nbsp;&nbsp;词：
										</td>
										<td height="30" colspan="3" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:property value="article.keyWord" />
										</td>
									</tr>
									<tr>
										<td height="30" width="100" align=right 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											机&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;构：
										</td>
										<td height="30" colspan="3" 
											style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
											<s:property value="article.mechanism" />
										</td>
									</tr>
									<tr>
										<td align="right" valign="top">
											中&nbsp;文&nbsp;摘&nbsp;要：
										</td>
										<td id="FontTd" valign="top" colspan="3" 
											style="line-height: 180%; font-size: 9pt; text-align: justify; text-justify: inter-ideograph"
											height="151px">
											<FONT size=3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="article.chineseAbstract" /> </FONT>
										</td>
									</tr>
									<tr>
										<td height="40px" valign="middle" align="right" colspan="4"
											style="line-height: 180%">
											<img src="<%=basePath %>front/article/images/xl_button_dy.gif"
												border="0" style="cursor: hand"
												onclick="javascript:window.print();">
											<img src="<%=basePath %>front/article/images/xl_button_gb.gif"
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
																src="<%=basePath %>front/article/images/returntop.jpg" border="0" />
														</a>&nbsp;&nbsp;
														<a href="<%=basePath %>right.jsp"><img
																src="<%=basePath %>front/article/images/returnindex.jpg" border="0" />
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
													href="ArticleDetail!detailFore.action?articleId=${requestScope.previousId }&articleName=${requestScope.previousName}" target="main">
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
													href="ArticleDetail!detailFore.action?articleId=${requestScope.nextId}&articleName=${requestScope.nextName}" target="main">
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
