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
	width: 80px;
	text-align: center;
}

copyright www.divcss5.com divcss5
#nav a:link {
	color: #666;
	text-decoration: none;
}

#nav a:visited {
	color: #666;
	text-decoration: none;
}

#nav a:hover {
	color: #666;
	text-decoration: none;
	font-weight: bold;
}

#nav li {
	float: left;
	width: 100px;
	background: #CCC;
}

#nav li a:hover {
	background: #999;
}

#nav li ul {
	line-height: 16px;
	list-style-type: none;
	text-align: left;
	left: -999em;
	width: 180px;
	position: absolute;
}

#nav li ul li {
	float: left;
	width: 180px;
	background: #EFEFEF;
}

copyright www.divcss5.com divcss5

#nav li ul a {
	display: block;
	width: 156px;
	text-align: left;
	padding-left: 24px;
	overflow: hidden;
}

#nav li ul a:link {
	color: #666;
	text-decoration: none;
}

#nav li ul a:visited {
	color: #666;
	text-decoration: none;
}

#nav li ul a:hover {
	color: #F3F3F3;
	text-decoration: none;
	font-weight: normal;
	background: #666;
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
		<link type="text/css"
			href="<%=basePath%>jquery-ui/css/start/jquery-ui-1.8.15.custom.css"
			rel="stylesheet" />
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-1.6.2.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-ui-1.8.15.custom.min.js"></script>
		<script type="text/javascript">
			function check_data() {
			//按提交按钮时，检查数据是否为空
			   if(seniorSearchForm.keyWord.value.length==0){
			  		return false;
				}
				return true;
			}
			function simple_search() {
				window.location.href="SearchAchieve!searchAchieve.action";
			}
			function senior_search() {
				window.location.href="GetYear!getyear.action";
			}
			function delete_confirm() {
				//按删除链接时，弹出确认对话框
   				if(confirm("确认要删除吗？")){
  				return true;
			}else return false;	
			}
		$(document).ready(function(){
			$("#checkAll").bind("click",function(){
				$(":checkbox").attr("checked","checked")
				});
			$("#cancelCheck").bind("click",function(){
				$(":checkbox").removeAttr("checked")
				});
			$("#inverseCheck").bind("click",function(){
				$(":checkbox").each(function(){ 
					if($(this).attr("checked"))
						$(this).removeAttr("checked"); 
					else 
					$(this).attr("checked","checked"); 
					});
				});
		});
		</script>
		<script type="text/javascript">
			function valid_check() {
				var arr = document.getElementsByName('checkedId');
				for(var c=0;c<arr.length;c++) {
					if(arr[c].checked) {
						return true;
					}
				}
				alert("没有选中任何成果！");
				return false;
			}
		</script>
	</head>
	<body>
		<center>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top">
					<img src="<%=basePath %>images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" align="left" background="<%=basePath %>images/content-bg.gif">
					<div class="titlebt">
						搜索论文
					</div>
				</td>
				<td width="17" valign="top">
					<img src="<%=basePath %>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
			<tr align="center">
				<td width="17">
					&nbsp;
				</td>
				<td>
					<ul id="nav">
						<li>
							<a href="AchieveList!list.action?page=1">全部</a>
						</li>
						<li>
							<a href="#">获奖</a>
							<ul>
								<li>
									<a href="AchieveList!achievelist.action?achieveType=001001&page=1">科研成果</a>
								</li>
								<li>
									<a href="AchieveList!achievelist.action?achieveType=001002&page=1">教学成果</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#">科研项目</a>
							<ul>
								<li>
									<a href="AchieveList!achievelist.action?achieveType=002001&page=1">国际项目</a>
								</li>
								<li>
									<a href="AchieveList!achievelist.action?achieveType=002002&page=1">国家项目</a>
								</li>
								<li>
									<a href="AchieveList!achievelist.action?achieveType=002003&page=1">省级项目</a>
								</li>
								<li>
									<a href="AchieveList!achievelist.action?achieveType=002004&page=1">市级项目</a>
								</li>
								<li>
									<a href="AchieveList!achievelist.action?achieveType=002005&page=1">横向项目</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#">论文</a>
							<ul>
								<li>
									<a href="AchieveList!achievelist.action?achieveType=003001&page=1">EI</a>
								</li>
								<li>
									<a href="AchieveList!achievelist.action?achieveType=003002&page=1">SCI</a>
								</li>
								<li>
									<a href="AchieveList!achievelist.action?achieveType=003003&page=1">ISTP</a>
								</li>
								<li>
									<a href="AchieveList!achievelist.action?achieveType=003004&page=1">核心期刊</a>
								</li>
								<li>
									<a href="AchieveList!achievelist.action?achieveType=003005&page=1">一般论文</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="AchieveList!achievelist.action?achieveType=004000&page=1">专利</a>
						</li>
						<li>
							<a href="AchieveList!achievelist.action?achieveType=005000&page=1">专著教材</a>
						</li>
					</ul>
				</td>
				<td width="17">
					&nbsp;
				</td>
			</tr>
		</table>
		</center>
		<div id="mainContent" style="width:95%">
			<form name="seniorSearchForm"
				action="SearchAchieve!searchAchieve.action?page=1"
				onsubmit="return check_data()">
				<div id="searchDiv">
					<label style="font-size: 12px;">
						查找关键词：
					</label>
					<img src="<%=basePath %>images/pic7.gif" />
					<input style="width: 200px;" type="text" name="keyWord" />
					<input type="hidden" name="page" value="1" />
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input class="button"
						style="background-image: url(<%=basePath %>back/feature/images/yimgbt.gif);" type="submit"
						value="  搜 索" onclick="return simple_search();" />
						&nbsp;
					<input type="submit" class="button" value="高级搜索"
						style="background-image: url(<%=basePath %>back/feature/images/yimgbt.gif);"
						onclick="return senior_search();" />
				</div>
			</form>

			<form id="listForm" action="DeleteAchieveMore.action?page=1" onsubmit="return valid_check()" method="post">
				<div id="listDiv" style="width: 100%;">
					<div class="headBorder">
						<span style="width: 150px">成果编号</span>
						<span style="width: 200px">成果名称</span>
					</div>
					<div class="likeBorder"></div>
					<s:if test="#parameters.count[0] == 1 || pageBean == ''">
						<tr>
							<td colspan="4" align="center">
								<font size="3" color="blue">
									请按类别搜索信息!
								</font>
							</td>
						</tr>
					</s:if>
					<s:elseif test="pageBean.list.size() == ''">
						<tr>
							<td colspan="4" align="center">
								<font size="4" color="red">
									搜索不到匹配的内容!<br />
								</font>
							</td>
						</tr>
					</s:elseif>
					<s:elseif test="pageBean.list.size() != 0">
						<s:iterator id="achieve" value="pageBean.list" status="ach">
							<div style="margin-buttom: 10px;">
								<div style="height: 25px;">
									<span style="width: 130px"><input type="checkbox"
											name="checkedId" id="checkedId" 
											value='<s:property value="#achieve.achieveId" />'
											style="width: 20px; border: none" />ID:<s:property
											value="#achieve.achieveId" /> </span>
									<span style="width: 450px"><a
										href="AchieveDetail!detail.action?achieveId=<s:property value="#achieve.achieveId"/>&achieveType=<s:property value="#achieve.achieveType"/>"
										title="<s:property
												value="#achieve.achieveName" />"><s:property
												value="#achieve.achieveName" /> </a> </span>
									<input type="hidden" name="achieveName" value="${requestScope.achieveName }" />
									<span>
									<a style="text-align:right;"
										href="BeforeUpdateAchieve.action?achieveId=<s:property value="#achieve.achieveId"/>&achieveType=<s:property value="#achieve.achieveType"/>">修改</a>
									</span>
									<span>
									<a style="text-align:right;"
										href="DeleteAchieve.action?achieveId=<s:property value="#achieve.achieveId"/>&achieveType=<s:property value="#achieve.achieveType"/>&page=1"
										onclick="return delete_confirm()">删除</a>
									</span>
								</div>
								<div class="likeBorder"></div>
							</div>
						</s:iterator>
					</s:elseif>
					<!-- 分页信息 -->
					<s:property value="pageBean.ctrlInfo" escape="false" />
					<div id="toCheck" style="background-color: white;">
						<a href="#" id="checkAll">全选/取消</a>
						<div class="likeBorder"></div>
						<input type="image" src="<%=basePath %>images/del.jpg" class="imgButton" />
					</div>
				</div>
			</form>
		</div>
	</body>
</html>