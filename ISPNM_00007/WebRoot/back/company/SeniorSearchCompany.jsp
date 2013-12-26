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
		<link href="<%=basePath%>back/company/css/skin.css" rel="stylesheet"
			type="text/css" />
		<link href="<%=basePath%>back/company/css/myStyle.css"
			rel="stylesheet" type="text/css" />
		<link type="text/css"
			href="<%=basePath%>jquery-ui/css/start/jquery-ui-1.8.15.custom.css"
			rel="stylesheet" />
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-1.6.2.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-ui-1.8.15.custom.min.js"></script>
	</head>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top">
					<img src="<%=basePath %>images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="<%=basePath %>images/content-bg.gif">
					<div class="titlebt">
						�߼�������ҵ
					</div>
				</td>
				<td width="17" valign="top">
					<img src="<%=basePath %>images/nav-right-bg.gif" width="17" height="29" />
				</td>
			</tr>
		</table>
		<div id="mainContent" style="width:95%">
			<s:form name="seniorSearchForm" action="SeniorSearchCompany!seniorSearch.action?page=1"
				theme="simple" method="POST" onsubmit="return check_data()">
				<div id="title"
					style="width:100%;padding: 7px; text-align: center; border: 1px solid rgb(10, 100, 130);">
					<img src="<%=basePath %>images/icon2_004.png" style="vertical-align: top;" />
					������ҵ��Ϣ
				</div>
				<table style="width: 100%;" id="baseInfo" cellpadding="0"
					cellspacing="0">
					<tr>
						<td width="25%">
							��ҵ����
						</td>
						<td>
							<s:textfield name="name" />
						</td>
					</tr>
					<tr>
						<td>
							����
						</td>
						<td>
							<s:if test="#parameters.ran[0] == 1">
								<select id="province" name="province">
									<option>
										��ѡ��ʡ
									</option>
								</select> 
								<select id="cities" name="city">
									<option>
										��ѡ����
									</option>
								</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="<%=basePath %>back/company/SeniorSearchCompany.jsp?ran=0">�ֶ���д��������</a>
							</s:if>
							<s:if test="#parameters.ran[0] == 0">
								<input style="width:250px;" type="text" name="address" />
								<a href="<%=basePath %>back/company/SeniorSearchCompany.jsp?ran=1">ѡ��ʡ����������</a>
							</s:if>
						</td>
					</tr>
					<tr>
						<td>
							��ҵ����
						</td>
						<td>
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="�ɿ�" name="type" />
							�ɿ� &nbsp;&nbsp;
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="��ȫ�뻷��" name="type" />
							��ȫ�뻷�� &nbsp;&nbsp;
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="����ӹ�" name="type" />
							����ӹ� &nbsp;&nbsp;<br />
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="ұ��" name="type" />
							ұ�� &nbsp;&nbsp;
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="����" name="type" />
							���� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input style="width: 15px; border-style: none;" type="checkbox"
								value="��ҵ�豸" name="type" />
							��ҵ�豸
						</td>
					</tr>
					<tr>
						<td>
							��Ӫ��Χ����Ӫ��Ʒ
						</td>
						<td>
							<s:textarea style="width: 70%;height: 100px;" name="range" />
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
window.onload = function() { 
var xmlDom; 
try { 
//��Ե���IE����� ����һ���յ�΢�� XML �ĵ����� 
xmlDom = new ActiveXObject("Microsoft.XMLDOM"); 
} catch (err) { 
try { 
//�� Firefox ������������е� XML ������ 
//����һ���յ� XML �ĵ����� 
xmlDom = document.implementation.createDocument("", "", null); 
} catch (e) { 
} 
} 

//�ر��첽���أ�����ȷ�����ĵ���ȫ����֮ǰ��������������ű���ִ�� 
xmlDom.async = "false"; 

//������������Ϊ "xxx.xml" �� XML �ĵ��� 
xmlDom.load("china.xml"); 

//��ȡxml�ļ��ĸ��ڵ� 
var root = xmlDom.documentElement; 

//��ȡ���ڵ������ʡ�ڵ� 
var provinces = root.childNodes; 

var province = document.getElementById("province"); 
for ( var i = 0; i < provinces.length; i++) { 
//��ȡʡ�ڵ��name���Ե�ֵ 
var name = provinces[i].getAttribute("name"); 
//����һ��option 
var opt = document.createElement("option"); 
//Ϊoption����ı� 
opt.appendChild(document.createTextNode(name)); 
//��ӵ����ڵ��� 
province.appendChild(opt); 

} 

var cities = document.getElementById("cities"); 
province.onchange = function() { 
var pce = document.getElementById("province"); 
var opts = pce.options; 
var opt1 = opts[pce.selectedIndex]; 

var name = opt1.innerHTML; 
for ( var i = 0; i < provinces.length; i++) { 
//��ȡʡ�ڵ��name���Ե�ֵ 
var name1 = provinces[i].getAttribute("name"); 
if (name == name1) { 
    cities.length=1;//ÿ�θı��ʱ����� 
var pros = provinces[i]; 
var citys = pros.childNodes; 
//alert(citys.length+"===================="); 
for ( var j = 0; j < citys.length; j++) { 
//����һ��option 
var opt1 = document.createElement("option"); 
//Ϊoption����ı� 
opt1.appendChild(document.createTextNode(citys[j].firstChild.nodeValue)); 
//��ӵ����ڵ��� 
cities.appendChild(opt1); 
} 
} 
} 
} 
} 
</script>