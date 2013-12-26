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
		<link href="<%=basePath%>back/feature/css/skin.css" rel="stylesheet"
			type="text/css" />
		<link href="<%=basePath%>back/feature/css/myStyle.css"
			rel="stylesheet" type="text/css" />
		<link type="text/css"
			href="<%=basePath%>jquery-ui/css/start/jquery-ui-1.8.15.custom.css"
			rel="stylesheet" />
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-1.6.2.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-ui-1.8.15.custom.min.js"></script>
		<script type="text/javascript">
		function range(){
			var ran = false;
			window.location.href="GetYear!getyear.action?ran=" + ran; 
		}
		function specific(){
			var ran = true;
			window.location.href="GetYear!getyear.action?ran=" + ran; 
		}
</script>
	</head>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top">
					<img src="<%=basePath%>images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="<%=basePath%>images/content-bg.gif">
					<div class="titlebt">
						高级检索成果
					</div>
				</td>
				<td width="17" valign="top">
					<img src="<%=basePath%>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent" style="width:95%">
			<s:form action="SeniorSearchAchieve!seniorSearch.action?page=1"
				theme="simple" method="POST">
				<div id="title"
					style="width:100%;padding: 7px; text-align: center; border: 1px solid rgb(10, 100, 130);">
					<img src="<%=basePath%>images/icon2_004.png" style="vertical-align: top;" />
					检索成果信息
				</div>
				<table style="width: 100%;" id="baseInfo" cellpadding="0"
					cellspacing="0">
					<tr>
						<td style="width: 30%">
							成果名称
						</td>
						<td>
							<s:textfield name="achieveName" />
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
							获成果时间
						</td>
						<td colspan="3" align="left">
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
												年
												<select id="sltMonth" name="sltMonth">
									<option value="--" selected>
										--
									</option>
									<s:iterator
										value="{'1','2','3','4','5','6','7','8','9','10','11','12'}"
										var="counter">
										<option value='<s:property value="#counter"/>'>
											<s:property value="#counter" />
										</option>
									</s:iterator>
								</select>
												月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
							专利类别
						</td>
						<td>
							<s:textfield name="patentClass" />
						</td>
					</tr>
					<tr>
						<td>
							成果类别
						</td>
						<td>
							<s:select
								list="#{'000':'请选择成果类别','001':'获奖','002':'科研项目','003':'论文','004':'专利','005':'专著教材'}"
								listKey="key" listValue="value" name="achieveType">
							</s:select>
						</td>
					</tr>
					<tr>
						<td>
							学院类别
						</td>
						<td>
							<s:select
								list="#{0:'请选择学院类别',1:'材化学院',2:'建测学院',3:'机电学院',4:'资源与环境工程学院',5:'冶金与化学工程学院',6:'电气工程与自动化学院',7:'信息工程学院',8:'文法学院',9:'理学院',10:'材料科学与工程学院',11:'经济管理学院',12:'外语外贸学院',13:'稀土学院',14:'应用科学学院',15:'软件学院'}"
								listKey="key" listValue="value" name="collegeType">
							</s:select>
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
	<script type="text/javascript">
		<c:if test="${requestScope.notCriter == 'not criterion'}">
			alert('开始时间不能大于结束时间！');
		</c:if>
	</script>
</html>