<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<% String researchFields=new String(request.getParameter("researchFields").getBytes("ISO-8859-1"),"GB2312"); 
 %>

<html>
	<head>
		<base href="<%=basePath%>">
		<title>矿冶行业专家库</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/index.css">
		<script type="text/javascript"
			src="<%=basePath%>/front/expert/jquery-ui/js/jquery-1.6.2.min.js">
</script>
		<script type="text/javascript"
			src="<%=basePath%>/front/expert/jquery-ui/js/jquery-ui-1.8.15.custom.min.js">
</script>
		<script type="text/javascript" src="<%=basePath%>front/expert/js/index.js">
</script>
		<script type="text/javascript">
function go1(){
		location.href="<%=basePath%>front/expert/expert_findByField.action?researchFields=采矿工程&page=1";
}
function go2(){
		location.href="<%=basePath%>front/expert/expert_findByField.action?researchFields=安全与环境工程&page=1"
}
function go3(){
	location.href="<%=basePath%>front/expert/expert_findByField.action?researchFields=矿物加工工程&page=1"
}
function go4(){
	location.href="<%=basePath%>front/expert/expert_findByField.action?researchFields=冶金工程&page=1"
}
function go5(){
	location.href="<%=basePath%>front/expert/expert_findByField.action?researchFields=材料工程&page=1"
}

function go6(){
	location.href="<%=basePath%>front/expert/expert_findByField.action?researchFields=矿冶设备工程&page=1"
	
}

</script>
<script type="text/javascript">
	function sub(){
	var name=document.getElementById("name").value;
	var researchFields=document.getElementById("researchFields").value;
	//alert("<%=basePath%>front/expert/expert_find.action?page=1&researchFields="+researchFields+"&name="+name)
		location.href="<%=basePath%>front/expert/expert_find.action?page=1&researchFields="+researchFields+"&name="+name;
	
	}
</script>
	</head>
	<body>
			<div id="re" align="right"
				style="font-size: 14px; background-color: #EBECED;width: 762px">
				<font color="#0000ff"><b>研究领域 </b> </font>
				<select name="researchFields" id="researchFields">
					<option value="研究领域">
						研究领域
					</option>
					<option value="采矿工程">
						采矿工程
					</option>
					<option value="安全与环境工程">
						安全与环境工程
					</option>
					<option value="矿物加工工程">
						矿物加工工程
					</option>
					<option value="冶金工程">
						冶金工程
					</option>
					<option value="材料工程">
						材料工程
					</option>
					<option value="矿冶设备工程">
						矿冶设备工程
					</option>

				</select>
				<font color="#0000ff"><b>专家名</b> </font>
				<input type="text" name="name" id="name"
					style="height: 20px; width: 100px" />
				<input type="submit" value="搜索" style="width: 40px; height: 20px" onclick="sub()"/>
			</div>
			<div id="recoms"
				style="width: 762px; background-color: #ffffff; border-color: #ffffff; margin-left: 0px; margin-top: 0px; height: 100%">
				<div id="tabs">
					<ul style="padding-left: 0; margin-top: 0px;">
						<%
							int a = 0;
						if (researchFields.equals("采矿工程"))
							{
								a = 0;
							}
							if (researchFields.equals("安全与环境工程"))
							{
								a = 1;
							}
							if (researchFields.equals("矿物加工工程"))
							{
								a = 2;
							}
							if (researchFields.equals("冶金工程"))
							{
								a = 3;
							}
							if (researchFields.equals("材料工程"))
							{
								a = 4;
							}
							if (researchFields.equals("矿冶设备工程"))
							{
								a = 5;
							}
						%>
						<li <%=a == 0 ? "class='now'" : ""%>>
							<a onclick=" go1()" href="javascript:" name="recom-0">&nbsp;采矿工程&nbsp;</a>
						</li>
						<li <%=a == 1 ? "class='now'" : ""%>>
							<a onclick=" go2()" href="javascript:" name="recom-1">&nbsp;安全与环境工程&nbsp;</a>
						</li>
						<li <%=a == 2 ? "class='now'" : ""%>>
							<a onclick=" go3()" href="javascript:" name="recom-2">&nbsp;矿物加工工程&nbsp;</a>
						</li>
						<li <%=a == 3 ? "class='now'" : ""%>>
							<a onclick="go4()" href="javascript:" name="recom-3">&nbsp;冶金工程&nbsp;</a>
						</li>
						<li <%=a == 4 ? "class='now'" : ""%>>
							<a onclick=" go5()" href="javascript:" name="recom-4">&nbsp;材料工程&nbsp;</a>
						</li>
						<li <%=a == 5 ? "class='now'" : ""%>>
							<a onclick=" go6()" href="javascript:" name="recom-5">&nbsp;矿业设备工程&nbsp;</a>
						</li>
					</ul>
				</div>

				<div id="recom-<%=a%>" class="recom">
					<div style="width: 762px;">
						<span><label>
								<%= researchFields %>
							</label> </span>
						<span><label>
								专家名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;专业领域
							</label> </span>
						<s:iterator value="experts" id="expert" status="st">
							<a target="_black"
							onmousemove="this.style.backgroundColor='#FFF68F'"
								onmouseout="this.style.backgroundColor='#ffffff'"
								style="border-bottom-color: #ffffff"
								href='<%=basePath%>front/expert/expert_findById.action?id=<s:property value="#expert.id" />'><s:property
									value="#expert.name"  escape="false"/>
										<s:if test="#expert.name.length()==3">
								&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
							</s:if> <s:else>
								&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								</s:else> 
								
								<s:if test="#expert.majorFields.length()>20">
									<s:property value="#expert.majorFields.substring(0, 20)+'...'"
										escape="false" />
								</s:if> <s:else>
									<s:property value="#expert.majorFields" escape="false" />
								</s:else> </a>

						</s:iterator>
						<table align="center"
							style="font-size: 12px; height: 12px; width: 500px; border-color: #ffffff;">
							<tr>
								<td>
									共
									<s:property value="pageCount" />
									页
								</td>
								<td>
									显示第
									<s:property value="page" />
									页
								</td>
								<td>
									<a style="background-image: url('images/a.png');"
										href="<%=basePath%>front/expert/expert_findByField.action?researchFields=${researchFields}&page=1">首页</a>
								</td>
								<td>
									<a style="background-image: url('images/a.png');"
										href="<%=basePath%>front/expert/expert_findByField.action?researchFields=${researchFields}&page=<%=(Integer) request.getAttribute("page") - 1%>">上一页</a>
								</td>
								<td>
									<a style="background-image: url('images/a.png');"
										href="<%=basePath%>front/expert/expert_findByField.action?researchFields=${researchFields}&page=<%=(Integer) request.getAttribute("page") + 1%>">下一页</a>
								</td>
								<td>
									<a style="background-image: url('images/a.png');"
										href="<%=basePath%>front/expert/expert_findByField.action?researchFields=${researchFields}&page=<s:property value="pageCount"/>">尾页</a>
								</td>
								<td>
									转到
									<select id="page" name="page" onchange="goCurrentPage()">
										<%
											int pageCount = (Integer) request.getAttribute("pageCount");

											for (int b = 1; b < (Integer) request.getAttribute("page"); b++)
											{
												out.println("<option value=" + b + ">" + b + "</option>");
											}
											out.println("<option value="
													+ (Integer) request.getAttribute("page")
													+ " selected='selected'>"
													+ (Integer) request.getAttribute("page") + "</option>");
											for (int i = (Integer) request.getAttribute("page") + 1; i <= pageCount; i++)
											{
												out.println("<option value=" + i + ">" + i + "</option>");
											}
										%>
									</select>
									页
									<script type="text/javascript">
function goCurrentPage() {
	var obj = document.getElementById("page");
	var page = obj.options[obj.selectedIndex].value;
	location.href = "<%=basePath%>front/expert/expert_findByField.action?page="+ page + "&researchFields=${researchFields}";
}
</script>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>

	</body>
</html>
