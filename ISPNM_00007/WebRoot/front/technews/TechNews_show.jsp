<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style>
a {
	TEXT-DECORATION: none
}
</style>
		<link rel="stylesheet" type="text/css" href="index.css" />

		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-1.6.2.min.js">
</script>
		<script type="text/javascript"
			src="<%=basePath%>jquery-ui/js/jquery-ui-1.8.15.custom.min.js">
</script>
		<script type="text/javascript" src="index.js">
</script>
		<script src="Scripts/swfobject_modified.js" type="text/javascript">
</script>
		<style type="text/css">
a.db {
	font-family: '楷体';
}

label {
	display: block;
}
</style>
		<script>
</script>

	</head>

	<body style="text-align: center">

		<jsp:include page="/top.jsp"></jsp:include>
		<table id="main">
			<tr>

				<td>
					<table width=750 height=900>
						<tbody>
							<tr>
								<td>
									<table width="710" border="0" cellpadding="0" cellspacing="0"
										height="35">
										<tbody>
											<tr>
												<td height="28" align="center" valign="middle">
													<br>
													<b>${techNews.newstitle}</b>
												</td>
											</tr>
											<br />

											<tr>
												<td height="30" align="center" valign="middle"
													style="border-bottom: 1px solid #FA6B0D; font-size: 9pt">
													发布时间：${fn:substring(techNews.newstime,0,10) }&nbsp;
													来源：${techNews.newsfrom}&nbsp;&nbsp; 浏览次数：
													      <s:property value="techNews.browseTimes"/>
													次 &nbsp;&nbsp;
												</td>
											</tr>
									</table>

									<tr>
										<td align="center">


											${techNews.newscontent}
										</td>
									</tr>
									<tr>
										<td height="5" align="left">
											<hr width="100%" height="2">
										</td>
									</tr>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
				<td>
					<jsp:include page="/left.jsp"></jsp:include>
				</td>
			</tr>
		</table>
		<jsp:include page="/bottom.jsp"></jsp:include>
		<a href="admin/index.html"><strong>后台管理入口</strong> </a>


	</body>
</html>
