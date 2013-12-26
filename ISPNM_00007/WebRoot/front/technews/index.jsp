<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

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

		<title>矿冶科技动态库</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link type="text/css" href="css/index.css" rel="stylesheet" />
	</head>

	<body style="text-align: center">
		<form action="front/technews/TechNews_tab" method="post" id="tabForm">
			<input type="hidden" id="page" name="page" value="1" />
			<input type="hidden" id="mainClassNumber" name="type"
				value="mainClassNumber" />
			<input type="hidden" id="content" name="content" value="采矿工程" />
		</form>
		<jsp:include page="/top.jsp"></jsp:include>
		<table id="main">
			<tbody>
				<tr>
					<td><jsp:include page="/left.jsp"></jsp:include>
					</td>
					<td id="content">

						<iframe name="x" src="front/technews/TechNews_tab_form.jsp"
							style="padding: 0px; border-style: none; width: 765px; height: 845px;">
						</iframe>

					</td>
				</tr>
			</tbody>
		</table>

		<jsp:include page="/bottom.jsp"></jsp:include>
	</body>

</html>