<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<style type="text/css">
legend {
	color: #0b77b7;
	font-size: 1.2em;
}

fieldset {
	border: 1px solid #ddd;
	padding: 0 0.5em 0.5em;
}

label {
	float: left;
	width: 10em;
	text-align: right;
	margin-right: 1em;
}

a {
	color: #DAA520;
	font-size: 12px;
}
</style>
<style>                                                                                                                                                                                                                                                                                                                        
a{TEXT-DECORATION:none}
</style>
<script language="javascript" src="<%=basePath%>js/checkAll/checkAll.js"></script>
<fieldset>
高级搜索
</fieldset>


	<form id="del" name="del" action="TechNews_deleteSelect"
		method="post">
		<table  width=100% border="1" cellpadding=0 cellspacing=0 bordercolor="#E8E8FF"
			align="center">
			<tr height="45" align="center" bgcolor="#E8E8FF">
				<td width="30">
					&nbsp;
				</td>
				<td width="150">
					ID
				</td>
				<td width="150">
					信息标题
				</td>
				<td width="150">大类</td>
				<td width="150">小类</td>
				<td width="150">
					发布时间
				</td>
				
				<td width="160">
					编辑
				</td>
			</tr>
			<s:iterator value="pageBean.list" var="t" status="status">
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
						id="${t.id}"
						value="${t.id}"
						onclick="ChkSonClick('chkSon','chkAll')">
				</td>
				
				<td>
					${t.id}
					
				</td>
				
				<td>
				<a href="TechNews_show?id=${t.id}">
					${t.newstitle}</a>
				</td>
				<td>
					${t.bigclassname}
				</td>
				<td>
					${t.smallclassname}
				</td>
				<td>
				<s:date name="#t.newstime" format="yyyy-MM-dd"/>
					
				</td>
				
				<td>
					<a href="TechNews_updateInput?id=${t.id}">[修改]</a>
					<a href="TechNews_delete?id=${t.id}">[删除]</a>
					
				</td>
				</tr>
			</s:iterator>
			<tr bgcolor="white" height="45">
				<td colspan="6">
					<input name="chkAll" id="chkAll" title="全选"
						onClick="ChkAllClick('chkSon','chkAll')" type="checkbox" />
					全选
					<input name="chkOpposite" id="chkOpposite" title="反选"
						onClick="ChkOppClick('chkSon')" type="checkbox" />
					反选
					<img src="<%=basePath%>images/del.jpg"
						onclick="document.del.submit()" />
				</td>
			</tr>
			
		</table>
	</form>

<div style="margin-top: 40px;">
	<center>
		
		<s:property value="pageBean.ctrlInfo" escape="false" />
	</center>
</div>


