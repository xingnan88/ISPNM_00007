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
				//���ύ��ťʱ����������Ƿ�Ϊ��
				if(addCompanyForm.name.value.length==0){
			  		alert("�������ҵ����Ϊ�գ����������룡");
			  		return false;
				}
				if(addCompanyForm.contact.value.length==0){
			  		alert("�������ϵ��ʽΪ�գ����������룡");
			  		return false;
				}
				if(addCompanyForm.email.value.length==0){
			  		alert("�������ҵ����Ϊ�գ����������룡");
			  		return false;
				}
				else if(addCompanyForm.email.value.length!=0){
					var email = addCompanyForm.email.value;  
������������	    	var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;  
������������       		flag = pattern.test(email);  
	������������  		if(!flag){  
	����������������  		alert("�����ʽ��������������!");  
	����������������  		return false;  
	��������������		}  
				}
				if(addCompanyForm.range.value.length==0){
			  		alert("����ľ�Ӫ��Χ����Ӫ��ƷΪ�գ����������룡");
			  		return false;
				}
				var obj = document.getElementsByName("type");
				for (i = 0;i < obj.length; i++){
					if (obj[i].checked==true) {
						return true;
					}
				}
				alert("û��ѡ����ҵ���ͣ���������ѡ��һ����");
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
						�����ҵ
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
					�����ҵ��Ϣ
				</div>
				<table style="width: 100%;" id="baseInfo" cellpadding="0"
					cellspacing="0">
					<tr>
						<td style="width: 30%;">
							��ҵ����
							<input type="hidden" name="ran" value="1" />
						</td>
						<td id="must">
							<s:textfield name="name" /> *
						</td>
					</tr>
					<tr>
						<td>
							����
						</td>
						<td id="must">
							<s:if test="#parameters.ran[0] == 0">
								<select id="province" name="province">
									<option>
										��ѡ��ʡ
									</option>
								</select> 
								<select id="cities" name="city">
									<option>
										��ѡ����
									</option>
								</select> *
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="<%=basePath %>back/company/AddCompany.jsp?ran=1">�ֶ���д����</a>
							</s:if>
							<s:if test="#parameters.ran[0] == 1">
								<input style="width:250px;" type="text" name="address" /> *
								<a href="<%=basePath %>back/company/AddCompany.jsp?ran=0">ѡ��ʡ������</a>
							</s:if>
						</td>
					</tr>
					<tr>
						<td>
							��ϵ��ʽ
						</td>
						<td id="must">
							<s:textfield name="contact" /> *
						</td>
					</tr>
					<tr>
						<td>
							��ҵ����
						</td>
						<td id="must">
							<s:textfield name="email" /> *
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
		alert('û����д����������д��');
	</c:if>
</script>
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