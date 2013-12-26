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
		<title>矿冶企业库</title>
		<link rel="stylesheet" href="<%=basePath%>front/company/css/home.css"
			type="text/css" />
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
	</head>
	<body>
		<table width="99%" border="0" cellpadding="0" cellspacing="0"
			align="center">
			<tr>
				<td height="6"></td>
			</tr>
		</table>
		<table width="710" border="0" cellpadding="0" cellspacing="0"
			background="<%=basePath%>front/company/images/3-bg.jpg"
			style="BORDER: #B9B9B9 1px solid; background-repeat: repeat-x"
			align="center">
			<tr>
				<td colspan="2">
					<table width="710" border="0" cellpadding="0" cellspacing="0"
						height="35" style="BORDER-bottom: #B9B9B9 1px solid;">
						<tr>
							<td width="12"></td>
							<td width="200" style="font-size: 14px; color: #FF5100">
								<strong> 高级检索企业 </strong>
							</td>
							<td>
								&nbsp;
							</td>
							<td width="100">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr align="center">
				<td colspan="2"></td>
			</tr>
			<tr>
				<td width="690" height="460" align="center" valign="top">
					<s:form method="post" name="seniorSearchForm" theme="simple"
						onsubmit="return check_data()"
						action="SeniorSearchCompany!seniorSearchFore.action?page=1"
						target="main">
						<table width="90%" border="0" cellspacing="0" cellpadding="0"
							align=left>
							<tr>
								<td colspan="3">
									<table border=0 width=100% style="display: block" id="regtable">
										<tr>
											<td colspan="3" height="25">
												&nbsp;
											</td>
										</tr>
										<tr>
											<td width="20">
												&nbsp;
											</td>
											<td>
												企&nbsp;业&nbsp;名&nbsp;称：
											</td>
											<td>
												<s:textfield name="name" size="60" />
											</td>
										</tr>
										<tr>
											<td width="20">
												&nbsp;
											</td>
											<td>
												地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;区：
											</td>
											<td align="left">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<s:if test="#parameters.ran[0] == 1">
													<select id="province" name="province">
														<option>
															请选择省
														</option>
													</select>
													<select id="cities" name="city">
														<option>
															请选择市
														</option>
													</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a
														href="<%=basePath%>front/company/SeniorSearchCompany.jsp?ran=0">手动填写条件请点击</a>
												</s:if>
												<s:if test="#parameters.ran[0] == 0">
													<input style="width: 200px;" type="text" name="address" />
													<a
														href="<%=basePath%>front/company/SeniorSearchCompany.jsp?ran=1">选择省市条件请点击</a>
												</s:if>
											</td>
										</tr>
										<tr>
											<td width="20">
												&nbsp;
											</td>
											<td>
												企&nbsp;业&nbsp;类&nbsp;型：
											</td>
											<td align="left">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input style="width: 15px; border-style: none;"
													type="checkbox" value="采矿" name="type" />
												采矿 &nbsp;&nbsp;
												<input style="width: 15px; border-style: none;"
													type="checkbox" value="安全与环境" name="type" />
												安全与环境 &nbsp;&nbsp;
												<input style="width: 15px; border-style: none;"
													type="checkbox" value="矿物加工" name="type" />
												矿物加工 &nbsp;&nbsp;
												<br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input style="width: 15px; border-style: none;"
													type="checkbox" value="冶金" name="type" />
												冶金 &nbsp;&nbsp;
												<input style="width: 15px; border-style: none;"
													type="checkbox" value="材料" name="type" />
												材料 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input style="width: 15px; border-style: none;"
													type="checkbox" value="矿业设备" name="type" />
												矿业设备
											</td>
										</tr>
										<tr>
											<td width="20">
												&nbsp;
											</td>
											<td>
												经营范围、主营产品：
											</td>
											<td align="left">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<s:textarea style="width: 70%;height: 100px;" name="range" />
											</td>
										</tr>
										<tr>
											<td colspan="3">
												&nbsp;
											</td>
										</tr>
										<tr>
											<td colspan="3" valign="middle" align="center">
												<input type="submit" name="Login" value="确 定"
													style="cursor: hand" class="Button" />
												<input type="reset" name="Reset" value="重 填"
													style="cursor: hand" class="Button" />
												<input type="button" name="back" value="关 闭"
													style="cursor: hand" class="Button"
													onclick="javascript:window.close()" />
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="18" colspan="3">
									&nbsp;
								</td>
							</tr>
						</table>
					</s:form>
				</td>
				<td width="7" valign="bottom"></td>
			</tr>
			<tr bgcolor="#E9E9E9">
				<td height="1" colspan="2"></td>
			</tr>
		</table>
	</body>
</html>
<script type="text/javascript">
window.onload = function() { 
var xmlDom; 
try { 
//针对的是IE浏览器 创建一个空的微软 XML 文档对象 
xmlDom = new ActiveXObject("Microsoft.XMLDOM"); 
} catch (err) { 
try { 
//在 Firefox 及其他浏览器中的 XML 解析器 
//创建一个空的 XML 文档对象。 
xmlDom = document.implementation.createDocument("", "", null); 
} catch (e) { 
} 
} 

//关闭异步加载，这样确保在文档完全加载之前解析器不会继续脚本的执行 
xmlDom.async = "false"; 

//解析器加载名为 "xxx.xml" 的 XML 文档、 
xmlDom.load("china.xml"); 

//获取xml文件的根节点 
var root = xmlDom.documentElement; 

//获取根节点下面的省节点 
var provinces = root.childNodes; 

var province = document.getElementById("province"); 
for ( var i = 0; i < provinces.length; i++) { 
//获取省节点的name属性的值 
var name = provinces[i].getAttribute("name"); 
//创建一个option 
var opt = document.createElement("option"); 
//为option添加文本 
opt.appendChild(document.createTextNode(name)); 
//添加到父节点中 
province.appendChild(opt); 

} 

var cities = document.getElementById("cities"); 
province.onchange = function() { 
var pce = document.getElementById("province"); 
var opts = pce.options; 
var opt1 = opts[pce.selectedIndex]; 

var name = opt1.innerHTML; 
for ( var i = 0; i < provinces.length; i++) { 
//获取省节点的name属性的值 
var name1 = provinces[i].getAttribute("name"); 
if (name == name1) { 
    cities.length=1;//每次改变的时候清空 
var pros = provinces[i]; 
var citys = pros.childNodes; 
//alert(citys.length+"===================="); 
for ( var j = 0; j < citys.length; j++) { 
//创建一个option 
var opt1 = document.createElement("option"); 
//为option添加文本 
opt1.appendChild(document.createTextNode(citys[j].firstChild.nodeValue)); 
//添加到父节点中 
cities.appendChild(opt1); 
} 
} 
} 
} 
} 
</script>