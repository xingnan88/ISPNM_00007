<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
	<head>
		<base href="<%=basePath%>" />

		<title>矿冶科技动态库</title>

		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		<script type="text/javascript" src="js/jquery-1.6.2.js"></script>
		<script type="text/javascript" src="<%=basePath%>/front/technews/js/submitTab.js"></script>
		<link rel="stylesheet" type="text/css" href="css/tab.css" />


	</head>

	<body>
		<form action="front/technews/TechNews_tab" method="post" id="tabForm">
			<input type="hidden" id="page" name="page" value="1" />
			<input type="hidden" id="mainClassNumber" name="type"
				value="mainClassNumber" />
			<input type="hidden" id="content" name="content" />
		</form>
		<div id="tab">
			<div id="title">
				<ul>
					<li>
						<a>采矿工程</a>
					</li>
					<li>
						<a>安全与环境工程</a>
					</li>
					<li>
						<a>矿物加工工程</a>
					</li>
					<li>
						<a>冶金工程</a>
					</li>
					<li>
						<a>材料工程</a>
					</li>
					<li>
						<a>矿冶设备工程</a>
					</li>
				</ul>
			</div>
			<hr />

			<div id="content">
				<div class="list">
					<table width="600" cellspacing="0" cellpadding="0" border="0"
						align="center">
						<s:iterator value="pageBean.list" var="t" status="status">
							<tr>
								<form method="post" action="front/technews/TechNews_show" target="_blank">
									<input type="hidden" value="<s:property value="#t.id"/>"
										name="id" id="id" />
								</form>
								<td width="20" valign="middle" height="24" align="left">
									<img src="images/dit1.gif">
								</td>
								<td style="width: 350px;" align="left">

									<s:set name="str" value="#t.newstitle"></s:set>
									<s:if test="#str.length()>20">
										<s:property value="#str.substring(0,20)+'...'" />
									</s:if>
									<s:else>
										<s:property value="#t.newstitle" />
									</s:else>

								</td>
								<td style="width: 100px;" align="left">
									<s:property value="#t.bigclassname" />
								</td>
								<td style="width: 100px;" align="left">
									<s:property value="#t.smallclassname" />
								</td>
								<td style="width: 100px;" align="center">
									<s:date name="#t.newstime" format="yyyy-MM-dd" />
								</td>
							</tr>

						</s:iterator>
					</table>
					<hr />
					<div class="page">

						<s:property value="pageBean.ctrlInfo1" escape="false" />
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
