<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%session.setAttribute("title","ר����Ϣ"); %>
<%@ include file="head.jsp"%>
<script language="javascript" src="<%=basePath%>js/checkAll/checkAll.js"></script>
<style type="text/css">
legend {
	color:#0b77b7;
	font-size:1.2em;
}
fieldset {
	border:1px solid #ddd;
	padding:0 0.5em 0.5em;
}
		label {
	float:left;
	width:10em;
	text-align:right;
	margin-right:1em;
}
a {
color: #DAA520; font-size: 12px;
 }
</style>
<br />
<br />

<fieldset>
<legend>
		ר����Ϣ
</legend>
<form id="del" name="del" action="back/patent/Patent_deleteSelect" method="post">
	<table border="1" cellpadding=0 cellspacing=0 bordercolor="#E8E8FF"
		align="center">
		<tr height="45" align="center" bgcolor="#E8E8FF">
			<td width="30">
				&nbsp;
			</td>
			<td width="150">
				�����
			</td>
			<td width="150">
				������
			</td>
			<td width="150">
				������
			</td>
			<td width="250">
				����
			</td>
			<td width="160">
				�༭
			</td>
		</tr>
		<s:iterator value="pageBean.list" var="p" status="status">
			<s:if test="#status.odd == true">
				<tr bgcolor="#E8FFE8" align="center"
					onmousemove="this.style.backgroundColor='#FFF68F'"
					onmouseout="this.style.backgroundColor='#E8FFE8'">
			</s:if>
			<s:else>
				<tr bgcolor="white" align="center"
					onmousemove="this.style.backgroundColor='#FFF68F'"
					onmouseout="this.style.backgroundColor='white'">
			</s:else>
			<td>
				<input type="checkbox" name="chkSon"
					id="<s:property value="#p.id"/>"
					value="<s:property value="#p.id"/>"
					onclick="ChkSonClick('chkSon','chkAll')">
			</td>
			<td>
				<s:property value="#p.number" />
				&nbsp;
			</td>
			<td>
				<s:property value="#p.openNumber" />
				&nbsp;
			</td>
			<td>
				<s:property value="#p.mainClassNumber" />
				&nbsp;
			</td>
			<td>
				<s:property value="#p.name" />
				&nbsp;
			</td>
			<td>
				<a href="back/patent/Patent_read?id=<s:property value="#p.id"/>"><font color="#DAA520">�鿴</font></a>
				<a href="back/patentPatent_delete?id=<s:property value="#p.id"/>"><font color="#DAA520">ɾ��</font></a>
				<a href="back/patent/Patent_updateInput?id=<s:property value="#p.id"/>"><font color="#DAA520">�޸�</font></a>
			</td>
			</tr>
		</s:iterator>
		<tr bgcolor="white" height="45">
			<td colspan="6">
				<input name="chkAll" id="chkAll" title="ȫѡ"
					onClick="ChkAllClick('chkSon','chkAll')" type="checkbox" />
				ȫѡ
				<input name="chkOpposite" id="chkOpposite" title="��ѡ"
					onClick="ChkOppClick('chkSon')" type="checkbox" />
				��ѡ
				<img src="<%=basePath%>images/del.jpg" onclick="document.del.submit()"/>
			</td>
		</tr>
	</table>
</form>
</fieldset>
<div style="margin-top: 40px;">
	<center>
		<s:property value="pageBean.ctrlInfo" escape="false" />
	</center>
</div>

<jsp:include page="bottom.jsp"></jsp:include>
