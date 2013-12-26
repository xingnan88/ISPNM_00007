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
		<title>江西理工大学特色库</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link REL="stylesheet" href="<%=basePath %>front/feature/css/home.css"
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
				window.location.href="SearchAchieve!searchAchieveFore.action";
			}
			function senior_search() {
				window.location.href="GetYear!getyearFore.action";
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
<style type="text/css">
<!-- /* www.divcss5.com CSS下拉菜单实例 */
* {
	margin: 0;
	padding: 0;
	border: 0;
}

#nav {
	line-height: 16px;
	list-style-type: none;
	background: #666;
}

#nav a {
	display: block;
	width: 70px;
	text-align: center;
}

copyright www.divcss5.com divcss5
#nav a:link {

	text-decoration: none;
}

#nav a:visited {
	
	text-decoration: none;
}

#nav a:hover {
	color: #FF0000;
	text-decoration: none;
	font-weight: bold;
}

#nav li {
	float: left;
	width: 70px;
	background: #FFFCCC;
}

#nav li a:hover {
	background: #CCFCC0;
}

#nav li ul {
	line-height: 16px;
	list-style-type: none;
	text-align: left;
	left: -999em;
	width: 70px;
	position: absolute;
}

#nav li ul li {
	float: left;
	width: 70px;
	background: #CCFCC0;
}

copyright www.divcss5.com divcss5

#nav li ul a {
	display: block;
	width: 56px;
	text-align: left;
	padding-left: 24px;
	overflow: hidden;
}

#nav li ul a:link {
	
	text-decoration: none;
}

#nav li ul a:visited {
	color: #666;
	text-decoration: none;
}

#nav li ul a:hover {
	color: #FF0000;
	text-decoration: none;
	font-weight: normal;
	background: #9999F9;
	
}

copyright www.divcss5.com divcss5
#nav li:hover ul {
	left: auto;
}

#nav li.sfhover ul {
	left: auto;
}

#content {
	clear: left;
}
-->
</style>
		<script type="text/javascript">
function menuFix() {
var sfEls = document.getElementById("nav").getElementsByTagName("li");
for (var i=0; i<sfEls.length; i++) {
sfEls[i].onmouseover=function() {
this.className+=(this.className.length>0? " ": "") + "sfhover";
}
sfEls[i].onMouseDown=function() {
this.className+=(this.className.length>0? " ": "") + "sfhover";
}
sfEls[i].onMouseUp=function() {
this.className+=(this.className.length>0? " ": "") + "sfhover";
}
sfEls[i].onmouseout=function() {
this.className=this.className.replace(new RegExp("( ?|^)sfhover\\b"),
"");
}
}
}
window.onload=menuFix;
</script>
	</head>
	<body>
		<table width="99%" border="0" cellpadding="0" cellspacing="0"
			align="center">
			<tr>
				<td height="6"></td>
			</tr>
		</table>
		<table width="610" cellpadding="1" cellspacing="1"
			background="<%=basePath %>front/feature/images/3-bg.jpg"
			style="BORDER: #B9B9B9 1px solid; background-repeat: repeat-x"
			align="center">
		  	<tr>
				<td colspan="2">				
					<table width="710 cellpadding="0" cellspacing="0" height="35"
						style="BORDER-bottom: #B9B9B9 1px solid;">
						<tr>
							<td width="12"></td>
							<td width="500" style="font-size: 14px; color: FF5100">
								<strong> 成果信息 </strong>
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
		  	<tr align="center">
				<td colspan="2">
					<ul id="nav">
						<li>
							<a href="AchieveList!listFore.action?page=1">全部</a>
						</li>
						<li>
							<a href="#">获奖</a>
							<ul>
								<li>
									<a href="AchieveList!achievelistFore.action?achieveType=001001&page=1">科研成果</a>
								</li>
								<li>
									<a href="AchieveList!achievelistFore.action?achieveType=001002&page=1">教学成果</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#">科研项目</a>
							<ul>
								<li>
									<a href="AchieveList!achievelistFore.action?achieveType=002001&page=1">国际项目</a>
								</li>
								<li>
									<a href="AchieveList!achievelistFore.action?achieveType=002002&page=1">国家项目</a>
								</li>
								<li>
									<a href="AchieveList!achievelistFore.action?achieveType=002003&page=1">省级项目</a>
								</li>
								<li>
									<a href="AchieveList!achievelistFore.action?achieveType=002004&page=1">市级项目</a>
								</li>
								<li>
									<a href="AchieveList!achievelistFore.action?achieveType=002005&page=1">横向项目</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#">论文</a>
							<ul>
								<li>
									<a href="AchieveList!achievelistFore.action?achieveType=003001&page=1">EI</a>
								</li>
								<li>
									<a href="AchieveList!achievelistFore.action?achieveType=003002&page=1">SCI</a>
								</li>
								<li>
									<a href="AchieveList!achievelistFore.action?achieveType=003003&page=1">ISTP</a>
								</li>
								<li>
									<a href="AchieveList!achievelistFore.action?achieveType=003004&page=1">核心期刊</a>
								</li>
								<li>
									<a href="AchieveList!achievelistFore.action?achieveType=003005&page=1">一般论文</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="AchieveList!achievelistFore.action?achieveType=004000&page=1">专利</a>
						</li>
						<li>
							<a href="AchieveList!achievelistFore.action?achieveType=005000&page=1">专著教材</a>
						</li>
					</ul>
				</td>
			</tr>  			
			<tr>
				<td align="right" valign="top" colspan="2">
					<form name="seniorSearchForm"
						action="SearchAchieve!searchAchieveFore.action?page=1"
						onsubmit="return check_data()">
						<label style="font-size: 12px;">
							查找关键字：
						</label>
						<img src="<%=basePath %>images/pic7.gif" /> 
						<input style="border:1px solid #E9E9F3;width: 150px;" type="text" name="keyWord"/>
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
						<s:if test="#parameters.count[0] == 1">
							<tr>
								<td colspan="4" align="left">
									<font size="2" color="blue">
										请按类别搜索信息!
									</font>
								</td>
							</tr>
						</s:if>
						<s:if test="pageBean.list.size() == ''">
							<tr>
								<td colspan="4" align="center">
									<font size="4" color="red">
										搜索不到匹配的内容!
									</font>
								</td>
							</tr>
						</s:if>
						<s:if test="pageBean.list.size() != 0">
							<s:iterator id="achieve" value="pageBean.list" status="ach">
								<tr onMouseOut="this.bgColor=''" onMouseOver="this.bgColor='FFFFCC'">
									<td width="20" height="24" align="center" valign="middle"
										class="style3">
										<img src="<%=basePath %>front/feature/images/dit1.gif">
									</td>
									<td align="left" valign="middle" style="color: 525152">
										<span
											onMouseOver="this.style.color='#dd0000',this.style.cursor='hand'"
											onMouseOut="this.style.color=''"
											title="<s:property value="#achieve.achieveName" />">
												<a
													href="indexAchieveDetail.jsp?achieveId=<s:property value="#achieve.achieveId"/>&achieveType=<s:property value="#achieve.achieveType"/>&achieveName=<s:property value="#achieve.achieveName"/>"
													target="_blank"> ${achieve.achieveName }
												</a>
											 	<input type="hidden" name="achieveType" value="<s:property value="#achieve.achieveType" />" />
											 	<input type="hidden" name="achieveName" value="${requestScope.achieveName }" />
											 </span>
									</td>
									<td width="100" align="right" style="color: 525152">
										<font color="red">[<s:property value="#achieve.achieveTime" />]</font>
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
