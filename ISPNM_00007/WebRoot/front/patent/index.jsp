<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
		<base href="<%=basePath%>">

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link type="text/css" href="<%=basePath%>css/index_patent.css"
			rel="stylesheet" />
	</head>

	<body>

		<form action="front/patent/Patent_tab" method="post" id="tabForm">
			<input type="hidden" id="page" name="page" value="1" />
			<input type="hidden" id="mainClassNumber" name="type"
				value="mainClassNumber" />
			<input type="hidden" id="content" name="content" value="采矿加工" />
		</form>

		<jsp:include page="/top.jsp"></jsp:include>
		<table id="main">
			<tbody>
				<tr>
					<td id="left">
						<div id="buttons">
							<a class="button white" href="front/patent/Patent_tab_form.jsp"
								target="x">特 色 专 利</a>
							<a class="button white" href="front/patent/Patent_searchInput" target="x">专
								利 搜 索</a>
						<!--  	<a class="button white" href="front/patent/Patent_list?page=1" target="x">重
								点 推 荐</a> -->
							<a class="button white" href="front/patent/categoryList.jsp" target="x">IPC分类导航</a>
							<a class="button white" target="x">使 用 帮 助 </a>
							<a class="button white" target="x">注 销 登 录</a>
							<a class="button white" href="index.jsp">返 回 首 页</a>
						</div>
					</td>
					<td id="content">
						<iframe name="x" src="front/patent/Patent_tab_form.jsp"></iframe>
					</td>
				</tr>
			</tbody>
		</table>


		<div id="links">
			<div class="titlebg">
				<span class="title">友情链接</span>
			</div>
			<div>
				<a href="#" title="江西理工大学"><img
						src="<%=basePath%>/images/link-jxust.png" alt="" /> </a>
				<a href="#" title="CSDN论坛"><img
						src="<%=basePath%>/images/link-csdn.png" alt="CSDN论坛" /> </a>
				<a href="#" title="搜狐"><img src="<%=basePath%>/images/link-sohu.png"
						alt="搜狐" /> </a>
				<a href="#" title="江西理工大学"><img
						src="<%=basePath%>/images/link-jxust.png" alt="" /> </a>
				<a href="#" title="CSDN论坛"><img
						src="<%=basePath%>/images/link-csdn.png" alt="CSDN论坛" /> </a>
				<a href="#" title="搜狐"><img src="<%=basePath%>/images/link-sohu.png"
						alt="搜狐" /> </a>
				<a href="#" title="江西理工大学"><img
						src="<%=basePath%>/images/link-jxust.png" alt="" /> </a>
				<a href="#" title="CSDN论坛"><img
						src="<%=basePath%>/images/link-csdn.png" alt="CSDN论坛" /> </a>
				<a href="#" title="搜狐"><img src="<%=basePath%>/images/link-sohu.png"
						alt="搜狐" /> </a>
				<a href="#" title="江西理工大学"><img
						src="<%=basePath%>/images/link-jxust.png" alt="" /> </a>
				<a href="#" title="CSDN论坛"><img
						src="<%=basePath%>/images/link-csdn.png" alt="CSDN论坛" /> </a>
				<a href="#" title="搜狐"><img src="<%=basePath%>/images/link-sohu.png"
						alt="搜狐" /> </a>
				<a href="#" title="江西理工大学"><img
						src="<%=basePath%>/images/link-jxust.png" alt="" /> </a>
				<a href="#" title="CSDN论坛"><img
						src="<%=basePath%>/images/link-csdn.png" alt="CSDN论坛" /> </a>
				<a href="#" title="搜狐"><img src="<%=basePath%>/images/link-sohu.png"
						alt="搜狐" /> </a>
				<a href="#" title="江西理工大学"><img
						src="<%=basePath%>/images/link-jxust.png" alt="" /> </a>
				<a href="#" title="CSDN论坛"><img
						src="<%=basePath%>/images/link-csdn.png" alt="CSDN论坛" /> </a>
				<a href="#" title="搜狐"><img src="<%=basePath%>/images/link-sohu.png"
						alt="搜狐" /> </a>
			</div>
		</div>
		<div id="policy">
			<a href="#">关于本站</a>|
			<a href="#">商务合作</a>|
			<a href="#">法律声明</a>|
			<a href="#">帮助中心</a>|
			<a href="#">技术支持</a>|
			<a href="#">网站地图</a>
			<p>
				Copyright? 2011-2021 www.isp4nm.com All Rights Reserved 版权所有
				江西理工大学图书馆
			</p>
			<p>
				京ICP证：080527号 《网络文化经营许可证》 文网文[2009]127号 京公网安备110105005190号
			</p>
			<p>
				设计团队：江西理工大学信息学院企桥工作室
			</p>
		</div>

	</body>
</html>
