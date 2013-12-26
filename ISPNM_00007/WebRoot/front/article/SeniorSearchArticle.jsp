<%@ page language="java" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>矿冶论文库</title>
		<link rel="stylesheet" href="<%=basePath %>front/article/css/home.css"
			type="text/css" />
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
	<script type="text/javascript">
		function show_classId(){  
   			window.open ("tree.jsp", "newwindow", "height=200, width=150, top=100, left=550, toolbar=no, menubar=no, scrollbars=no, resizable=yes,location=no, status=no"); 
   		}
		function range(){
			var ran = false;
			window.location.href="GetArtYear!getartyearFore.action?ran=" + ran; 
		}
		function specific(){
			var ran = true;
			window.location.href="GetArtYear!getartyearFore.action?ran=" + ran; 
		}
		function check_data() {
			if(isNaN(document.getElementById("sltMonth").value)){ 
				alert('期号必须是数字！') 
				document.seniorSearchForm.sltMonth.focus(); 
				return false; 
			}
		}
	</script>
	</head>
	<body>
		<table width="99%" border="0" cellpadding="0" cellspacing="0"
			align="center">
			<tr>
				<td height="6"></td>
			</tr>
		</table>
		<table width="710" border="0" cellpadding="0" cellspacing="0"
			background="<%=basePath %>front/article/images/3-bg.jpg"
			style="BORDER: #B9B9B9 1px solid; background-repeat: repeat-x"
			align="center">
			<tr>
				<td colspan="2">
					<table width="710" border="0" cellpadding="0" cellspacing="0"
						height="35" style="BORDER-bottom: #B9B9B9 1px solid;">
						<tr>
							<td width="12"></td>
							<td width="200" style="font-size: 14px; color: #FF5100">
								<strong> 高级检索论文 </strong>
							</td>
							<td>
								&nbsp;
							</td>
							<td width="100">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr align="center">
				<td colspan="2"></td>
			</tr>
			<tr>
				<td width="690" height="460" align="center" valign="top">
					<s:form method="post" name="seniorSearchForm" theme="simple" onsubmit="return check_data()"
						action="SeniorSearchArticle!seniorSearchFore.action?page=1" target="main">
						<table width="90%" border="0" cellspacing="0" cellpadding="0"
							align=left>
							<tr>
								<td colspan="3">
									<table border=0 width=100% style="display: block" id="regtable">
										<tr>
											<td colspan="3" height="25">
												&nbsp;
											</td>
										</tr>
										<tr>
											<td width="20">
												&nbsp;
											</td>
											<td>
												篇&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：
											</td>
											<td>
												<s:textfield name="articleName" size="60" />
											</td>
										</tr>
										<tr>
											<td width="20">
												&nbsp;
											</td>
											<td>
												作&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;者：
											</td>
											<td>
												<s:textfield name="author" size="60" />
											</td>
										</tr>
										<tr>
											<td width="20">
												&nbsp;
											</td>
											<td>
												年&nbsp;&nbsp;卷&nbsp;&nbsp;期：
											</td>
											<td align="left">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;
												<s:if test="#request.ran == true">
													<select id="sltYear" name="sltYear">
														<option value="--" selected>
															--
														</option>
														<s:bean name="org.apache.struts2.util.Counter"
															id="counter">
															<s:param name="first">${requestScope.first1}</s:param>
															<s:param name="last">${requestScope.last1}</s:param>
															<s:iterator>
																<option value="<s:property />">
																	<s:property />
																</option>
															</s:iterator>
														</s:bean>
													</select>
												年
												<s:textfield size="25px" id="sltMonth" name="sltMonth"></s:textfield>
												期&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" onclick="range()">查找范围请点击</a>
												</s:if>
												<s:if test="#request.ran == false">
												自&nbsp;
												<select id="staYear" name="staYear">
														<option value="--" selected>
															--
														</option>
														<s:bean name="org.apache.struts2.util.Counter"
															id="counter">
															<s:param name="first">${requestScope.first1}</s:param>
															<s:param name="last">${requestScope.last1}</s:param>
															<s:iterator>
																<option value="<s:property />">
																	<s:property />
																</option>
															</s:iterator>
														</s:bean>
													</select>
												年&nbsp;至&nbsp;
												<select id="endYear" name="endYear">
														<option value="--" selected>
															--
														</option>
														<s:bean name="org.apache.struts2.util.Counter"
															id="counter">
															<s:param name="first">${requestScope.first1}</s:param>
															<s:param name="last">${requestScope.last1}</s:param>
															<s:iterator>
																<option value="<s:property />">
																	<s:property />
																</option>
															</s:iterator>
														</s:bean>
													</select>
												年
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" onclick="specific()">查找具体请点击</a>
												</s:if>
											</td>
										</tr>
										<tr>
											<td width="20">
												&nbsp;
											</td>
											<td>
												关&nbsp;&nbsp;&nbsp;键&nbsp;&nbsp;&nbsp;&nbsp;词：
											</td>
											<td>
												<s:textfield name="keyWord" size="60" />
											</td>
										</tr>
										<tr>
											<td width="20">
												&nbsp;
											</td>
											<td>
												期&nbsp;&nbsp;刊&nbsp;&nbsp;名：
											</td>
											<td>
												<s:textfield name="journalName" size="60" />
											</td>
										</tr>
										<tr>
											<td width="20">
												&nbsp;
											</td>
											<td>
												C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N：
											</td>
											<td>
												<s:textfield name="cn" size="60" />
											</td>
										</tr>
										<tr>
											<td width="20">
												&nbsp;
											</td>
											<td>
												I&nbsp;&nbsp;S&nbsp;&nbsp;S&nbsp;&nbsp;N：
											</td>
											<td>
												<s:textfield name="issn" size="60" />
											</td>
										</tr>
										<tr>
											<td width="20">
												&nbsp;
											</td>
											<td>
												分&nbsp;&nbsp;&nbsp;类&nbsp;&nbsp;&nbsp;号：
											</td>
											<td>
												<s:textfield name="classId" size="60" onclick="show_classId()" />
											</td>
										</tr>
										<tr>
											<td colspan="3">
												&nbsp;
											</td>
										</tr>
										<tr>
											<td colspan="3" valign="middle" align="center">
												<input type="submit" name="Login" value="确 定"
													style="cursor: hand" class="Button" />
												<input type="reset" name="Reset" value="重 填"
													style="cursor: hand" class="Button" />
												<input type="button" name="back" value="关 闭"
													style="cursor: hand" class="Button"
													onclick="javascript:window.close()" />
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="18" colspan="3">
									&nbsp;
								</td>
							</tr>
						</table>
					</s:form>
				</td>
				<td width="7" valign="bottom"></td>
			</tr>
			<tr bgcolor="#E9E9E9">
				<td height="1" colspan="2"></td>
			</tr>
		</table>
	</body>
	<script type="text/javascript">
		<c:if test="${requestScope.notCriter == 'not criterion'}">
			alert('开始时间不能大于结束时间！');
		</c:if>
	</script>
</html>