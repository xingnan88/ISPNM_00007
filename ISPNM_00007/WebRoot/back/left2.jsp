<%@ page language="java" pageEncoding="GB18030"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>管理页面</title>

		<link type="text/css"
			href="<%=basePath %>back/jquery-ui/css/jquery-ui-1.8.14.custom.css"
			rel="stylesheet" />
		<script type="text/javascript" src="<%=basePath %>back/jquery-ui/js/jquery-1.5.1.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath %>back/jquery-ui/js/jquery-ui-1.8.14.custom.min.js"></script>
		<script type="text/javascript">
	$(function(){
		$("#container").accordion();
		$('#accordion').accordion({ header: 'h1' });
		$("#accordion").accordion({ autoHeight:true });
	});
	</script>
		<style>
body {
	font: 12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}

#container {
	width: 182px;
}

H1 {
	font-size: 12px;
	margin: 0px;
	width: 182px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;
}

H1 a {
	display: block;
	width: 182px;
	color: #000;
	height: 30px;
	text-decoration: none;
	moz-outline-style: none;
	background-image: url(images/menu_bgs.gif);
	background-repeat: no-repeat;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}

.content {
	width: 182px;
	height: 26px;
}

.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}

.MM li {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 26px;
	width: 182px;
	padding-left: 0px;
}

.MM {
	width: 182px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px, 0px, 0px, 0px);
}

.MM a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}

.MM a:visited {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}

.MM a:active {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}

.MM a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	background-image: url(images/menu_bg2.gif);
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}

</style>
	</head>

	<body>
		<table width="100%" height="280" border="0" cellpadding="0"
			cellspacing="0" bgcolor="#EEF2FB">
			<tr>
				<td width="182" valign="top">
					<div id="container">
						<!-- 1矿冶专利库-->
						<h1 class="type">
							<a href="javascript:void(0)">矿冶专利库</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="<%=basePath%>back/patent/Patent_list?page=1"
										target="main">专利信息</a>
								</li>
								<li>
									<a href="patent/Patent_addInput" target="main">专利添加</a>
								</li>
							</ul>
						</div>
						<!-- 2矿冶设备库-->
						<h1 class="type">
							<a href="javascript:void(0)">矿冶设备库</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="<%=basePath%>back/jxustmpp/listmpp.action"
										target="main">查看开采方法</a>
								</li>
								<li>
									<a href="jxustmpp/add.jsp" target="main">添加采矿方法</a>
								</li>
							</ul>
						</div>
						<!-- 3矿冶企业库-->
						<h1 class="type">
							<a href="javascript:void(0)">矿冶企业库</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="<%=basePath%>back/jxustmpp/listmpp.action"
										target="main">查看开采方法</a>
								</li>
								<li>
									<a href="jxustmpp/add.jsp" target="main">添加采矿方法</a>
								</li>
							</ul>
						</div>
						<!-- 4矿冶专家库-->
						<h1 class="type">
							<a href="javascript:void(0)">矿冶专家库</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="<%=basePath%>back/jxustmpp/listmpp.action"
										target="main">查看开采方法</a>
								</li>
								<li>
									<a href="jxustmpp/add.jsp" target="main">添加采矿方法</a>
								</li>
							</ul>
						</div>

						<!-- 5矿冶论文库-->
						<h1 class="type">
							<a href="javascript:void(0)">矿冶论文库</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="article/GetArtYear!getartyearadd.action" target="main">添加论文信息</a>
								</li>
								<li>
									<a href="article/EnterArticleName.jsp" target="main">修改论文信息</a>
								</li>
								<li>
									<a href="article/ArticleList!list.action?page=1" target="main">查找论文信息</a>
								</li>
								<li>
									<a href="article/EnterArticleName.jsp" target="main">论文详情</a>
								</li>
							</ul>
						</div>
						<!-- 6矿冶图书库-->
						<h1 class="type">
							<a href="javascript:void(0)">矿冶图书库</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="<%=basePath%>back/jxustmpp/listmpp.action"
										target="main">查看开采方法</a>
								</li>
								<li>
									<a href="jxustmpp/add.jsp" target="main">添加采矿方法</a>
								</li>
							</ul>
						</div>

						<!-- 7矿冶科技动态库-->
						<h1 class="type">
							<a href="javascript:void(0)">矿冶科技动态库</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="technews/TechNews_list?page=1" target="main">信息管理</a>
								</li>
								<li>
									<a href="technews/TechNews_addInput" target="main">信息添加</a>
								</li>
							</ul>
						</div>
						<!-- 8矿冶金属种类库-->
						<h1 class="type">
							<a href="javascript:void(0)">矿冶金属种类库</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="<%=basePath%>back/jxustmpp/listmpp.action"
										target="main">查看开采方法</a>
								</li>
								<li>
									<a href="jxustmpp/add.jsp" target="main">添加采矿方法</a>
								</li>
							</ul>
						</div>

						<h1 class="type">
							<a href="javascript:void(0)">矿业生产流程库</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="<%=basePath%>back/jxustmpp/listmpp.action"
										target="main">查看开采方法</a>
								</li>
								<li>
									<a href="jxustmpp/add.jsp" target="main">添加采矿方法</a>
								</li>
							</ul>
						</div>

						<!-- 9矿冶法律法规标准库-->
						<h1 class="type">
							<a href="javascript:void(0)">矿冶法律法规标准库</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="/standardAction!list" target="main">标准信息</a>
								</li>
								<li>
									<a href="standard/standard_addInput.jsp" target="main">增加标准</a>
								</li>
							</ul>
						</div>
						<!-- 10矿冶高校科研院所库-->
						<h1 class="type">
							<a href="javascript:void(0)">矿冶高校科研院所库</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="<%=basePath%>back/jxustmpp/listmpp.action"
										target="main">查看开采方法</a>
								</li>
								<li>
									<a href="jxustmpp/add.jsp" target="main">添加采矿方法</a>
								</li>
							</ul>
						</div>
						<!-- 11江西理工大学特色库-->
						<h1 class="type">
							<a href="javascript:void(0)">江西理工大学特色库</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="feature/AddAchieve.jsp" target="main">添加成果信息</a>
								</li>
								<li>
									<a href="feature/EnterAchieveName.jsp" target="main">修改成果信息</a>
								</li>
								<li>
									<a href="feature/AchieveList.jsp?count=1" target="main">查找成果信息</a>
								</li>
								<li>
									<a href="feature/EnterAchieveName.jsp" target="main">成果详情</a>
								</li>
							</ul>
						</div>
					</div>
					<script type="text/javascript">
		var contents = document.getElementsByClassName('content');
		var toggles = document.getElementsByClassName('type');
	
		var myAccordion = new fx.Accordion(
			toggles, contents, {opacity: true, duration: 400}
		);
	</script>
	</body>
</html>
