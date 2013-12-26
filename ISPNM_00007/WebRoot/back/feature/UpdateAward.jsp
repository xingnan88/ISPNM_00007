<%@ page language="java" pageEncoding="gbk"%>
<%@ page import="java.text.*,java.util.*;" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<% 
Calendar cal = Calendar.getInstance(); 
SimpleDateFormat formatter = new SimpleDateFormat("yyyy"); 
String curr_date = formatter.format(cal.getTime());
int last1 = Integer.parseInt(curr_date);
int first1 = last1 - 10;
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
				if(updateAchieveForm.achieveName.value.length==0){
			  		alert("输入的项目名称为空，请重新输入！");
			  		return false;
				}
				else if(updateAchieveForm.author.value.length==0){
			  		alert("输入的完成人为空，请重新输入！");
			  		return false;
				}
				else if(updateAchieveForm.achieveClass.value.length==0){
			  		alert("输入的获奖时间为空，请重新输入！");
			  		return false;
				}
				else if(updateAchieveForm.achieveSubject.value.length==0){
			  		alert("输入的获奖名称为空，请重新输入！");
			  		return false;
				}
				else return true;	
			}
		</script>
		<script type="text/javascript">
		window.onload=function()//用window的onload事件，窗体加载完毕的时候
		{
			var myArray = "${requestScope.achieveType}";
			var cbs = document.getElementById("achieveType");
		    for(var i = 0; i < cbs.length; i++) {
		    	if(cbs[i].value==myArray){
		    		cbs[i].selected=true;
		    	}
		    }
		    
		    var myArray2 = "${requestScope.collegeType}";
		    var cbs2 = document.getElementById("collegeType");
		    for(var i = 0; i < cbs2.length; i++) {
		    	if(cbs2[i].value==myArray2){
		    		cbs2[i].selected=true;
		    	}
		    }
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
						修改成果
					</div>
				</td>
				<td width="17" valign="top">
					<img src="<%=basePath%>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent" style="width:95%">
			<s:form name="updateAchieveForm" onsubmit="return check_data()"
				action="UpdateAchieve.action?page=1" theme="simple" method="post">
				<div id="title"
					style="width:100%;padding: 7px; text-align: center; border: 1px solid rgb(10, 100, 130);">
					<img src="<%=basePath%>images/set2.gif" style="vertical-align: top;" />
					修改获奖信息
				</div>
				<table style="width: 100%;" id="baseInfo" cellpadding="0"
					cellspacing="0">
					<tr>
						<s:hidden name="achieveId" value="%{achieve.achieveId}" />
						<s:hidden name="manId" value="%{achieve.manId}" />
						<td align="right">
							项目编号：
						</td>
						<td style="width: 80%">
							<s:label name="achieveId" value="%{achieve.achieveId}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							项目名称：
						</td>
						<td>
							<s:label name="achieveName" value="%{achieve.achieveName}" />
							<s:hidden name="achieveName" value="%{achieve.achieveName}"></s:hidden>
							<s:hidden name="achieveTyp" value="%{achieve.achieveType}"></s:hidden>
						</td>
					</tr>
					<tr>
						<td align="right">
							完成人：
						</td>
						<td>
							<s:textfield name="author" value="%{achieve.author}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							获奖时间：
						</td>
						<td>
							<select id="staYear" name="staYear">
								<option value="${requestScope.staYear }" selected>
									${requestScope.staYear }
								</option>
								<option value="--">
									--
								</option>
								<s:bean name="org.apache.struts2.util.Counter" id="counter">
									<s:param name="first"><%=first1%></s:param>
									<s:param name="last"><%=last1%></s:param>
									<s:iterator>
										<option value="<s:property />">
											<s:property />
										</option>
									</s:iterator>
								</s:bean>
							</select>
							年
							<select id="staMonth" name="staMonth">
								<option value="${requestScope.staMonth }" selected>
									${requestScope.staMonth }
								</option>
								<option value="--">
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
							月
						</td>
					</tr>
					<tr>
						<td align="right">
							获奖名称：
						</td>
						<td>
							<s:textfield name="awardName" value="%{achieve.awardName}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							获奖等级：
						</td>
						<td>
							<s:textfield name="awardGrade" value="%{achieve.awardGrade}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							获奖类别：
						</td>
						<td>
							<s:select list="#{'001000':'请选择科研类别','001001':'科研成果','001002':'教学成果'}" listKey="key"
								listValue="value" id="achieveType" name="achieveType">
							</s:select>
						</td>
					</tr>
					<tr>
						<td align="right">
							学院类别：
						</td>
						<td>
							<s:select list="#{0:'请选择所属学院',1:'材化学院',2:'建测学院',3:'机电学院',4:'资源与环境工程学院',5:'冶金与化学工程学院',6:'电气工程与自动化学院',7:'信息工程学院',8:'文法学院',9:'理学院',10:'材料科学与工程学院',11:'经济管理学院',12:'外语外贸学院',13:'稀土学院',14:'应用科学学院',15:'软件学院'}" listKey="key"
								listValue="value" id="collegeType" name="collegeType">
							</s:select>
						</td>
					</tr>
					<tr>
						<td align="right">
							中文摘要：
						</td>
						<td>
							<textarea style="width: 70%; height: 100px;"
								name="chineseAbstract"><s:property value="%{achieve.chineseAbstract}" /></textarea>
						</td>
					</tr>
					<tr>
						<td align="right">
							备注：
						</td>
						<td>
							<textarea style="width: 70%; height: 100px;" name="remark"><s:property value="%{achieve.remark}" /></textarea>
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
		<c:if test="${requestScope.input_error == 'input error'}">
			alert('请先输入开始年份！');
		</c:if>
	</script>
</html>