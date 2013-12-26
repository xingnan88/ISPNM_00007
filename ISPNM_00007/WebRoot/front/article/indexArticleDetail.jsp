<%@ page language="java" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
	<head>
		<title>¿óÒ±ÂÛÎÄ¿â</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />

		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/index.css" />
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-1.6.2.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-ui-1.8.15.custom.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/index.js"></script>
		<style type="text/css">
a.db {
	font-family: '¿¬Ìå';
}

label {
	display: block;
}
</style>
	</head>
	<body>
		<center>
			<table>
				<tr>
					<td colspan="2">
						<iframe marginwidth=0 marginheight=0 src="<%=basePath %>top.jsp" frameborder=no
							scrolling=no width=1020 height=125></iframe>
					</td>
				</tr>
				<tr>
					<td>
						<iframe marginwidth=0 marginheight=0 src="leftArticle.jsp" frameborder=no
							scrolling=no width=250 height=857></iframe>
					</td>
					<td>
						<iframe name="main" marginwidth=0 marginheight=0
							src="ArticleDetail!detailFore.action?articleId=${param.articleId }&articleName=${param.articleName }" frameborder=no scrolling=no width=766 height=857></iframe>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<iframe marginwidth=0 marginheight=0 src="<%=basePath %>bottom.jsp"
							frameborder=no scrolling=no width=100% height="280"></iframe>
					</td>
				</tr>
			</table>
		</center>
	</body>
</html>

