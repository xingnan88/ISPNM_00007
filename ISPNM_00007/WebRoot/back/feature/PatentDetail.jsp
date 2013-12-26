<%@ page language="java" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
			function delete_confirm() {
				//按删除链接时，弹出确认对话框
   				if(confirm("确认要删除吗？")){
  				return true;
			}else return false;	
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
						专利详情
					</div>
				</td>
				<td width="17" valign="top">
					<img src="<%=basePath%>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent" style="width:95%">
			<div id="title"
				style="width:100%;padding: 7px; text-align: center; border: 1px solid rgb(10, 100, 130);">
				<img src="<%=basePath%>images/st.png" style="vertical-align: top;" />
				${equipment.name}
			</div>
			<div style="margin: 0px; width: 100%">
				<a href="DeleteAchieve.action?achieveId=<s:property value="achieve.achieveId" />&achieveType=<s:property value="achieve.achieveType" />&page=1" onclick="return delete_confirm()" class="opera">删除信息</a>
				<a href="BeforeUpdateAchieve?achieveId=<s:property value="achieve.achieveId" />&achieveType=<s:property value="achieve.achieveType" />"
					class="opera">修改信息</a>
				<a href="AddAchieve.jsp" class="opera">添加信息</a>
			</div>
			<div>
				<table style="width: 100%;" id="baseInfo" cellpadding="0"
					cellspacing="0">
					<tr>
						<td style="width: 20%"></td>
						<td style="width: 80%"></td>
					</tr>
					<tr>
						<td align="right">
							成果编号：
						</td>
						<td>
							<s:property value="achieve.achieveId" />
						</td>
					</tr>
					<tr>
						<td align="right">
							项目名称：
						</td>
						<td>
							<s:property value="achieve.achieveName" />
						</td>
					</tr>
					<tr>
						<td align="right">
							申请人：
						</td>
						<td>
							<s:property value="achieve.author" />
						</td>
					</tr>
					<tr>
						<td align="right">
							时间：
						</td>
						<td>
							<s:property value="achieve.achieveTime" />
						</td>
					</tr>
					<tr>
						<td align="right">
							专利类别：
						</td>
						<td>
							<s:property value="achieve.patentClass" />
						</td>
					</tr>
					<tr>
						<td align="right">
							批准单位：
						</td>
						<td>
							<s:property value="achieve.approvalUnit" />
						</td>
					</tr>
					<tr>
						<td align="right">
							证书号：
						</td>
						<td>
							<s:property value="achieve.certNo" />
						</td>
					</tr>
					<tr>
						<td align="right">
							学院类别：
						</td>
						<td>
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
							<s:if test="achieve.collegeType==0">
								暂无所属学院
							</s:if>
						</td>
					</tr>
					<tr>
						<td align="right">
							中文摘要：
						</td>
						<td>
							<s:property value="achieve.chineseAbstract" />
						</td>
					</tr>
					<tr>
						<td align="right">
							备注：
						</td>
						<td>
							<s:property value="achieve.remark" />
						</td>
					</tr>
				</table>
			</div>
			<s:debug></s:debug>
		</div>
	</body>
</html>