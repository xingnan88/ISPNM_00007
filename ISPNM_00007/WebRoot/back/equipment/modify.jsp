<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.opensymphony.xwork2.util.ValueStack"%>
<%@ page import="jxust.isp4nm.model.Equipment.Parameter"%>
<%@ page import="jxust.isp4nm.serviceImpl.EquipmentServiceImpl"%>   
<%    
ValueStack vs = (ValueStack)request.getAttribute("struts.valueStack");    
LinkedList<Parameter> fontParameters = (LinkedList<Parameter>)vs.findValue("equipment.frontParameters");
%>   
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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link href="<%=basePath%>images/skin.css"
			rel="stylesheet" type="text/css" />
		<link href="myStyle.css"
			rel="stylesheet" type="text/css" />
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<style type="text/css" >
		
		</style>
		<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-1.5.1.min.js" ></script>
		<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-ui-1.8.14.custom.min.js" ></script>
		<script type="text/javascript">
		//var oldCaterotyValue = "";
		$(document).ready(function(){
			var str = new Array();
			var oldCaterotyValue = $("#oldCategory").val();
			str = oldCaterotyValue.split(",");
			$("text").attr("selected","selected");
			$("option[value = "+str[0]+"]").attr("selected","selected");
			$("option[id = inMainCategory"+$("#mianCategorySelect")[0].selectedIndex+"]").clone().appendTo("#categorySelcet");
			$("option[value = "+str+"]").attr("selected","selected");
			$("#mianCategorySelect").bind("change",function(){
				$("#categorySelcet").empty();
				m = $("#mianCategorySelect")[0].selectedIndex;
				$("option[id = inMainCategory"+ m +"]").clone().appendTo("#categorySelcet");
				});
		});
		
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
			$("#enlargedPic").css("width", 640);
			$("#enlargedPic").css("height", 480);
			var currentDiv = $("#enlargedDiv");
			currentDiv.css("left", 100);
			currentDiv.css("top", 50);
			currentDiv.css("position", "absolute");
			$("#closePic").show("slow");
			currentDiv.show("slow");
		}
		function closePic() {
			$("#enlargedDiv").css("position", "static");
			$("#enlargedPic").css("width", 290);
			$("#enlargedPic").css("height", 190);
			$("#closePic").hide("slow");
			$("#enlargedDiv").show("slow");
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
						修改设备
					</div>
				</td>
				<td width="17" valign="top" >
					<img src="<%=basePath%>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent" style="width:95%">
			<form action="<%=basePath %>back/equipment/update" method="post">
			<div id="title" style="padding: 7px;text-align: center;
		border:1px solid rgb(10,100,130);">
			<img src="../../images/set2.gif" style="vertical-align: top;" alt="" />修改设备信息
			</div>
			<table style="width: 100%;"  id="baseInfo" cellpadding="0" cellspacing="0" >
				<tr>
					<td align="right">设备id：</td>
					<td style="width: 80%" >${equipment.id }<input type="hidden" name="equipment.id" value="${equipment.id }"/></td>
				</tr>
				<tr>
					<td align="right">设备名称：</td> <td><input type="text" name="equipment.name" value="${equipment.name} " /></td>
				</tr>
				<tr><td align="right">设备类型：</td>
					<td>
						<input id="oldCategory" type="hidden" value="${equipment.category}"/>
						<select id="mianCategorySelect" title="请选择大分类">
						<%
							for (int i = 0; i < categorys.length; i++)
								out.println("<option id='MainCategory" + i + "' value = '"+categorys[i][0]+"'>"
										+ categorys[i][0] + "</option>");
						%>
						</select>
						<select id="categorySelcet" name="equipment.category" title="请选择小分类" style="width: 105px;"></select>
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
						
					</td>
				</tr>
				<tr><td align="right">设备型号：</td><td><input type="text" name="equipment.model" value="${equipment.model}" /></td></tr>
				<tr><td align="right">设备厂家：</td><td><input type="text" name="equipment.enterprise" value="${equipment.enterprise }"/></td></tr>
				<tr><td align="right">原产地：</td><td><input type="text" name="equipment.provenance" value="${equipment.provenance }"/></td></tr>
				<tr><td align="right">参考价格：</td><td><input type="text" name="equipment.price" value="${equipment.price }"/></td></tr>
				<tr><td align="right">选择图片：</td><td><input type="file"style="width: 380px;height: 20px" />&nbsp;<input type="button" style="width: 60px;height: 20px;" value="预 览"/> </td>
				</tr>
			</table>
			<table id="parameter0" style="width: 100%;margin-bottom:0px;" cellpadding="0" cellspacing="0" >
				<tr><td  id="title" >设备参数</td>
					<td style="width: 80%">
						<a id="showLink"href="#" style="float: right;color: rgb(27，69，47)" onclick="showParameter()">展开<img src="../../images/pic8.gif"/></a>
						<a id="hideLink" href="#" style="float: right;color:rgb(27，69，47);display: none" onclick="hideParameter()">收起<img src="../../images/pic15.gif"/></a>
					</td>
				</tr>
			</table>
			<table id="parameter" style="width: 100%;margin-top:0px;display: none" cellpadding="0" cellspacing="0" >
				<tr><td align="right">参数名称</td><td style="width: 80%">&nbsp;&nbsp;参数值</td></tr>
				<%for(int i = 0; i < 15; i++) {%>
					<%if(i < fontParameters.size() ){%>
				<tr>
				 	<td align="right">
						<input type="text" value="<%=fontParameters.get(i).getKey() %>" name="paraKey<%=i %>"/>
					</td>
					<td>
						<input type="text" value="<%=fontParameters.get(i).getValue() %>" name="paraValue<%=i %>"/>
					</td>
				</tr>
					<%}else{ %>
				<tr>
				 	<td align="right">
						<input type="text" name="paraKey<%=i %>"/>
					</td>
					<td>
						<input type="text" name="paraValue<%=i %>"/>
					</td>
				</tr>
					<%} %>
				<%} %>
			</table>
			<table style="width: 100%;margin-bottom: 5px;"cellpadding="0" cellspacing="0">
				<tr><td id="title" >设备详情</td><td style="width: 80%">&nbsp;</td></tr>
				<tr>
					<td colspan="2">
						<textarea  style="width: 95%;height: 150px;" name="equipment.info">请输入设备详情</textarea>
					</td>
				</tr>
			</table>
			<div style="text-align: center;">
				<input type="image" src="../../images/tj.jpg" class="imgButton" />
				<a href="#"  onclick="document.forms[0].reset()" ><img src="../../images/reset.jpg" class="imgButton"/></a>
			</div>
			</form>
		</div>
	</body>
</html>