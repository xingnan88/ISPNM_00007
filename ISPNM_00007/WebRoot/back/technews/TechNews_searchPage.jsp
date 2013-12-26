<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

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



	<form id="del" name="del" action="back/tecknews/TechNews_deleteSelect"
		method="post">
		<table width=100% border="1" cellpadding=0 cellspacing=0 bordercolor="#E8E8FF"
			align="center">
			<tr height="45" align="center" bgcolor="#E8E8FF">
				
				<td width="90">
					
				</td>
				<td width="150">
					ID
				</td>
				<td width="150">
					信息标题
				</td>
				<td width="150">
					发布时间
				</td>
				
				<td width="160">
					编辑
				</td>
			</tr>
			<s:iterator value="pageBean.list" var="techNews" status="status">
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
						id="${techNews.id}"
						value="${techNews.id}"
						onclick="ChkSonClick('chkSon','chkAll')"></td>
				
				<td>
					${techNews.id}
				</td>
				<td>
				<a href="TechNews_show?id=${techNews.id}">
					${newstitle}</a>
				</td>
				<td>
					<s:date name="#techNews.newstime" format="yyyy-MM-dd"/>
				</td>
				
				<td>
					<a href="TechNews_updateInput?id=${techNews.id}">[修改]</a>
					<a href="TechNews_delete?id=${techNews.id}">[删除]</a>
					
				</td>
				</tr>
			</s:iterator>
			
		</table>
	</form>

<div style="margin-top: 40px;">
	<center>
		<s:property value="pageBean.ctrlInfo" escape="false" />
	</center>
</div>


