<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
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

		<title>��ұ��ҵ��׼��</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<script type="text/javascript" src="back/standard/js/standard.js"></script>
		<script type="text/javascript">
		//�ж��������ҳ��ҳ���Ƿ�Ϸ�
		function tiao(){
		
			var r = /^\+?[1-9][0-9]*$/;����//������ 
		    var count = "${pager.pageCount}";
		    var value1 = document.getElementById("go").value;
		    var value0 = (value1-1)*20;
            
           //�ж�����
//		    if(isNaN(value1)){
//		    	alert("��Ч���֣�������1��"+"${pager.pageCount}"+"֮�������ֵ��");return false;
//		    }

			if(!(r.test(value1))){
			    	alert("��Ч���֣�������1��"+count+"֮�������ֵ��");return false;
				    }    
		    else{
			    if((value1<${pager.pageCount}+1)&&(value1>0)){
			    	url='standard/standardAction!list2?pager.offset='+value0;
					window.location.href= url;
			    	
				    } else{
			           alert("��Ч���֣�������1��"+count+"֮�������ֵ!");return false;
				    }
			    }
		    }
			function search2() {
				var url = "standardAction!list2?table.keyword=" + 
					document.getElementById("table.keyword").value;
				window.location.href = url;
			}
</script>
		<style type="text/css">
body {
	padding: 0px;
}

#standard a {
	padding-left: 10px;
	font: 14px;
	text-decoration: none;
	color: #666;
	text-decoration: none;
}

#standard a:hover {
	text-decoration: underline;
	color: #FF0000;
}

<%--
.fenlei a {
	color: #000000;
	font: 14px;
	text-indent: 50px;
	text-decoration: none;
	text-align: left;
}

.fenlei a:hover {
	color: #FF0000;
	text-decoration: underline;
}

--%>
.td1 {
	margin: 0px;
	padding-top: 5px;
	padding-bottom: 5px;
	padding-right: 5px;
	padding-left: 5px;
	border: 1px solid #CCC;
	background: #eee;
}

.td1 a {
	text-decoration: none;
	color: #FF0000;
}

.td1 a:hover {
	color: #FF0000;
	text-decoration: underline;
}

.menu {
	border: 1px solid #CCC;
	height: 26px;
	background: #eee;
	margin: 1px 0px;
}

.menu ul {
	list-style: none;
	margin: 0px;
	padding: 0px;
}

.menu ul li {
	float: left;
	padding: 0px 0px;
	height: 26px;
	line-height: 26px;
	color: #666;
}

.menu a {
	color: #666;
	text-decoration: none;
}

.menu a:hover {
	color: #F00;
}
-->
</style>

	</head>

	<body>
		<div width="746" class="menu">
			<ul>
				<li>
				<li>
					<a href="index.jsp" target="_blank">��ҳ</a>
				<li>
					>>
				</li>
				<li>
					<font color="red">��ұ���ɷ����׼ </font>
				</li>
				<li style="width: 300"></li>
				<li>
					��
					<font color="red">${Pager.items }</font>����Ϣ
				</li>
			</ul>

		</div>
		<%--
		<table width="700" border="0" cellpadding="0" cellspacing="0"
			style="border: 1px solid rgb(255, 55, 20)" align="center">
			<tr>
				<td width="500" class="td1" align="left">
				<a href="index.jsp" target="_blank">&nbsp;��ҳ</a>>>��ұ���ɷ����׼ 
				</td>

				<td align="right" width="200">
					��<font color="red">${Pager.items }</font>����Ϣ

				</td>

			</tr>
		</table>

		<table border="0" cellSpacing="0" cellPadding="0" class="fenlei">

			<tr>
				<td>
					&nbsp;
				</td>
			</tr>

			<tr>
				<td width="50%">&nbsp;
                 <a href="standard/standardAction!list2?table.keyword= ">���ɷ����׼��Ϣ|</a>
				<a href="standard/standardAction!list2?table.keyword=���ɷ���">���ɷ���|</a>
				<a href="standard/standardAction!list2?table.keyword=��׼">��׼|</a>
		       
				</td>
				<td align="center">
				ģ������:<input type="text" id="table.keyword" name="table.keyword" >
				<input type="button" value="����" onclick="search2();"> 
			
				</td>
				</td>
			</tr>

			<tr>
				<td>
					&nbsp;
				</td>
			</tr>
		</table>
		--%>
		<div class="menu">
			<ul>
				<li>
					<a href="standard/standardAction!list2?table.keyword= ">���ɷ����׼��Ϣ|</a>
				</li>
				<li>
					<a href="standard/standardAction!list2?table.keyword=���ɷ���">���ɷ���|</a>
				</li>
				<li>
					<a href="standard/standardAction!list2?table.keyword=��׼">��׼|</a>
				</li>
				<li>
					ģ������:
					<input type="text" id="table.keyword" name="table.keyword">
					<input type="button" value="����" onclick="search2();">
				</li>
			</ul>
		</div>




		<!-- �������չ�� -->
		<table id="standard" width="744" class="tbl" align="center" border="0"
			cellpadding="0" cellspacing="0"
			style="border: 1px solid rgb(255, 55, 20); border: 1px solid #CCC;">




			<s:iterator value="table.list" var="standard">
				<tr>
					<td height="30" width="633" align="left">

						<a target="_blank" style="word-break: break-all"
							title="${standard.title}"
							href="standard/standardAction!showDetailInput2?standard.id=${standard.id}">
							<s:set name="str" value="#standard.title"></s:set> <s:if
								test="#str.length()>30">
								<s:property value="#str.substring(0,30)+'...'" />
							</s:if> <s:else>
								<s:property value="#standard.title" />
							</s:else> </a>
					</td>

					<td width="100" align="center">
						<font color="red"> [${standard.createtime}]</font>
					</td>
				</tr>
			</s:iterator>



			<tr>
				<td height="20"></td>
			</tr>
			<tr>
				<td align="center">
					<!-- ��ҳ -->
					<c:if test="${pager.pageCount gt 1}">
						<!-- ҳ������1ҳʱ����ʾ��ҳЧ�� -->
						<pg:pager url="standard/standardAction!list2"
							export="current=pageNumber" items="${pager.items}"
							maxPageItems="${pager.maxPageItems}"
							maxIndexPages="${pager.maxIndexPages}">

							<pg:first>
								<a href="${pageUrl}">��ҳ</a>
							</pg:first>

							<pg:prev>
								<a href="${pageUrl}">��һҳ</a>
							</pg:prev>
							<pg:pages>
								<c:if test="${current eq pageNumber}">
									<span style="font-size: 16">${pageNumber}</span>&nbsp;
					  			</c:if>
								<c:if test="${!(current eq pageNumber)}">
									<a href="${pageUrl}">${pageNumber}</a>
								</c:if>
							</pg:pages>
							<pg:next>
								<a href="${pageUrl}">��һҳ</a>
							</pg:next>
							<pg:last>
								<a href="${pageUrl}">βҳ</a>
							</pg:last>
��<input name="go" type="text" id="go"
								style="width: 30px; height: 20px; text-align: center; vertical: middle"
								size="80">ҳ
	  <!--
        <input type="button" name="skip" value="��ת" onclick="window.location.href='standard/standardAction!list?pager.offset='+(document.getElementById('go').value-1)*20"/> 
	  -->
							<input type="button" name="skip" value="��ת"
								onClick="return tiao();">
						</pg:pager>
				ҳ��:<strong><font color="red"><fmt:formatNumber
									type="number" value="${pager.offset/20+1}"
									maxFractionDigits="0" /> </font>/${pager.pageCount}</strong>ҳ
		
		</c:if>
				</td>
			</tr>
		</table>

	</body>
</html>
