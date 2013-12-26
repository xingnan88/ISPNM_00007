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
		<link href="<%=basePath%>images/skin.css" rel="stylesheet" type="text/css" />
		<link href="myStyle.css" rel="stylesheet" type="text/css" />
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<style type="text/css">
		<!--
		
		-->
		</style>
		<link type="text/css" href="../../jquery-ui/css/ui-lightness/jquery-ui-1.8.14.custom.css" rel="stylesheet" />	
		<script type="text/javascript" src="../../jquery-ui/js/jquery-1.5.1.min.js"></script>
		<script type="text/javascript" src="../../jquery-ui/js/jquery-ui-1.8.14.custom.min.js"></script>
		<script type="text/javascript">
		function hideParameter(){
			$("#hideLink").hide("slow");
			$("#showLink").show("slow");
			$("#parameter0").css("border-bottom-width",1);
			$("#parameter").hide("slow");
		}
		function showParameter(){
			$("#hideLink").show("slow");
			$("#showLink").hide("slow");
			$("#parameter0").css("border-bottom-width",0);
			$("#parameter").show("slow");
		}
		function enlargePic(){
			var currentDiv = $("#enlargedPic");
			currentDiv.css("left", 100);
			currentDiv.css("top", 50);
			$("#closePic").show("slow");
			currentDiv.show("slow");
			currentDiv.draggable();
		}
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
						设备详情
					</div>
				</td>
				<td width="17" valign="top" >
					<img src="<%=basePath%>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent"  style="width:95%">
			<div id="title" style="padding: 7px;text-align: center;
		border:1px solid rgb(10,100,130);"><img src="../../images/st.png" style="vertical-align: top;"/>${equipment.name}</div>
		<div style="margin: 0px;width: 100%">
			<a href="<%=basePath %>back/equipment/add.jsp" class="opera">添加信息</a>
			<a href="<%=basePath %>back/equipment/modify?equipment.id=${equipment.id}" class="opera">修改信息</a>
			<a href="<%=basePath %>back/equipment/delete" class="opera">删除设备</a>
		</div>
			<table style="width: 100%;"  id="baseInfo" cellpadding="0" cellspacing="0" >
				<tr>
					<td >&nbsp;</td>
					<td style="width: 38%">&nbsp;</td>
					<td style="width: 42%;" rowspan="8">
							<img src="<%=basePath%>images/huanyue.jpg" style="width: 240px;height: 130px;margin: auto;" />
					</td>
				</tr>
				<tr>
					<td >&nbsp;</td>
					<td >&nbsp;</td>
				</tr>
				<tr>
					<td align="right">设备id：</td>
					<td >${equipment.id }</td>
				</tr>
				<tr>
					<td align="right">设备名称：</td> <td >${equipment.name}</td>
				</tr>
				<tr>
					<td align="right">设备类型：</td> <td >${equipment.category}</td>
				</tr>
				<tr><td align="right">设备型号：</td><td>${equipment.model}</td></tr>
				<tr><td align="right">设备厂家：</td><td>${equipment.enterprise} </td></tr>
				<tr><td align="right">原产地：</td><td>${equipment.provenance}</td></tr>
				<tr><td align="right">参考价格：</td><td>${equipment.price}</td>
					<td style="text-align: center;"><a href="#" onclick="enlargePic()">点击放大</a></td>
				</tr>
			</table>
			<table id="parameter0" style="width: 100%;margin-bottom:0px;" cellpadding="0" cellspacing="0" >
				<tr><td  id="title" >设备参数</td>
					<td style="width: 80%">
						<a id="showLink"href="#" class="opera" onclick="showParameter()">展开<img src="../../images/pic8.gif"/></a>
						<a id="hideLink" href="#" class="opera" style="display: none" onclick="hideParameter()">收起<img src="../../images/pic8.gif"/></a>
					</td>
				</tr>
			</table>
			<table id="parameter" style="width: 100%;margin-top:0px;display: none" cellpadding="0" cellspacing="0" >
				<tr><td align="right">参数名称</td><td style="width: 80%">&nbsp;参数值</td></tr>
				<s:iterator value="equipment.frontParameters">
				<tr><td align="right">&nbsp;<s:property value="key"/></td><td>&nbsp;<s:property value="value"/></td></tr>
				</s:iterator>
			</table>
			<table style="width: 100%;"cellpadding="0" cellspacing="0">
				<tr><td id="title" >设备详情</td><td style="width: 80%">&nbsp;</td></tr>
				<tr>
					<td colspan="2">
						<textarea  style="width: 100%;height: 200px;" readonly="readonly" >
						${equipment.info};
						</textarea>
					</td>
				</tr>
			</table>
		</div>
		<div id="enlargedPic" style="display:none;padding:1px;position: absolute;" >
			<input id="closePic" type="image" value="关闭" src="<%=basePath%>images/close_ico.jpg" 
			 onclick="javascript:$('#enlargedPic').hide('slow');"/>
			<img src="<%=basePath%>images/huanyue.jpg" style="width: 640px;height: 480px;" />
		</div>
		<s:debug></s:debug>
	</body>
</html>