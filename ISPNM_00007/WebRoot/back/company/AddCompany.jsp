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
		<link href="<%=basePath%>back/article/css/skin.css" rel="stylesheet"
			type="text/css" />
		<link href="<%=basePath%>back/article/css/myStyle.css"
			rel="stylesheet" type="text/css" />
		<link type="text/css"
			href="<%=basePath%>jquery-ui/css/start/jquery-ui-1.8.15.custom.css"
			rel="stylesheet" />
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-1.6.2.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-ui-1.8.15.custom.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<script type="text/javascript">
			function check_data() {
				//按提交按钮时，检查数据是否为空
				if(addCompanyForm.name.value.length==0){
			  		alert("输入的企业名称为空，请重新输入！");
			  		return false;
				}
				if(addCompanyForm.contact.value.length==0){
			  		alert("输入的联系方式为空，请重新输入！");
			  		return false;
				}
				if(addCompanyForm.email.value.length==0){
			  		alert("输入的企业邮箱为空，请重新输入！");
			  		return false;
				}
				else if(addCompanyForm.email.value.length!=0){
					var email = addCompanyForm.email.value;  
　　　　　　	    	var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;  
　　　　　　       		flag = pattern.test(email);  
	　　　　　　  		if(!flag){  
	　　　　　　　　  		alert("邮箱格式有误，请重新输入!");  
	　　　　　　　　  		return false;  
	　　　　　　　		}  
				}
				if(addCompanyForm.range.value.length==0){
			  		alert("输入的经营范围、主营产品为空，请重新输入！");
			  		return false;
				}
				var obj = document.getElementsByName("type");
				for (i = 0;i < obj.length; i++){
					if (obj[i].checked==true) {
						return true;
					}
				}
				alert("没有选择企业类型，请先至少选择一个！");
				return false;
			}
		</script>
		<style type="text/css">
		#must{
			color: rgb(30,84,148);
			font-size:12px;
		}
		</style>
	</head>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top">
					<img src="<%=basePath%>images/left-top-right.gif" width="17"
						height="29" />
				</td>
				<td valign="top" background="<%=basePath%>images/content-bg.gif">
					<div class="titlebt">
						添加企业
					</div>
				</td>
				<td width="17" valign="top">
					<img src="<%=basePath%>images/nav-right-bg.gif" width="17"
						height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent" style="width:95%">
			<s:form name="addCompanyForm" onsubmit="return check_data()"
				action="AddCompany!addCompany.action?page=1" theme="simple"
				method="post">
				<div id="title"
					style="width:100%;padding: 7px; text-align: center; border: 1px solid rgb(10, 100, 130);">
					<img src="<%=basePath%>images/icon2_004.png"
						style="vertical-align: top;" />
					添加企业信息
				</div>
				<table style="width: 100%;" id="baseInfo" cellpadding="0"
					cellspacing="0">
					<tr>
						<td style="width: 30%;">
							企业名称
							<input type="hidden" name="ran" value="1" />
						</td>
						<td id="must">
							<s:textfield name="name" /> *
						</td>
					</tr>
					<tr>
						<td>
							地区
						</td>
						<td id="must">
							<s:if test="#parameters.ran[0] == 0">
								<select id="province" name="province">
									<option>
										请选择省
									</option>
								</select> 
								<select id="cities" name="city">
									<option>
										请选择市
									</option>
								</select> *
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="<%=basePath %>back/company/AddCompany.jsp?ran=1">手动填写请点击</a>
							</s:if>
							<s:if test="#parameters.ran[0] == 1">
								<input style="width:250px;" type="text" name="address" /> *
								<a href="<%=basePath %>back/company/AddCompany.jsp?ran=0">选择省市请点击</a>
							</s:if>
						</td>
					</tr>
					<tr>
						<td>
							联系方式
						</td>
						<td id="must">
							<s:textfield name="contact" /> *
						</td>
					</tr>
					<tr>
						<td>
							企业邮箱
						</td>
						<td id="must">
							<s:textfield name="email" /> *
						</td>
					</tr>
					<tr>
						<td>
							企业类型
						</td>
						<td>
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="采矿" name="type" />
							采矿 &nbsp;&nbsp;
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="安全与环境" name="type" />
							安全与环境 &nbsp;&nbsp;
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="矿物加工" name="type" />
							矿物加工 &nbsp;&nbsp;<br />
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="冶金" name="type" />
							冶金 &nbsp;&nbsp;
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="材料" name="type" />
							材料 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="矿业设备" name="type" />
							矿业设备
						</td>
					</tr>
					<tr>
						<td>
							经营范围、主营产品
						</td>
						<td id="must">
							<s:textarea style="width: 70%;height: 100px;" name="range" /> *
						</td>
					</tr>
				</table>
				<div style="text-align: center;">
					<s:submit type="image" src="images/tj.jpg" cssClass="imgButton" />
					<a href="#" onclick="document.forms[0].reset()"><img
							src="images/reset.jpg" class="imgButton" /> </a>
				</div>
			</s:form>
		</div>
	</body>
</html>
<script type="text/javascript">
	<c:if test="${requestScope.notInsert == 'not insert address'}">
		alert('没有填写地区，请填写！');
	</c:if>
</script>
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