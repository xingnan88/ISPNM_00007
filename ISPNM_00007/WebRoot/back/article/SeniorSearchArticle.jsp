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
		<link href="<%=basePath%>back/article/css/skin.css" rel="stylesheet"
			type="text/css" />
		<link href="<%=basePath%>back/article/css/myStyle.css"
			rel="stylesheet" type="text/css" />
		<link type="text/css"
			href="<%=basePath%>jquery-ui/css/start/jquery-ui-1.8.15.custom.css"
			rel="stylesheet" />
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-1.6.2.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-ui-1.8.15.custom.min.js"></script>
		<script type="text/javascript">
		function show_classId(){  
   			window.open ("tree.jsp", "newwindow", "height=200, width=150, top=100, left=550, toolbar=no, menubar=no, scrollbars=no, resizable=yes,location=no, status=no"); 
   		}
		function range(){
			var ran = false;
			window.location.href="GetArtYear!getartyear.action?ran=" + ran; 
		}
		function specific(){
			var ran = true;
			window.location.href="GetArtYear!getartyear.action?ran=" + ran; 
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
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top">
					<img src="<%=basePath %>images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="<%=basePath %>images/content-bg.gif">
					<div class="titlebt">
						高级检索成果
					</div>
				</td>
				<td width="17" valign="top">
					<img src="<%=basePath %>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent" style="width:95%">
			<s:form name="seniorSearchForm" action="SeniorSearchArticle!seniorSearch.action?page=1"
				theme="simple" method="POST" onsubmit="return check_data()">
				<div id="title"
					style="width:100%;padding: 7px; text-align: center; border: 1px solid rgb(10, 100, 130);">
					<img src="<%=basePath %>images/icon2_004.png" style="vertical-align: top;" />
					检索论文信息
				</div>
				<table style="width: 100%;" id="baseInfo" cellpadding="0"
					cellspacing="0">
					<tr>
						<td width="20%">
							篇名
						</td>
						<td>
							<s:textfield name="articleName" />
						</td>
					</tr>
					<tr>
						<td>
							作者
						</td>
						<td>
							<s:textfield name="author" />
						</td>
					</tr>
					<tr>
						<td>
							年卷期
						</td>
						<td align="left">
							<s:if test="#request.ran == true">
								<select id="sltYear" name="sltYear">
									<option value="--" selected>
										--
									</option>
									<s:bean name="org.apache.struts2.util.Counter" id="counter">
										<s:param name="first">${requestScope.first1}</s:param>
										<s:param name="last">${requestScope.last1}</s:param>
										<s:iterator>
											<option value="<s:property />">
												<s:property />
											</option>
										</s:iterator>
									</s:bean>
								</select>
												年&nbsp;<input style="width:25px;" id="sltMonth" name="sltMonth" />
												期&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" onclick="range()">查找范围请点击</a>
							</s:if>
							<s:if test="#request.ran == false">
												自&nbsp;
												<select id="staYear" name="staYear">
									<option value="--" selected>
										--
									</option>
									<s:bean name="org.apache.struts2.util.Counter" id="counter">
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
									<s:bean name="org.apache.struts2.util.Counter" id="counter">
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
						<td>
							关键词
						</td>
						<td>
							<s:textfield name="keyWord" />
						</td>
					</tr>
					<tr>
						<td>
							期刊名
						</td>
						<td>
							<s:textfield name="journalName" />
						</td>
					</tr>
					<tr>
						<td>
							CN
						</td>
						<td>
							<s:textfield name="cn" />
						</td>
					</tr>
					<tr>
						<td>
							ISSN
						</td>
						<td>
							<s:textfield name="issn" />
						</td>
					</tr>
					<tr>
						<td>
							分类号
						</td>
						<td>
							<s:textfield name="classId" onclick="show_classId()"  />
						</td>
					</tr>
				</table>
				<div style="text-align: center;">
					<s:submit type="image" src="images/tj.jpg" cssClass="imgButton" />
					<a href="#" onclick="document.forms[0].reset()"><img
							src="images/reset.jpg" class="imgButton" /> </a>
				</div>
			</s:form>
		</div>
	</body>
</html>