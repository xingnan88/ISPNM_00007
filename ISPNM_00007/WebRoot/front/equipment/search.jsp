<%@ page language="java" import="java.util.*" contentType="text/html;charset=gbk"  %>
<%@page import="jxust.isp4nm.serviceImpl.EquipmentServiceImpl"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	if(application.getAttribute("categorys") == null)
		application.setAttribute("categorys",EquipmentServiceImpl.currentCategorys());
	String[][] categorys = (String[][]) application.getAttribute("categorys");
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
	<link rel="stylesheet" type="text/css" href="<%=basePath %>front/equipment/css_js/search.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>front/equipment/css_js/index.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>jquery-ui/css/blitzer/jquery-ui-1.8.16.custom.css"/>
	<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-1.6.2.min.js" ></script>
	<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-ui-1.8.15.custom.min.js" ></script>
	<script type="text/javascript" src="<%=basePath %>css_js/index.js" charset="gbk"></script>
	<script type="text/javascript" src="<%=basePath %>css_js/floating.js" charset="gbk"></script>
	<style type="text/css">
	</style>
	<script >
	var actionName = "<s:property value="com.opensymphony.xwork2.ActionContext.name" />";
	var m = 0;
	$(document).ready(function(){
		$("#mianCategorySelect")[0].selectedIndex = 0;
		$("option[id = inMainCategory0]").clone().appendTo("#categorySelect");
		$("#mianCategorySelect").bind("change",function(){
			$("#categorySelect").empty();
			m = $("#mianCategorySelect")[0].selectedIndex;
			$("option[id = inMainCategory"+ m +"]").clone().appendTo("#categorySelect");
			});
		
	});

	function  submitHandler(){
		//alert($(document.getElementsByName("equipment.price")).val());
		if($("input:checked[name = categorySearchMethod]").val() == '0'){
			$("#category").val($("#mianCategorySelect").val());
		} else 
			$("#category").val($("#categorySelect").val());

		var price = $(document.getElementsByName("equipment.price"));
		var price2 = $(document.getElementsByName("equipment.price2"));
		if(price.val() == "")
			price.val(0);
		if(price2.val() == "")
			price2.val(<%=Integer.MAX_VALUE%>);
		if(price.val() > price2.val()){
			$("<label> <br/><center>错误的价格区间！</center></label>").dialog({position: [150, 90], buttons: { "确定": function() { $(this).dialog("close"); } } });
			return false;
		}
		return true;
	}
	</script>
  </head>
  
  <body>
   <iframe marginwidth=0 marginheight=0 src="<%=basePath %>top.jsp" frameborder=no
							scrolling=no width=1020 height=125></iframe>
   	<div id="main">
   		<jsp:include page="left.jsp"/>
   		
   		<div  id="right">
   			<div style="margin: 5px;">
		   		<a href="<%=basePath%>index.jsp">首页</a> &gt; 
		   		<a href="<%=basePath%>front/equipment/index.jsp">设备库</a> &gt;
		   		<a href="#">搜索结果</a> 
		   	</div>
   			<form action="<%=basePath%>front/equipment/advancedSearch" method="post" onsubmit=" return submitHandler()" >
				<table id="baseInfo" cellpadding="0" cellspacing="0" >
					<tr>
						<td colspan="2">
						输入相应条件进行查询，如部分条件不希望匹配，则不要填写。
						</td>
					</tr>
					<tr>
						<td align="right">设备名称：</td> <td style="width: 80%"><input type="text" name="equipment.name"/></td>
					</tr>
					<tr><td align="right">设备类型：</td>
						<td>
							<select id="mianCategorySelect" title="请选择大分类">
							<%
								for (int i = 0; i < categorys.length; i++)
									out.println("<option id='MainCategory" + i + "'>"
											+ categorys[i][0] + "</option>");
							%>
							</select>
							<select id="categorySelect" title="请选择小分类" style="width: 105px;"></select>
							<select style="display: none;">
							<%
								for (int i = 0; i < categorys.length; i++) {
									for (int j = 1; j < categorys[i].length; j++) {
										out.println("<option id='inMainCategory" + i + "' value='"
												+ categorys[i][0] + "," + categorys[i][j] + "'>"
												+ categorys[i][j] + "</option>");
									}
								}
							%>
							</select>
							<input id="category" name="equipment.category" type="hidden" />
							<input type="radio" name="categorySearchMethod" checked="checked" value="0" class="radio" />精确到大分类
							<input type="radio" name="categorySearchMethod" value="1" class="radio" />精确到小分类
						</td>
					</tr>
					<tr><td align="right">设备型号：</td><td><input type="text" name="equipment.model"/></td></tr>
					<tr><td align="right">设备厂家：</td><td><input type="text" name="equipment.enterprise" /></td></tr>
					<tr><td align="right">原产地：</td><td><input type="text" name="equipment.provenance"/></td></tr>
					<tr><td align="right">价格区间：</td>
						<td>
							<input type="text" style="width: 25%" name="equipment.price"/>--
							<input type="text" style="width: 25%" name="equipment.price2"/>
							<input type="radio" name="priceSearchMethod" checked="checked" value="0" class="radio" /><h3 style="display: inline;">￥</h3>
							<input type="radio" name="priceSearchMethod" value="1" class="radio" /><h3 style="display: inline;">$</h3>
						</td>
					</tr>
				</table>
				<table style="margin-bottom: 5px;"cellpadding="0" cellspacing="0">
					<tr><td id="title" >设备详情</td><td style="width: 80%">&nbsp;</td></tr>
					<tr>
						<td colspan="2">
							<textarea  style="width: 95%;height: 150px;" name="equipment.info">请输入设备详情</textarea>
						</td>
					</tr>
				</table>
				<div style="text-align: center;">
					<button type="submit" value="搜索">搜索</button>
		    		<button type="reset" value="重置">重置</button>
				</div>
			</form>
   		</div>
   	</div>
	<iframe marginwidth=0 marginheight=0 src="<%=basePath %>bottom.jsp" frameborder=no
							scrolling=no width=1020 height=280></iframe>
  </body>
</html>
