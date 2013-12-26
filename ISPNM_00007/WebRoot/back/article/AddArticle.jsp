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
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<script type="text/javascript">
			function check_data() {
				//按提交按钮时，检查数据是否为空
				if(addArticleForm.articleName.value.length==0){
			  		alert("输入的篇名为空，请重新输入！");
			  		return false;
				}
				else if(addArticleForm.author.value.length==0){
			  		alert("输入的作者为空，请重新输入！");
			  		return false;
				}
				else if(addArticleForm.keyWord.value.length==0){
			  		alert("输入的关键词为空，请重新输入！");
			  		return false;
				}
				else if(addArticleForm.chineseAbstract.value.length==0){
			  		alert("输入的中文摘要为空，请重新输入！");
			  		return false;
				}
				else if(addArticleForm.journalName.value.length==0){
			  		alert("输入的期刊名为空，请重新输入！");
			  		return false;
				}
				else if(addArticleForm.cn.value.length!=0) {
					var cn = document.addArticleForm.cn.value;
					if(cn.search("[0-9]{2}-[0-9]{4}/[a-zA-Z]{1,}") != 0) {
						alert("请输入正确的CN格式！");
						document.addArticleForm.cn.select();
						return false;
					}
				}
				else if(addArticleForm.issn.value.length!=0) {
					var issn = document.addArticleForm.issn.value;
					if(issn.search("[0-9]{4}-[0-9]{4}") != 0) {
						alert("请输入正确的ISSN格式！");
						document.addArticleForm.issn.select();
						return false;
					}
				}
				else if(addArticleForm.classId.value.length==0){
			  		alert("输入的分类号为空，请重新输入！");
			  		return false;
				}
				else if(addArticleForm.classCode.value.length==0){
			  		alert("输入的分类为空，请重新输入！");
			  		return false;
				}
				
				if(addArticleForm.sltYear.value.length==4){
			  		if(isNaN(document.getElementById("sltMonth").value)){ 
						alert("期号必须是数字！") 
						document.addArticleForm.sltMonth.focus(); 
						return false; 
					}
					if(isNaN(document.getElementById("staPage").value)){ 
						alert("页号必须是数字！") 
						document.addArticleForm.staPage.focus(); 
						return false; 
					}
					if(isNaN(document.getElementById("endPage").value)){ 
						alert("页号必须是数字！") 
						document.addArticleForm.endPage.focus(); 
						return false; 
					}
					if(!isNaN(document.getElementById("staPage").value) && !isNaN(document.getElementById("endPage").value)) {
						if((parseInt(document.addArticleForm.staPage.value)) > (parseInt(document.addArticleForm.endPage.value))) {
							alert("开始页必须不大于结束页!");
							return false;
						}
					}
				}
				if(addArticleForm.annualVolume.value.length==0){
			  		alert("输入的年卷期为空，请重新输入！");
			  		return false;
				}
				else return true;	
			}
			function range(){
				var ran = false;
				window.location.href="GetArtYear!getartyearadd.action?ran=" + ran; 
			}
			function specific(){
				var ran = true;
				window.location.href="GetArtYear!getartyearadd.action?ran=" + ran; 
			}
		</script>
	</head>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top">
					<img src="<%=basePath%>images/left-top-right.gif" width="17"
						height="29" />
				</td>
				<td valign="top" background="<%=basePath%>images/content-bg.gif">
					<div class="titlebt">
						添加论文
					</div>
				</td>
				<td width="17" valign="top">
					<img src="<%=basePath%>images/nav-right-bg.gif" width="17"
						height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent" style="width:95%">
			<s:form name="addArticleForm" onsubmit="return check_data()"
				action="AddArticle!addArticle.action?page=1" theme="simple" method="post">
				<div id="title"
					style="width:100%;padding: 7px; text-align: center; border: 1px solid rgb(10, 100, 130);">
					<img src="<%=basePath%>images/icon2_004.png"
						style="vertical-align: top;" />
					添加论文信息
				</div>
				<table style="width: 100%;" id="baseInfo" cellpadding="0"
					cellspacing="0">
					<tr>
						<td style="width: 30%;">
							篇名
						</td>
						<td>
							<s:textfield name="articleName" tooltip="必须输入" />
						</td>
					</tr>
					<tr>
						<td>
							作者
						</td>
						<td>
							<s:textfield name="author" />
						</td>
					</tr>
					<tr>
						<td>
							年卷期
						</td>
						<td>
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
								年&nbsp;<input style="width: 25px;" id="sltMonth" name="sltMonth" />
								期&nbsp;从<input style="width: 25px;" id="staPage" name="staPage" />
								页到<input style="width: 25px;" id="endPage" name="endPage" />
								页&nbsp;&nbsp;
												<a href="#" onclick="range()">任意格式请点击</a>
							</s:if>
							<s:if test="#request.ran == false">
								<input style="width: 250px;" type="text" name="annualVolume" />
								&nbsp;&nbsp;
								<a href="#" onclick="specific()">标准格式请点击</a>
							</s:if>
						</td>
					</tr>
					<tr>
						<td>
							机构
						</td>
						<td>
							<s:textarea style="width: 70%;height: 100px;" name="mechanism" />
						</td>
					</tr>
					<tr>
						<td>
							关键词
						</td>
						<td>
							<s:textfield name="keyWord" />
						</td>
					</tr>
					<tr>
						<td>
							中文摘要
						</td>
						<td>
							<s:textarea style="width: 70%;height: 100px;"
								name="chineseAbstract" />
						</td>
					</tr>
					<tr>
						<td>
							期刊名
						</td>
						<td>
							<s:textfield name="journalName" />
						</td>
					</tr>
					<tr>
						<td>
							CN
						</td>
						<td>
							<s:textfield name="cn" />
						</td>
					</tr>
					<tr>
						<td>
							ISSN
						</td>
						<td>
							<s:textfield name="issn" />
						</td>
					</tr>
					<tr>
						<td>
							分类号
						</td>
						<td>
							<s:textfield name="classId" />
						</td>
					</tr>
					<tr>
						<td>
							大分类
						</td>
						<td>
							<s:textfield name="classCode" />
						</td>
					</tr>
					<tr>
						<td>
							全文链接
						</td>
						<td>
							<s:textfield name="fullArticle" />
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
	<script type="text/javascript" runat="server">
		<c:if test="${requestScope.authorRe == 'author repeat'}">
			alert('人员不能重复！');
		</c:if>
		<c:if test="${requestScope.notMatch == 'class not matching'}">
			alert('人员与类型不匹配！');
		</c:if>
	</script>
</html>