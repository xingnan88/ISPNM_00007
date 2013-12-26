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
			//���ύ��ťʱ����������Ƿ�Ϊ��
			function check_data() {
				if(updateAchieveForm.achieveName.value.length==0){
			  		alert("����ĳɹ�����Ϊ�գ����������룡");
			  		return false;
				}
				else if(updateAchieveForm.author.value.length==0){
			  		alert("���������Ϊ�գ����������룡");
			  		return false;
				}
				else if(updateAchieveForm.achieveTime.value.length==0){
			  		alert("����ķ�������Ϊ�գ����������룡");
			  		return false;
				}
				else if(updateAchieveForm.publication.value.length==0){
			  		alert("����ķ������������Ϊ�գ����������룡");
			  		return false;
				}
				else if(updateAchieveForm.inputReprint.value.length==0){
			  		alert("�����¼��ת�����Ϊ�գ����������룡");
			  		return false;
				}
				else return true;	
			}
		</script>
		<script type="text/javascript">
		window.onload=function()//��window��onload�¼������������ϵ�ʱ��
		{
			var myArray = "${requestScope.achieveType}";
			var array = myArray.split("");
		    var cbs = document.getElementsByName("achieveType");
		    for(var i = 0; i < cbs.length; i++) {
		    	for(var j = 0; j < array.length; j++) {
		    		 if(cbs[i].value==array[j])
        				cbs[i].checked=true;
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
						�޸ĳɹ�
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
					�޸�������Ϣ
				</div>
				<table style="width: 100%;" id="baseInfo" cellpadding="0"
					cellspacing="0">
					<tr>
						<s:hidden name="achieveId" value="%{achieve.achieveId}" />
						<s:hidden name="manId" value="%{achieve.manId}" />
						<td align="right">
							�ɹ���ţ�
						</td>
						<td style="width: 80%">
							<s:label name="achieveId" value="%{achieve.achieveId}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							�ɹ����ƣ�
						</td>
						<td>
							<s:label name="achieveName" value="%{achieve.achieveName}" />
							<s:hidden name="achieveName" value="%{achieve.achieveName}"></s:hidden>
							<s:hidden name="achieveTyp" value="%{achieve.achieveType}"></s:hidden>
						</td>
					</tr>
					<tr>
						<td align="right">
							���ߣ�
						</td>
						<td>
							<s:textfield name="author" value="%{achieve.author}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							�������ڣ�
						</td>
						<td>
							<s:textfield name="achieveTime" value="%{achieve.achieveTime}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							������������ƣ�
						</td>
						<td>
							<s:textfield name="publication" value="%{achieve.publication}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							¼��ת�������
						</td>
						<td>
							<s:textfield name="inputReprint" value="%{achieve.inputReprint}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							�������
						</td>
						<td>
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="1" name="achieveType" />
							EI &nbsp;&nbsp;
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="2" name="achieveType" />
							SCI &nbsp;&nbsp;
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="3" name="achieveType" />
							ISTP &nbsp;&nbsp;
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="4" name="achieveType" />
							�����ڿ� &nbsp;&nbsp;
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="5" name="achieveType" />
							һ������
						</td>
					</tr>
					<tr>
						<td align="right">
							ѧԺ���
						</td>
						<td>
							<s:select list="#{0:'��ѡ������ѧԺ',1:'�Ļ�ѧԺ',2:'����ѧԺ',3:'����ѧԺ',4:'��Դ�뻷������ѧԺ',5:'ұ���뻯ѧ����ѧԺ',6:'�����������Զ���ѧԺ',7:'��Ϣ����ѧԺ',8:'�ķ�ѧԺ',9:'��ѧԺ',10:'���Ͽ�ѧ�빤��ѧԺ',11:'���ù���ѧԺ',12:'������óѧԺ',13:'ϡ��ѧԺ',14:'Ӧ�ÿ�ѧѧԺ',15:'���ѧԺ'}" listKey="key"
								listValue="value" id="collegeType" name="collegeType">
							</s:select>
						</td>
					</tr>
					<tr>
						<td align="right">
							����ժҪ��
						</td>
						<td>
							<textarea style="width: 70%; height: 100px;"
								name="chineseAbstract"><s:property value="%{achieve.chineseAbstract}" /></textarea>
						</td>
					</tr>
					<tr>
						<td align="right">
							��ע��
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
			alert('��Ա�����ظ���');
		</c:if>
	</script>
</html>