<%@ page language="java" pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
	<head>
		<title>矿冶论文库</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link REL="stylesheet" href="<%=basePath %>front/article/css/home.css"
			type="text/css">
		<script type="text/javascript">
			function check_data() {
			//按提交按钮时，检查数据是否为空
			   if(seniorSearchForm.keyWord.value.length==0){
			  		return false;
				}
				return true;
			}
			function simple_search() {
				window.location.href="SearchArticle!searchArticleFore.action";
			}
			function senior_search() {
				window.location.href="GetArtYear!getartyearFore.action";
			}
		</script>
		<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
	</head>
	<body>
		<table width="99%" border="0" cellpadding="0" cellspacing="0"
			align="center">
			<tr>
				<td height="6"></td>
			</tr>
		</table>
		<table width="610" cellpadding="0" cellspacing="0"
			background="<%=basePath %>front/article/images/3-bg.jpg"
			style="BORDER: #B9B9B9 1px solid; background-repeat: repeat-x"
			align="center">
			<tr>
				<td colspan="2">
					<table width="710 cellpadding=" 0" cellspacing="0" height="35"
						style="BORDER-bottom: #B9B9B9 1px solid;">
						<tr>
							<td width="12"></td>
							<td width="500" style="font-size: 14px; color: FF5100">
								<strong> 论文信息 </strong>
							</td>
							<td>
								&nbsp;
							</td>
							<td width="100">
								共
								<font color=red>${pageBean.allRow }</font>条信息
							</td>
						</tr>
					</table>
				</td>
			</tr>			
			<tr>
				<td align="right" valign="middle" colspan="2">
					<form name="seniorSearchForm"
						action="SearchArticle!searchArticleFore.action?page=1"
						onsubmit="return check_data()">
						<label style="font-size: 12px;">
							查找关键字：
						</label>
						<img src="<%=basePath %>images/pic7.gif" />
						<input style="width: 150px;" type="text" name="keyWord" />
						<input type="hidden" name="page" value="1" />
						<input class="button"
							style="background-image: url(<%=basePath %>images/yimgbt.gif);"
							type="submit" value="  搜 索" onclick="return simple_search();" />
						<input type="submit" class="button" value="高级搜索"
							style="background-image: url(<%=basePath %>images/yimgbt.gif);"
							onclick="return senior_search();" />
					</form>
				</td>
			</tr>
			<tr>
				<td width="710" align="center" valign="top">
					<table width="700" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<s:if test="pageBean.list.size() == 0">
							<tr>
								<td colspan="4" align="center">
									<font size="4" color="red">
										搜索不到匹配的内容!
									</font>
								</td>
							</tr>
						</s:if>
						<s:if test="pageBean.list.size() != 0">
							<s:iterator id="article" value="pageBean.list" status="art">
								<tr onMouseOut="this.bgColor=''" onMouseOver="this.bgColor='FFFFCC'">
									<td width="20" height="24" align="center" valign="middle"
										class="style3">
										<img src="<%=basePath %>front/article/images/dit1.gif">
									</td>
									<td align="left" valign="middle" style="color: 525152">
										<span
											onMouseOver="this.style.color='#dd0000',this.style.cursor='hand'"
											onMouseOut="this.style.color=''"
											title="<s:property value="#article.articleName" />">
											<a
											href="indexArticleDetail.jsp?articleId=<s:property value="#article.articleId"/>&name=<s:property value="#article.articleName"/>"
											target="_blank"> <s:property
													value="#article.articleName" />
										</a> 
										<input type="hidden" name="keyWord" value="${requestScope.keyWord }" />
										</span>
									</td>
									<td width="130" align="right" style="color: 525152">
										<font color="red">[<s:property value="#article.annualVolume" />]</font>
									</td>
								</tr>
							</s:iterator>
						</s:if>
						<tr>
							<td width="20" height="12" align="center"></td>
							<td colspan="4" align="center">
								&nbsp;
							</td>
						</tr>
					</table>
				</td>
				<td width="7" valign="bottom"></td>
			</tr>
			<tr bgcolor="#E9E9E9">
				<td height="1" colspan="2"></td>
			</tr>
			<tr>
				<td height="30" align="center" valign="middle" colspan="2">
					<s:property value="pageBean.ctrlInfo" escape="false" />
				</td>
			</tr>
		</table>
	</body>
</html>
