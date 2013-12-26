<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>My JSP 'browser.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<style type="text/css">
.resizeDivClass {
	position: relative;
	width: 4;
	z-index: 1;
	left: expression(this.parentElement.offsetWidth -   3);
	cursor: e-resize;
}
</style>
		<script type="text/javascript">

function MouseDownToResize(obj) {
	obj.mouseDownX = event.clientX;
	obj.pareneTdW = obj.parentElement.offsetWidth;
	obj.pareneTableW = theObjTable.offsetWidth;
	obj.setCapture();
}

function MouseMoveToResize(obj) {
	if (!obj.mouseDownX) {
		return false;
	}
	var newWidth = obj.pareneTdW * 1 + event.clientX * 1 - obj.mouseDownX;
	if (newWidth > 0) {
		obj.parentElement.style.width = newWidth;
		theObjTable.style.width = obj.pareneTableW * 1 + event.clientX * 1
				- obj.mouseDownX;
	}
}
function MouseUpToResize(obj) {
	obj.releaseCapture();
	obj.mouseDownX = 0;
}

function MouseDownToResize2(obj) {
	obj.mouseDownY = event.clientY;
	obj.pareneTrH = obj.parentElement.offsetHeight;

	obj.pareneTableH = theObjTable.offsetHeight;
	obj.setCapture();
}

function MouseMoveToResize2(obj) {
	if (!obj.mouseDownY) {
		return false;
	}
	var newWidth = obj.pareneTrH * 1 + event.clientY * 1 - obj.mouseDownY;

	if (newWidth > 0) {
		obj.parentElement.style.height = newWidth;
		theObjTable.style.height = obj.pareneTableH * 1 + event.clientY * 1
				- obj.mouseDownY;
	}
}

function MouseUpToResize2(obj) {
	obj.releaseCapture();
	obj.mouseDownY = 0;
}
</script>
		<script type="text/javascript">
function unselectall() {
	if (document.myform.chkAll.checked) {
		document.myform.chkAll.checked = document.myform.chkAll.checked & 0;
	}
}
function CheckAll() {
	var checkvar = document.getElementsByName("checkbox");
	for ( var i = 0; i < checkvar.length; i++) {
		var e = checkvar[i];
		e.checked = document.myform.chkAll.checked;
	}
}
function piliang() {
	var count = 0;
	var checkvar = document.getElementsByName("checkbox");
	for ( var i = 0; i < checkvar.length; i++) {
		if (checkvar[i].checked) {
			count++;
		}
	}
	if (count != 0) {
		if (confirm("��ȷ��ɾ����Щר����")) {
			document.getElementById("myform").action = "<%=basePath%>back/expert/expert_piliangDel.action";
			document.getElementById("myform").submit();
		}
	} else {
		alert("��ѡ��Ҫɾ����ר��");
	}
}
</script>
	</head>
	
		<form action="" method="post" name="myform" id="myform">
			<table id="theObjTable" border="2" cellpadding=0 cellspacing=0
				bordercolor="#E8E8FF" align="center">
				<tr height="45" align="center" bgcolor="#E8E8FF">
					<td width="30">
						&nbsp;
					</td>
					<td width="50" align="center">
						ר����
					</td>
					<td width="100" align="center">
						�о�����
					</td>
					<td width="150" align="center">
						רҵ����
					</td>
					<td width="150" align="center">
						�о��ɹ�
					</td>
					<td width="50" align="center">
						��λ
					</td>
					<td width="50" align="center">
						ְ��
					</td>
					<td width="150" align="center">
						����
					</td>
				</tr>

				<s:iterator value="experts" id="expert">
					<tr bgcolor="#E8FFE8"
					onmousemove="this.style.backgroundColor='#FFF68F'"
					onmouseout="this.style.backgroundColor='#E8FFE8'">
						<td>
							
							<input type="checkbox" name="checkbox"
								id="<s:property value="#expert.id"/>"
								value="<s:property value="#expert.id"/>" onclick='unselectall()' />
						</td>
						<td>
							<s:property value="#expert.name" />
						</td>
						<td>
							<s:property value="#expert.researchFields" />
						</td>
						<td>
							<s:set name="str" value="#expert.majorFields"></s:set>
							<s:if test="#str.length()>20">
								<s:property value="#str.substring(0,20)+'...'" />
							</s:if>
							<s:else>
								<s:property value="#expert.majorFields" />
							</s:else>

						</td>
						<td>
							<s:set name="str" value="#expert.researchCon"></s:set>
							<s:if test="#str.length()>20">
								<s:property value="#str.substring(0,30)+'...'" />
							</s:if>
							<s:else>
								<s:property value="#expert.researchCon" />
							</s:else>
						<td>
							<s:property value="#expert.workplace" />
						</td>
						<td>

							<s:property value="#expert.workposition" />
						</td>

						<td>

							<a
								href="<%=basePath%>back/expert/expert_browser.action?id=<s:property value="#expert.id"/>">���</a>

							<a
								href="<%=basePath%>back/expert/expert_goUpdate.action?id=<s:property value="#expert.id"/>">����</a>

							<a
								onclick="javascript:{if(confirm('��Ҫɾ����ר����'))
					location.href='<%=basePath%>back/expert/expert_delete.action?id=<s:property value="#expert.id"/>';}"
								href="javascript:">ɾ��</a>
						</td>
					</tr>
				</s:iterator>

			</table>
			<table align="center"
				style="font-size: 12px; height: 12px; width: 500px; border-color: #ffffff; background-color: rgb(255, 255, 192)">
				<tr>
					<td>
						<input type="button" value="����ɾ��" onclick="piliang()">
					</td>
					<td>
						��
						<s:property value="pageCount" />
						ҳ
					</td>
					<td>
						��ʾ��
						<s:property value="page" />
						ҳ
					</td>
					<td>
						<a href="<%=basePath%>back/expert/expert_findAll.action?page=1">��ҳ</a>
					</td>
					<td>
						<a
							href="<%=basePath%>back/expert/expert_findAll.action?page=<%=(Integer) request.getAttribute("page") - 1%>">��һҳ</a>
					</td>
					<td>
						<a
							href="<%=basePath%>back/expert/expert_findAll.action?page=<%=(Integer) request.getAttribute("page") + 1%>">��һҳ</a>
					</td>
					<td>
						<a
							href="<%=basePath%>back/expert/expert_findAll.action?page=<s:property value="pageCount"/>">βҳ</a>
					</td>
					<td>
						ת��
						<select id="page" name="page" onchange="goCurrentPage()">
							<%
								int pageCount = (Integer) request.getAttribute("pageCount");

								for (int b = 1; b < (Integer) request.getAttribute("page"); b++) {
									out.println("<option value=" + b + ">" + b + "</option>");
								}
								out.println("<option value="
										+ (Integer) request.getAttribute("page")
										+ " selected='selected'>"
										+ (Integer) request.getAttribute("page") + "</option>");
								for (int i = (Integer) request.getAttribute("page") + 1; i <= pageCount; i++) {
									out.println("<option value=" + i + ">" + i + "</option>");
								}
							%>
						</select>
						ҳ
						<script type="text/javascript">
function goCurrentPage() {
	var obj = document.getElementById("page");
	var page = obj.options[obj.selectedIndex].value;
	location.href = "<%=basePath%>back/expert/expert_findAll.action?page="
			+ page;
}
</script>

					</td>
				</tr>
			</table>
		</form>
</html>
