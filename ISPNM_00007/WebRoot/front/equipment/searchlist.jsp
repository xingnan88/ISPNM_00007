<%@ page language="java" contentType="text/html; charset=gbk" pageEncoding="gbk"%>
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
	<link rel="stylesheet" type="text/css" href="<%=basePath %>front/equipment/css_js/list.css"/>
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
	<script language="javascript">
		var actionName = "<s:property value='com.opensymphony.xwork2.ActionContext.name' />";
		var pageNum = ${page};
		$(function(){
			var $page = $("#pageInput");
			$("#listTable tr:even").css("background-color","rgb(240,240,240)");
			$("select").change(function(){
				$page.val($(this).val());
				$("#hiddenSearch").submit();
			});
			$("#prev").click(function(){
				$page.val(pageNum-1);
				$("#hiddenSearch").submit();
				return false;
			});
			$("#next").click(function(){
				
				$page.val(pageNum+1);
				$("#hiddenSearch").submit();
				return false;
			});
		});
	</script>
  </head>
  
  <body>
   <iframe marginwidth=0 marginheight=0 src="<%=basePath %>top.jsp" frameborder=no
							scrolling=no width=1020 height=125></iframe>
   	<div id="main" style="height:960px;">
   		<jsp:include page="left.jsp"/>
   		<div id="right">
   			<div id="location">
	   		<a href="<%=basePath%>index.jsp">首页</a> &gt; 
	   		<a href="<%=basePath%>front/equipment/index.jsp">设备库</a> &gt;
	   		<a href="#">搜索结果</a>
	   	</div>
   		<table id="listTable">
   			<tr>
   				<td>设备名称</td>
				<td width="150">设备类型</td>
				<td width="120">设备型号</td>
				<td>生产企业</td>
				<td>操作</td>
			</tr>
			<s:iterator value="equipments">
			<tr>
				<td><s:property value="name"></s:property></td>
				<td><s:property value="category"></s:property></td>
				<td><s:property value="model"></s:property></td>
				<td><s:property value="enterprise"></s:property></td>
				<td><a href="<%=basePath%>front/equipment/view?equipment.id=<s:property value='id'/>" target="_blank">查看</a></td>
			</tr>
			</s:iterator>
			<tr>
				<td colspan="5" align="center">
					<s:if test="page > 1">
					<a href="<%=basePath%>front/equipment/advancedSearch?page=${page-1 }&category=${requestScope.category }&name=${requestScope.name }&model=${requestScope.model }&enterprise=${requestScope.enterprise }&provenance=${requestScope.provenance }&info=${requestScope.info }&price=${requestScope.price }&price2=${requestScope.price2 }" title="上一页 " id="prev">上一页</a>
					</s:if>
					第${page}页
					<s:if test="page*25 < count">
					<a href="<%=basePath%>front/equipment/advancedSearch?page=${page+1 }&category=${requestScope.category }&name=${requestScope.name }&model=${requestScope.model }&enterprise=${requestScope.enterprise }&provenance=${requestScope.provenance }&info=${requestScope.info }&price=${requestScope.price }&price2=${requestScope.price2 }" title="下一页" id="next">下一页</a>
					</s:if>
					<a href="#">跳至</a>
					<select name="page" title="选择要跳转的页数">
					<s:iterator begin="1" end="(count/25)+ 1 " id="p">
						<s:if test="page == #p">
						<option value='<s:property value="#p"/>' selected="selected"><s:property value="#p"/></option>
						</s:if>
						<s:else>
						<option value='<s:property value="#p"/>'><s:property value="#p"/></option>
						</s:else>
					</s:iterator>
					</select>页
					共${count}条记录&nbsp;25条/页
				</td>
			</tr>
   		</table>
   		</div>
   	</div>
	<iframe marginwidth=0 marginheight=0 src="<%=basePath %>bottom.jsp" frameborder=no
							scrolling=no width=1020 height=280></iframe>
  </body>
</html>
