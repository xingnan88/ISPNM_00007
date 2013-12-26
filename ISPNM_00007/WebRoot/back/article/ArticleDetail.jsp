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
		<link type="text/css"
			href="<%=basePath%>jquery-ui/css/start/jquery-ui-1.8.15.custom.css"
			rel="stylesheet" />
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-1.6.2.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-ui-1.8.15.custom.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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
					<img src="<%=basePath %>images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="<%=basePath %>images/content-bg.gif">
					<div class="titlebt">
						论文详情
					</div>
				</td>
				<td width="17" valign="top">
					<img src="<%=basePath %>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent" style="width:95%">
			<div id="title"
				style="width:100%;padding: 7px; text-align: center; border: 1px solid rgb(10, 100, 130);">
				<img src="<%=basePath %>images/st.png" style="vertical-align: top;" />
			</div>
			<div style="margin: 0px; width: 100%">
				<a href="DeleteArticle.action?articleId=<s:property value="article.articleId" />&page=1" onclick="return delete_confirm()" class="opera">删除信息</a>
				<a href="BeforeUpdateArticle?articleId=<s:property value="article.articleId" />"
					class="opera">修改信息</a>
				<a href="GetArtYear!getartyearadd.action" class="opera">添加信息</a>
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
							论文编号：
						</td>
						<td>
							<s:property value="article.articleId" />
						</td>
					</tr>
					<tr>
						<td align="right">
							篇名：
						</td>
						<td>
							<s:property value="article.articleName" />
						</td>
					</tr>
					<tr>
						<td align="right">
							作者：
						</td>
						<td>
							<s:property value="article.author" />
						</td>
					</tr>
					<tr>
						<td align="right">
							年卷期：
						</td>
						<td>
							<s:property value="article.annualVolume" />
						</td>
					</tr>
					<tr>
						<td align="right">
							机构：
						</td>
						<td>
							<s:property value="article.mechanism" />
						</td>
					</tr>
					<tr>
						<td align="right">
							关键字：
						</td>
						<td>
							<s:property value="article.keyWord" />
						</td>
					</tr>
					<tr>
						<td align="right">
							中文摘要：
						</td>
						<td>
							<s:property value="article.chineseAbstract" />
						</td>
					</tr>
					<tr>
						<td align="right">
							期刊名：
						</td>
						<td>
							<s:property value="article.journalName" />
						</td>
					</tr>
					<tr>
						<td align="right">
							CN：
						</td>
						<td>
							<s:property value="article.cn" />
						</td>
					</tr>
					<tr>
						<td align="right">
							ISSN：
						</td>
						<td>
							<s:property value="article.issn" />
						</td>
					</tr>
					<tr>
						<td align="right">
							分类号：
						</td>
						<td>
							<s:property value="article.classId" />
						</td>
					</tr>
					<tr>
						<td align="right">
							类别号：
						</td>
						<td>
							<s:property value="article.classCode" />
						</td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>