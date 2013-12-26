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
				//��ɾ������ʱ������ȷ�϶Ի���
   				if(confirm("ȷ��Ҫɾ����")){
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
						ר������
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
				<a href="DeleteAchieve.action?achieveId=<s:property value="achieve.achieveId" />&achieveType=<s:property value="achieve.achieveType" />&page=1" onclick="return delete_confirm()" class="opera">ɾ����Ϣ</a>
				<a href="BeforeUpdateAchieve?achieveId=<s:property value="achieve.achieveId" />&achieveType=<s:property value="achieve.achieveType" />"
					class="opera">�޸���Ϣ</a>
				<a href="AddAchieve.jsp" class="opera">�����Ϣ</a>
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
							�ɹ���ţ�
						</td>
						<td>
							<s:property value="achieve.achieveId" />
						</td>
					</tr>
					<tr>
						<td align="right">
							��Ŀ���ƣ�
						</td>
						<td>
							<s:property value="achieve.achieveName" />
						</td>
					</tr>
					<tr>
						<td align="right">
							�����ˣ�
						</td>
						<td>
							<s:property value="achieve.author" />
						</td>
					</tr>
					<tr>
						<td align="right">
							ʱ�䣺
						</td>
						<td>
							<s:property value="achieve.achieveTime" />
						</td>
					</tr>
					<tr>
						<td align="right">
							ר�����
						</td>
						<td>
							<s:property value="achieve.patentClass" />
						</td>
					</tr>
					<tr>
						<td align="right">
							��׼��λ��
						</td>
						<td>
							<s:property value="achieve.approvalUnit" />
						</td>
					</tr>
					<tr>
						<td align="right">
							֤��ţ�
						</td>
						<td>
							<s:property value="achieve.certNo" />
						</td>
					</tr>
					<tr>
						<td align="right">
							ѧԺ���
						</td>
						<td>
							<s:if test="achieve.collegeType==1">
								�Ļ�ѧԺ
							</s:if>
							<s:if test="achieve.collegeType==2">
								����ѧԺ
							</s:if>
							<s:if test="achieve.collegeType==3">
								����ѧԺ
							</s:if>
							<s:if test="achieve.collegeType==4">
								��Դ�뻷������ѧԺ
							</s:if>
							<s:if test="achieve.collegeType==5">
								ұ���뻯ѧ����ѧԺ
							</s:if>
							<s:if test="achieve.collegeType==6">
								�����������Զ���ѧԺ
							</s:if>
							<s:if test="achieve.collegeType==7">
								��Ϣ����ѧԺ
							</s:if>
							<s:if test="achieve.collegeType==8">
								�ķ�ѧԺ
							</s:if>
							<s:if test="achieve.collegeType==9">
								��ѧԺ
							</s:if>
							<s:if test="achieve.collegeType==10">
								���Ͽ�ѧ�빤��ѧԺ
							</s:if>
							<s:if test="achieve.collegeType==11">
								���ù���ѧԺ
							</s:if>
							<s:if test="achieve.collegeType==12">
								������óѧԺ
							</s:if>
							<s:if test="achieve.collegeType==13">
								ϡ��ѧԺ
							</s:if>
							<s:if test="achieve.collegeType==14">
								Ӧ�ÿ�ѧѧԺ
							</s:if>
							<s:if test="achieve.collegeType==15">
								���ѧԺ
							</s:if>
							<s:if test="achieve.collegeType==0">
								��������ѧԺ
							</s:if>
						</td>
					</tr>
					<tr>
						<td align="right">
							����ժҪ��
						</td>
						<td>
							<s:property value="achieve.chineseAbstract" />
						</td>
					</tr>
					<tr>
						<td align="right">
							��ע��
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