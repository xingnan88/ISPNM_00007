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
		<title>��ұ��ҵ��</title>
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
								<strong> �߼�������ҵ </strong>
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
												��&nbsp;ҵ&nbsp;��&nbsp;�ƣ�
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
												��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����
											</td>
											<td align="left">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
								<a
														href="<%=basePath%>front/company/SeniorSearchCompany.jsp?ran=0">�ֶ���д��������</a>
												</s:if>
												<s:if test="#parameters.ran[0] == 0">
													<input style="width: 200px;" type="text" name="address" />
													<a
														href="<%=basePath%>front/company/SeniorSearchCompany.jsp?ran=1">ѡ��ʡ����������</a>
												</s:if>
											</td>
										</tr>
										<tr>
											<td width="20">
												&nbsp;
											</td>
											<td>
												��&nbsp;ҵ&nbsp;��&nbsp;�ͣ�
											</td>
											<td align="left">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input style="width: 15px; border-style: none;"
													type="checkbox" value="�ɿ�" name="type" />
												�ɿ� &nbsp;&nbsp;
												<input style="width: 15px; border-style: none;"
													type="checkbox" value="��ȫ�뻷��" name="type" />
												��ȫ�뻷�� &nbsp;&nbsp;
												<input style="width: 15px; border-style: none;"
													type="checkbox" value="����ӹ�" name="type" />
												����ӹ� &nbsp;&nbsp;
												<br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input style="width: 15px; border-style: none;"
													type="checkbox" value="ұ��" name="type" />
												ұ�� &nbsp;&nbsp;
												<input style="width: 15px; border-style: none;"
													type="checkbox" value="����" name="type" />
												���� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input style="width: 15px; border-style: none;"
													type="checkbox" value="��ҵ�豸" name="type" />
												��ҵ�豸
											</td>
										</tr>
										<tr>
											<td width="20">
												&nbsp;
											</td>
											<td>
												��Ӫ��Χ����Ӫ��Ʒ��
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
												<input type="submit" name="Login" value="ȷ ��"
													style="cursor: hand" class="Button" />
												<input type="reset" name="Reset" value="�� ��"
													style="cursor: hand" class="Button" />
												<input type="button" name="back" value="�� ��"
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