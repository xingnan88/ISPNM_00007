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
		<link href="<%=basePath%>back/article/css/skin.css" rel="stylesheet"
			type="text/css" />
		<link href="<%=basePath%>back/article/css/myStyle.css"
			rel="stylesheet" type="text/css" />
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<style type="text/css">
<!--
A:visited {
	FONT-SIZE: 9pt; COLOR: #606060; TEXT-DECORATION: none
}
A:active {
	FONT-SIZE: 9pt; TEXT-DECORATION: none
}
A:hover {
	COLOR: #EE7313 ; TEXT-DECORATION: underline
}
span {
	display:inline-block;
}

#toCheck a {
	margin: 5px 0px 2px 30px;
}

.likeBorder {
	width: 100%;
	height: 1px;
	background-color: rgb(102, 170, 204);
}

.headBorder {
	background-color: white;
	margin: 5px 0 5px 0;
	padding: 4px 0 4px 0;
	border-bottom: 2px solid rgb(102, 170, 204);
	border-top: 2px solid rgb(102, 170, 204)
}

.lineDiv0 {
	width: 100%;
	height: 3px;
	background-color: #f2f6ff;
}

.lineDiv1 {
	width: 100%;
	height: 3px;
	background-color: #ffffff;
}
-->
</style>
	<script type="text/javascript">
			function check_all() {
			    var checkboxs=document.getElementsByName("checkedId");
			    for(var i=0;i<checkboxs.length;i++) {
			        var e=checkboxs[i];
			        e.checked=!e.checked;
			    }
			}
		</script>
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
			   if(seniorSearchForm.keyWord.value.length==0){
			  		return false;
				}
				return true;
			}
			function simple_search() {
				window.location.href="SearchArticle!searchArticle.action?page=1";
			}
			function senior_search() {
				window.location.href="GetArtYear!getartyear.action";
			}
			function delete_confirm() {
				//��ɾ������ʱ������ȷ�϶Ի���
   				if(confirm("ȷ��Ҫɾ����")){
  				return true;
			}else return false;	
			}
		</script>
		<script type="text/javascript">
			function valid_check() {
				var arr = document.getElementsByName('checkedId');
				for(var c=0;c<arr.length;c++) {
					if(arr[c].checked) {
						return true;
					}
				}
				alert("û��ѡ���κ����ģ�");
				return false;
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
						��������
					</div>
				</td>
				<td width="17" valign="top">
					<img src="<%=basePath %>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent" style="width:95%">
			<form name="seniorSearchForm" action="SearchArticle!searchArticle.action?page=1" onsubmit="return check_data()">
				<div id="searchDiv" style="width:100%">
					<label style="font-size: 12px;">
						���ҹؼ��ʣ�
					</label>
					<img src="<%=basePath %>images/pic7.gif" />
					<input style="width: 200px;" type="text" name="keyWord" />
					<input type="hidden" name="page" value="1" />
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input class="button"
						style="background-image: url(<%=basePath %>back/article/images/yimgbt.gif);" type="submit"
						value="  �� ��" onclick="return simple_search();"/>
						&nbsp;
					<input type="submit" class="button" value="�߼�����"
						style="background-image: url(<%=basePath %>back/article/images/yimgbt.gif);"
						onclick="return senior_search();" />
				</div>
			</form>

			<form id="listForm" action="DeleteArticleMore.action?page=1" onsubmit="valid_check()"
				method="post">
				<div id="listDiv" style="width: 100%;">
					<div class="headBorder">
						<span style="width: 150px;">���ı��</span>
						<span style="width: 300px;">ƪ��</span>
					</div>
					<div class="likeBorder"></div>
					<s:if test="pageBean.list.size() == 0">
						<tr>
							<td colspan="4" align="center">
								<font size="4" color="red">
									��������ƥ�������!<br />
								</font>
							</td>
						</tr>
					</s:if>
					<s:if test="pageBean.list.size() != 0">
						<s:iterator id="article" value="pageBean.list" status="art">
							<div style="margin-buttom: 10px;">
								<div style="height: 25px;">
									<span style="width: 130px"><input type="checkbox"
											name="checkedId" id="checkedId" 
											value='<s:property value="#article.articleId" />'
											style="width: 20px; border: none" />ID:<s:property
											value="#article.articleId" />
									</span>
									<span style="width: 450px"><a
										href="ArticleDetail!detail.action?articleId=<s:property value="#article.articleId"/>"><s:property
												value="#article.articleName" />
									<input type="hidden" name="articleName" value="${requestScope.articleName }" />
									</a>
									</span>
									<span>
									<a style="text-align:right;"
										href="BeforeUpdateArticle.action?articleId=<s:property value="#article.articleId"/>">�޸�</a>
									</span>
									<span>
									<a style="text-align:right;"
										href="DeleteArticle.action?articleId=<s:property value="#article.articleId"/>&page=1"
										 onclick="return delete_confirm()">ɾ��</a>
									</span>
								</div>
								<div class="likeBorder"></div>
							</div>
						</s:iterator>
					</s:if>
					<s:property value="pageBean.ctrlInfo" escape="false" />
					<div id="toCheck" style="background-color: white;">
						<a href="#" id="checkAll" onclick="return check_all()">ȫѡ/ȡ��</a>
						<div class="likeBorder"></div>
						<input type="image" src="<%=basePath %>images/del.jpg" class="imgButton" />
					</div>
				</div>
			</form>
		</div>
	</body>
</html>