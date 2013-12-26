<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
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
		<link href="<%=basePath%>images/skin.css"
			rel="stylesheet" type="text/css" />
		<link href="myStyle.css"
			rel="stylesheet" type="text/css" />
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<style type="text/css">
		<!--
		span {
			display: inline-table;
		}
		#toCheck a{
			margin: 5px 0px 2px 30px;
		}
		
		.likeBorder {
			width: 100%;
			height:1px;
			background-color:rgb(102,170,204);
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
		<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-1.5.1.min.js" ></script>
		<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-ui-1.8.14.custom.min.js" ></script>
		<script type="text/javascript">
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
	</head>
	<body >
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top" >
					<img src="<%=basePath%>images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="<%=basePath%>images/content-bg.gif">
					<div class="titlebt">
						搜索结果
					</div>
				</td>
				<td width="17" valign="top" >
					<img src="<%=basePath%>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent" style="width:95%">
			<form action="search">
			<div id="searchDiv">
				<label style="font-size: 12px;">查找关键字：</label>
				<img src="../../images/pic7.gif" />
				<input style="width: 150px;" type="text" name="keyWord" />
				<select name="method">
					<option value="0"> 按设备名称</option>
					<option value="1"> 按设备类型</option>
					<option value="2"> 按设备企业</option>
				</select>
					<input class="button" style="background-image: url(../../images/yimgbt.gif);"  type="submit" value="  搜 索"/>
			</div>
			</form>
			
			<form id="listForm" action="<%=basePath %>back/equipment/deleteMore" method="post">
			<div id="listDiv" style="width: 100%;">
				<div class="headBorder">
					<span style="width:150px">设备编号</span>
					<span style="width:150px">设备名称</span>
					<span>设备类型</span>
				</div>
				<div class="likeBorder"></div>
				<%int i = 0; %>
				<s:iterator value="equipments">
				<div style="<%=(i % 2 == 1) ? "background-color: white;" : ""%>margin-buttom: 10px;">
					<div class="<%=(i % 2 == 1) ? "lineDiv0" : "lineDiv1"%>"></div>
					<div class="<%=(i % 2 == 1) ? "lineDiv0" : "lineDiv1"%>"></div>
					<div class="<%=(i % 2 == 1) ? "lineDiv0" : "lineDiv1"%>%>"></div>
					<div>
						<span style="width:150px"><input type="checkbox" name="checkedId" value='<s:property value="id"/>' style="width: 20px;border: none"/>ID:<s:property value="id"/></span>
						<span style="width:150px"><s:property value="name"/></span>
						<span style="width:250px"><s:property value="category"/></span>
						<a href="#" class="opera">删除</a>
					</div>
					<div class="<%=(i % 2 == 1) ? "lineDiv0" : "lineDiv1"%>"></div>
					<div>
						<span style="width:250px">设备型号：<s:property value="model"/></span>
						<span style="width:250px">生产企业：<s:property value="enterprise"/></span>
						<a  class="opera">查看</a>
					</div>
					<div class="<%=(i % 2 == 1) ? "lineDiv0" : "lineDiv1"%>"></div>
					<div>
						<span style="width:250px">原产地：<s:property value="provenance" /></span>
						<span style="width:250px">参考价格：<s:property value="price" />￥</span>
						<a href="#" class="opera" >修改</a>
					</div>
					<div class="likeBorder"></div>
				</div>
				<%i++; %>
				</s:iterator>
				<div id="toCheck" style="background-color: white;">
					<a href="#" id="checkAll" >全选</a><a href="#" id="cancelCheck" >取消</a><a href="#" id="inverseCheck">反选</a>
					<div class="likeBorder"></div>
					<input type="image" src="../../images/del.jpg" class="imgButton" onclick="document.getElementById('listForm').submit()" />
				</div>
			</div>
			</form>
		</div>
	</body>
</html>