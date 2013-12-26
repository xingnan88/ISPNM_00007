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
						�߼������ɹ�
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
					�����ɹ���Ϣ
				</div>
				<table style="width: 100%;" id="baseInfo" cellpadding="0"
					cellspacing="0">
					<tr>
						<td style="width: 30%">
							�ɹ�����
						</td>
						<td>
							<s:textfield name="achieveName" />
						</td>
					</tr>
					<tr>
						<td>
							����
						</td>
						<td>
							<s:textfield name="author" />
						</td>
					</tr>
					<tr>
						<td>
							��ɹ�ʱ��
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
												��
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
												��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" onclick="range()">���ҷ�Χ����</a>
							</s:if>
							<s:if test="#request.ran == false">
							��&nbsp;
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
												��&nbsp;��&nbsp;
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
												��
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" onclick="specific()">���Ҿ�������</a>
							</s:if>
						</td>
					</tr>
					<tr>
						<td>
							ר�����
						</td>
						<td>
							<s:textfield name="patentClass" />
						</td>
					</tr>
					<tr>
						<td>
							�ɹ����
						</td>
						<td>
							<s:select
								list="#{'000':'��ѡ��ɹ����','001':'��','002':'������Ŀ','003':'����','004':'ר��','005':'ר���̲�'}"
								listKey="key" listValue="value" name="achieveType">
							</s:select>
						</td>
					</tr>
					<tr>
						<td>
							ѧԺ���
						</td>
						<td>
							<s:select
								list="#{0:'��ѡ��ѧԺ���',1:'�Ļ�ѧԺ',2:'����ѧԺ',3:'����ѧԺ',4:'��Դ�뻷������ѧԺ',5:'ұ���뻯ѧ����ѧԺ',6:'�����������Զ���ѧԺ',7:'��Ϣ����ѧԺ',8:'�ķ�ѧԺ',9:'��ѧԺ',10:'���Ͽ�ѧ�빤��ѧԺ',11:'���ù���ѧԺ',12:'������óѧԺ',13:'ϡ��ѧԺ',14:'Ӧ�ÿ�ѧѧԺ',15:'���ѧԺ'}"
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
			alert('��ʼʱ�䲻�ܴ��ڽ���ʱ�䣡');
		</c:if>
	</script>
</html>