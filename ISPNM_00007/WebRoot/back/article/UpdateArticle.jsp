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
			function check_data() {
			//���ύ��ťʱ����������Ƿ�Ϊ��
			   if(updateArticleForm.articleName.value.length==0){
			  		alert("�����ƪ��Ϊ�գ����������룡");
			  		return false;
				}
				else if(updateArticleForm.author.value.length==0){
			  		alert("���������Ϊ�գ����������룡");
			  		return false;
				}
				else if(updateArticleForm.annualVolume.value.length==0){
			  		alert("����������Ϊ�գ����������룡");
			  		return false;
				}
				else if(updateArticleForm.keyWord.value.length==0){
			  		alert("����Ĺؼ���Ϊ�գ����������룡");
			  		return false;
				}
				else if(updateArticleForm.chineseAbstract.value.length==0){
			  		alert("���������ժҪΪ�գ����������룡");
			  		return false;
				}
				else if(updateArticleForm.journalName.value.length==0){
			  		alert("������ڿ���Ϊ�գ����������룡");
			  		return false;
				}
				else if(updateArticleForm.cn.value.length!=0) {
					var cn = document.updateArticleForm.cn.value;
					if(cn.search("[0-9]{2}-[0-9]{4}/[a-zA-Z]{1,}") != 0) {
						alert("��������ȷ��CN��ʽ��");
						document.updateArticleForm.cn.select();
						return false;
					}
				}
				else if(updateArticleForm.issn.value.length!=0) {
					var issn = document.updateArticleForm.issn.value;
					if(issn.search("[0-9]{4}-[0-9]{4}") != 0) {
						alert("��������ȷ��ISSN��ʽ��");
						document.updateArticleForm.issn.select();
						return false;
					}
				}
				else if(updateArticleForm.classId.value.length==0){
			  		alert("����ķ����Ϊ�գ����������룡");
			  		return false;
				}
				else if(updateArticleForm.classCode.value.length==0){
			  		alert("����ķ���Ϊ�գ����������룡");
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
						�޸�����
					</div>
				</td>
				<td width="17" valign="top">
					<img src="<%=basePath %>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent" style="width:95%">
			<s:form name="updateArticleForm" action="UpdateArticle.action?page=1"
				theme="simple" method="post">
				<div id="title"
					style="width:100%;padding: 7px; text-align: center; border: 1px solid rgb(10, 100, 130);">
					<img src="<%=basePath %>images/set2.gif" style="vertical-align: top;" />
					�޸�������Ϣ
				</div>
				<table style="width: 100%;" id="baseInfo" cellpadding="0"
					cellspacing="0">
					<tr>
						<s:hidden name="articleId" value="%{article.articleId}" />
						<s:hidden name="manId" value="%{article.manId}" />
						<td align="right">
							���ı�ţ�
						</td>
						<td style="width: 80%">
							<s:label name="articleId" value="%{article.articleId}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							ƪ����
						</td>
						<td>
							<s:textfield name="articleName" value="%{article.articleName}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							���ߣ�
						</td>
						<td>
							<s:textfield name="author" value="%{article.author}"
								title="����������ÿո����!" />
						</td>
					</tr>
					<tr>
						<td align="right">
							����ڣ�
						</td>
						<td>
							<s:textfield name="annualVolume" value="%{article.annualVolume}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							������
						</td>
						<td>
							<textarea style="width: 70%; height: 100px;" name="mechanism"><s:property value="%{article.mechanism}" /></textarea>
						</td>
					</tr>
					<tr>
						<td align="right">
							�ؼ��ʣ�
						</td>
						<td>
							<s:textfield name="keyWord" value="%{article.keyWord}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							����ժҪ��
						</td>
						<td>
							<textarea style="width: 70%; height: 100px;" name="chineseAbstract"><s:property value="%{article.chineseAbstract}" /> </textarea>
						</td>
					</tr>
					<tr>
						<td align="right">
							�ڿ�����
						</td>
						<td>
							<s:textfield name="journalName" value="%{article.journalName}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							CN��
						</td>
						<td>
							<s:textfield name="cn" value="%{article.cn}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							ISSN��
						</td>
						<td>
							<s:textfield name="issn" value="%{article.issn}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							����ţ�
						</td>
						<td>
							<s:textfield name="classId" value="%{article.classId}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							����ࣺ
						</td>
						<td>
							<s:textfield name="classCode" value="%{article.classCode}" />
						</td>
					</tr>
					<tr>
						<td align="right">
							ȫ�ģ�
						</td>
						<td>
							<s:textfield name="fullArticle" value="%{article.fullArticle}" />
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
		<c:if test="${requestScope.notMatch == 'class not matching'}">
			alert('��Ա�����Ͳ�ƥ�䣡');
		</c:if>
		<c:if test="${requestScope.illegalChar == 'Illegal Char'}">
			alert('�����к��зǷ��ַ���');
		</c:if>
	</script>
</html>