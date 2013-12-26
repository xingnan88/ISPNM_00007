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
<legend>快速搜索</legend>
 <form action="TechNews_simpleSearch?page=1" method="post">
   <br> 信息搜索：<input type="text" name="content" />
 <input type="submit" name="submit"  value="提交"/>
 <a href="TechNews_searchInput"> <font color="red">高级搜索</font></a>
 </form>
</fieldset>


	<form id="del" name="del" action="TechNews_deleteSelect"
		method="post">
		<table  width=99.9% border="1" cellpadding=0 cellspacing=0 bordercolor="#E8E8FF"
			align="center">
			<tr height="45" align="center" bgcolor="#E8E8FF">
				<td width="30">
					&nbsp;
				</td>
				<td width="50">
					ID
				</td>
				<td width="200">
					信息标题
				</td>
				<td width="150">大类</td>
				<td width="150">小类</td>
				<td width="150">
					发布时间
				</td>
				
				<td width="150">
					编辑
				</td>
			</tr>
			<s:iterator value="pageBean.list" var="techNews" status="status">
				<s:if test="#status.odd == true">
					<tr align="center"
						onmousemove="this.style.backgroundColor='#FFF68F'"
						onmouseout="this.style.backgroundColor='white'">
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
						onclick="ChkSonClick('chkSon','chkAll')">
				</td>
				
				<td>
					${techNews.id}
				</td>
				
				<td>
				<a href="TechNews_show?id=${techNews.id}">
					${newstitle}</a>
				</td>
				<td>
					${techNews.bigclassname}
				</td>
				<td>
					${techNews.smallclassname}
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
				
			<tr  height="45">
				
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


