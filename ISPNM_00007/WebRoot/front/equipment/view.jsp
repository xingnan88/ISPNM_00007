<%@ page language="java" import="java.util.*" contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
    
    <title>矿冶设备库</title>
    
	<meta http-equiv="pragma" content="no-cache" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="expires" content="0" />    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	
	<s:set value="com.opensymphony.xwork2.ActionContext.name" name="actionName" />
	
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css_js/header.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css_js/footer.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css_js/floating.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>front/equipment/css_js/view.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>front/equipment/css_js/index.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>jquery-ui/css/blitzer/jquery-ui-1.8.16.custom.css"/>
	<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-1.6.2.min.js" ></script>
	<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-ui-1.8.15.custom.min.js" ></script>
	<script type="text/javascript" src="<%=basePath %>css_js/index.js" charset="gbk"></script>
	<script type="text/javascript" src="<%=basePath %>css_js/floating.js" charset="gbk"></script>
	<style type="text/css">
a.db{
	font-family:'楷体';

}
label {
	display: block;
}
	</style>
	<script >
	var actionName = "<s:property value="com.opensymphony.xwork2.ActionContext.name" />";
	$(function(){
		var $pic = $("#pic img").clone();
		$pic.css("width","560px");
		$pic.css("height","380px");
		$("#listTable tr:even").css("background-color","rgb(240,240,240)");
		$("select").change(function(){
			location.href="<%=basePath%>equipment/"+actionName+"?page="+$(this).val();
		});
		$(" tr:even").css("background-color","rgb(240,240,240)");
		$("#pic").click(function(){
			$pic.dialog({
				width:700,
				height:475,
			});
		});
	});
	</script>
  </head>
  
  <body>
   <iframe marginwidth=0 marginheight=0 src="<%=basePath %>top.jsp" frameborder=no
							scrolling=no width=1020 height=125></iframe>
   	<div id="main">
   		<jsp:include page="left.jsp"></jsp:include>
   		<div style="display: none">
   			<input type="hidden" name="equipment.name" value=${equipment.name}/>
   			<input type="hidden" name="equipment.category" value=${equipment.category}/>
   			<input type="hidden" name="equipment.model" value=${equipment.model}/>
   			<input type="hidden" name="equipment.enterprise" value=${equipment.enterprise}/>
   		</div>
   		<div id="right">
   			<div id="location">
		   		<a href="<%=basePath%>index.jsp">首页</a> &gt; 
		   		<a href="<%=basePath%>front/equipment/index.jsp">设备库</a> &gt;
		   		<a href="#">设备详情</a>
	  	 	</div>
	  	 	<div  style="float: left;margin-right: 5px;">
	   			<table  id="baseInfo" cellpadding="0" cellspacing="0">
	   				<tr><td colspan="2" class="titlebg2" style="padding: 0"><span class="tab">基本信息</span></td></tr>
					<tr>
						<td align="right" width="100">设备名称：</td> <td >${equipment.name}</td>
					</tr>
					<tr>
						<td align="right">设备类型：</td> <td >${equipment.category}</td>
					</tr>
					<tr><td align="right">设备型号：</td><td>${equipment.model}</td></tr>
					<tr><td align="right">设备厂家：</td><td>${equipment.enterprise} </td></tr>
					<tr><td align="right">原产地：</td><td>${equipment.provenance}</td></tr>
					<tr><td align="right">参考价格：</td><td>${equipment.price}</td>	</tr>
				</table>
				<table id="parameter" style="margin-top:0px;" cellpadding="0" cellspacing="0" >
					<tr><td colspan="2" class="titlebg2" style="padding: 0"><span class="tab">设备参数</span></td></tr>
					<tr><td align="right" width="100">参数名称</td><td>&nbsp;参数值</td></tr>
					<s:iterator value="equipment.frontParameters">
					<tr><td align="right">&nbsp;<s:property value="key"/></td><td>&nbsp;<s:property value="value"/></td></tr>
					</s:iterator>
				</table>
			</div>
			<div id="pic" style="text-align: center;float: left;font-size: 12px;">
				<img src="images/huanyue.jpg" alt="equipment"
					 width="290" height="180" style="display: block;" />
					 点击图片放大
			</div>
			<table cellpadding="0" cellspacing="0" style="width:705px">
				<tr><td colspan="2" class="titlebg2" style="padding: 0"><span class="tab">设备详情</span></td></tr>
				<tr>
					<td colspan="2" style="padding-right: 5px;">
						<textarea  style="width: 100%;height: 200px;" readonly="readonly" >${equipment.info};</textarea>
					</td>
				</tr>
			</table>
   		</div>
   	</div>
	<iframe marginwidth=0 marginheight=0 src="<%=basePath %>bottom.jsp" frameborder=no
							scrolling=no width=1020 height=280></iframe>
  </body>
</html>
