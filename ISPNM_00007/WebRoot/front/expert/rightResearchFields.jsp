<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
		<base href="<%=basePath%>">
		<title>��ұ��ҵר�ҿ�</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<script type="text/javascript">
			function goCurrentPage()
			{
				var obj=document.getElementById("page");
				var page=obj.options[obj.selectedIndex].value;
				alert("<%=basePath %>front/expert/expert_findByField?page="+page+"&researchFields=<s:property value="researchFields"/>");
				location.href="<%=basePath %>front/expert/expert_findByField?page="+page+"&researchFields=<s:property value="researchFields"/>";
			}
		</script>
	</head>
	<body>
		&nbsp;&nbsp;&nbsp;
		<font color="#3300CC">�о����� �� <s:property value="researchFields" />��
		</font>
		<br />
		<br />
		<table width="80%" border="0" height="100%" align="center">
			<tr>
				<s:iterator value="experts" id="expert" status="st">
					<td align="center" height="20" width="60">
						<a
							href="<%=basePath%>front/expert/expert_findById?id=<s:property value="#expert.id" />"><font
							color="#3300CC"><s:property value="#expert.name" /> </font> </a>
					</td>
					<s:if test="#st.modulus(8)==0">
						<s:if test="#st.last">
			</tr>
			</s:if>
			<s:else>
				</tr>
				<tr>
					<td height="20"><br><br></td>
				</tr>
				<tr>
			</s:else>
			</s:if>
			</s:iterator>
		</table>
		<br/>
		<div align="center">
	��<s:property value="pageCount"/>ҳ&nbsp;	��ʾ�ڼ�ҳ&nbsp;��ҳ&nbsp;��һҳ&nbsp;	��һҳ&nbsp;��һҳ&nbsp;βҳ&nbsp;go
					<select name="page" id="page" onchange="goCurrentPage()">
					<% int pageCount=(Integer)request.getAttribute("pageCount");
						for(int i=1;i<=pageCount;i++){
							out.println("<option value='"+i+"'>"+i+"</option>");
						}
					%>
					</select>
		</div>
	</body>
</html>
