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
			//按提交按钮时，检查数据是否为空
			function check_data() {
				if(addAchieveForm.achieveName.value.length==0){
			  		alert("输入的成果名称为空，请重新输入！");
			  		return false;
				}
				else if(addAchieveForm.author.value.length==0){
			  		alert("输入的作者为空，请重新输入！");
			  		return false;
				}
				else if(addAchieveForm.achieveTime.value.length==0){
			  		alert("输入的发表日期为空，请重新输入！");
			  		return false;
				}
				else if(addAchieveForm.publication.value.length==0){
			  		alert("输入的发表刊物、会议名称为空，请重新输入！");
			  		return false;
				}
				else if(addAchieveForm.inputReprint.value.length==0){
			  		alert("输入的录入转载情况为空，请重新输入！");
			  		return false;
				}
				else return true;	
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
						添加论文
					</div>
				</td>
				<td width="17" valign="top">
					<img src="<%=basePath %>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent" style="width:95%">
			<s:form name="addAchieveForm" onsubmit="return check_data()" action="AddAchieve!addAchieve.action?page=1"
				theme="simple" method="post">
				<div id="title"
					style="width:100%;padding: 7px; text-align: center; border: 1px solid rgb(10, 100, 130);">
					<img src="<%=basePath %>images/set2.gif" style="vertical-align: top;" />
					添加论文信息
				</div>
				<table style="width: 100%;" id="baseInfo" cellpadding="0"
					cellspacing="0">
					<tr>
						<td align="right" width="30%">
							成果名称：
						</td>
						<td style="width: 77%">
							<s:textfield name="achieveName" />
							<input type="hidden" name="achieveTy" value="<s:property value="#parameters.achieveTy[0]" />" />
						</td>
					</tr>
					<tr>
						<td align="right">
							作者：
						</td>
						<td>
							<s:textfield name="author" />
						</td>
					</tr>
					<tr>
						<td align="right">
							发表日期：
						</td>
						<td>
							<s:textfield name="achieveTime" />
						</td>
					</tr>
					<tr>
						<td align="right">
							发表刊物、会议名称：
						</td>
						<td>
							<s:textfield name="publication" />
						</td>
					</tr>
					<tr>
						<td align="right">
							录入转载情况：
						</td>
						<td>
							<s:textfield name="inputReprint" />
						</td>
					</tr>
					<tr>
						<td align="right">
							论文类别：
						</td>
						<td>
							<input style="width: 15px;border-style:none;" type="checkbox" value="1" name="achieveType" />EI
							&nbsp;&nbsp;
							<input style="width: 15px;border-style:none;" type="checkbox" value="2" name="achieveType" />SCI
							&nbsp;&nbsp;
							<input style="width: 15px;border-style:none;" type="checkbox" value="3" name="achieveType" />ISTP
							&nbsp;&nbsp;
							<input style="width: 15px;border-style:none;" type="checkbox" value="4" name="achieveType" />核心期刊
							&nbsp;&nbsp;
							<input style="width: 15px;border-style:none;" type="checkbox" value="5" name="achieveType" />一般论文
						</td>
					</tr>
					<tr>
						<td align="right">
							学院类别：
						</td>
						<td>
							<s:select
								list="#{0:'请选择学院类别',1:'材化学院',2:'建测学院',3:'机电学院',4:'资源与环境工程学院',5:'冶金与化学工程学院',6:'电气工程与自动化学院',7:'信息工程学院',8:'文法学院',9:'理学院',10:'材料科学与工程学院',11:'经济管理学院',12:'外语外贸学院',13:'稀土学院',14:'应用科学学院',15:'软件学院'}"
								listKey="key" listValue="value" name="collegeType">
							</s:select>
						</td>
					</tr>
					<tr>
						<td align="right">
							中文摘要：
						</td>
						<td>
							<textarea style="width: 70%; height: 100px;" name="chineseAbstract"></textarea>
						</td>
					</tr>
					<tr>
						<td align="right">
							备注：
						</td>
						<td>
							<textarea style="width: 70%; height: 100px;" name="remark"></textarea>
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
		<c:if test="${requestScope.authorRe == 'author repeat'}">
			alert('人员不能重复！');
		</c:if>
	</script>
</html>