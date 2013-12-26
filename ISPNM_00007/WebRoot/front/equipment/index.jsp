<%@ page language="java"
	import="jxust.isp4nm.serviceImpl.EquipmentServiceImpl"
	contentType="text/html; charset=gb2312" pageEncoding="gb2312"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	if (application.getAttribute("categorys") == null)
		application.setAttribute("categorys", EquipmentServiceImpl
				.currentCategorys());
	String[][] categorys = (String[][]) application
			.getAttribute("categorys");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	<head>
         <base href="<%=basePath%>">
		<title>矿冶设备库</title>

		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />

		<s:set value="com.opensymphony.xwork2.ActionContext.name"
			name="actionName" />

		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/header.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/footer.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/floating.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>front/equipment/css_js/list.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>front/equipment/css_js/index.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>tools/jquery-ui/css/blitzer/jquery-ui-1.8.16.custom.css" />
		<script type="text/javascript"
			src="<%=basePath%>tools/jquery-ui/js/jquery-1.6.2.min.js">
		</script>
		<script type="text/javascript"
			src="<%=basePath%>tools/jquery-ui/js/jquery-ui-1.8.15.custom.min.js">
		</script>
		<script type="text/javascript" src="<%=basePath%>js/index.js"
			charset="gbk">
		</script>
		<script type="text/javascript" src="<%=basePath%>js/floating.js"
			charset="gbk">
		</script>
		<style type="text/css">
.title {
	background-image: url("http://localhost:8080/ISPNM/images/service.png");
}
</style>
		<script>
$(function() {
	$("#listTable tr:even").css("background-color", "rgb(240,240,240)");
	$("select").change(
			function() {
				location.href = "<%=basePath%>front/equipment/" + actionName
						+ "?page=" + $(this).val();
			});
	$(".categoryDiv a").click(function() {
		$("#clicked").val($(this).attr("id"));
		$("#hidden").submit();
		return false;
	});
});
</script>
	</head>

	<body style="text-align: center">
    	 
		<jsp:include page="/top.jsp"></jsp:include>
	
		
	      
		<table id="main" style="height: 960px;" align="center">
		  <tr>
			<td width="259"><jsp:include page="left.jsp"></jsp:include></td>
			<td align="left" width="760">
			<div id="right">
				<div id="location">
					<a href="<%=basePath%>index.jsp">首页</a> &gt;
					<a href="#">设备库</a>
				</div>
				<form action="search" method="post">
					<div id="searchDiv" style="height: 30px; margin: 10px 0 0 30px;">
						<label>
							查找关键字：
						</label>
						<input style="width: 150px; left: 200px;" class="text" type="text"
							name="keyWord" />
						<select name="method" title="请选择查找方式"
							style="left: 360px; font-size: 15px">
							<option value="0" selected="selected">
								按设备名称
							</option>
							<option value="1">
								按设备类型
							</option>
							<option value="2">
								按设备企业
							</option>
						</select>
						<button type="submit" value="查找">
							查找
						</button>
						<button type="reset" value="高级"
							onclick="location.href='search.jsp'">
							高级
						</button>
					</div>
					
				</form>
				<form id="hidden" action="<%=basePath%>front/equipment/list"
					style="display: none" method="post">
					<div style="display: none;">
						<input type="hidden" id="clicked" name="equipment.category"
							value="" />
					</div>
				</form>
				<%
					for (int i = 0; i < categorys.length; i++) {
				%>
				<div class="categoryDiv">
					<div class="titlebg2">
						<span class="tab"><%=categorys[i][0]%></span>
					</div>
					<%
						for (int j = 1; j < categorys[i].length; j++) {
					%>
					<a href="#" id="<%=categorys[i][0] + "," + categorys[i][j]%>"> <span
						class="ui-icon ui-icon-gear"
						style="display: inline-table; vertical-align: middle;"></span><%=categorys[i][j]%>
					</a>
					<%
						}
					%>
				</div>
				<%
					}
				%>
			</div>
			</td>
			</tr>
		</table>			
	</body>
	<jsp:include page="/bottom.jsp"></jsp:include>
</html>
