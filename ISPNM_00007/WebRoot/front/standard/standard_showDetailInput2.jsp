<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

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

		<title>矿冶行业标准库</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<script type="text/javascript" src="js/standard.js"></script>

		<style type="text/css">
<!--
.tt {
	font-size: 20px;

	text-align: center;
}

.cont {
	font-size: 16px;
	line-height: 20px;
	text-indent: 35px;
	padding-right: 20px;
	padding-left: 20px;
	margin-left: 10px;
	margin-right: 10px;
}
.shuoming {
	font-size: 12px;
	padding-top: 5px;
	padding-bottom: 5px;
}
<%--
.biao {
	color: #000000;
	padding-bottom: 5px;
	padding-top: 5px;
	margin-top: 10px;
    margin-bottom: 5px;
	margin-left: 2px;
	background-color: #FFFFFF;
	border: 1px solid #FF0000;
}
.biao a:hover {
	text-decoration: underline;
	background-color: #FFFFFF;
	color: #FF0000;
}
--%>
.biao a { color: #000; text-decoration: none;font-size: 14px}
.biao a:hover { color: #F00; }
.biao { border: 1px solid #CCC; height:26px; background: #eee; margin: 5px 5px 5px 0px;}
.biao ul { list-style: none; margin: 0px; padding: 0px; }
.biao ul li { float:left; padding: 0px 8px; height: 26px; line-height: 26px;font-size: 14px}

-->
</style>
	</head>

	<body style="text-align: center;">
		<jsp:include page="/top.jsp"></jsp:include>
		<table id="main" style="border: 1px solid #CCC;">
			<tr>
				<td><jsp:include page="../../front/standard/left.jsp"></jsp:include>
				</td>
				<td>
		<div class="biao" align="left"><ul><li>
			<li><a href="index.jsp">&nbsp;首页</a></li>	
            <li>>></li>
            <li><a href="front/standard/index10.jsp">矿冶法律法规标准</a></li>	
			<li>>></li>
			<li><font color="red">详情</font></li>
			<li>>></li>

			</li></ul>
	    </div>
				<div class="contt" align="left">
					<table width="755" style="border: 1px solid #CCC;" align="center" height="800" >
						<tr>
							<td valign="top">

								<form action="standard/standardAction!showDetail2" method="post">
									<br />
									<h1 class="tt">
										${standard.title}
									</h1>
									
                                    <div class="shuoming" align="center">
									类别：${standard.classify}

									发布单位：${standard.fbdep}
								
									实施时间：${standard.imptime}
								
									</div>
									<br />
									
									<div class="cont">
										${standard.content}
									</div>
									<br />
								</form>
							</td>
						</tr>
					</table>

				</td>
			</tr>
		</table>
		</div>
		<jsp:include page="/bottom.jsp"></jsp:include>
	</body>
</html>
