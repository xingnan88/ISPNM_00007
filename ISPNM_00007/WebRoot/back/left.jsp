<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "
http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<base target="main">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>����ҳ��</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


		<script src="js/prototype.lite.js" type="text/javascript">
</script>
		<script src="js/moo.fx.js" type="text/javascript">
</script>
		<script src="js/moo.fx.pack.js" type="text/javascript">
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
					
						<h1 class="type">
							<a href="javascript:void(0)">��ҵ�������̿�</a>
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
										target="main">�鿴���ɷ���</a>
								</li>
								<li>
									<a href="jxustmpp/add.jsp" target="main">��Ӳɿ󷽷�</a>
								</li>
							</ul>
						</div>
					
				
						<!-- ��ұ�Ƽ���̬��-->
						<h1 class="type">
							<a href="javascript:void(0)">��ұ�Ƽ���̬��</a>
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
									<a href="technews/TechNews_list?page=1" target="main">��Ϣ����</a>
								</li>
								<li>
									<a href="technews/TechNews_addInput" target="main">��Ϣ���</a>
								</li>
							</ul>
						</div>
						<!-- ��ұ���������-->
						<h1 class="type">
							<a href="javascript:void(0)">��ұ���������</a>
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
									<a href="technews/TechNews_list?page=1"
										target="main">��Ϣ����</a>
								</li>
								<li>
									<a href="technews/TechNews_addInput" target="main">��Ϣ���</a>
								</li>
							</ul>
						</div>

					
						<!-- ��ұר����-->
						<h1 class="type">
							<a href="javascript:void(0)">��ұר����</a>
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
										target="main">ר����Ϣ</a>
								</li>

								<li>
									<a href="<%=basePath%>back/patent/categoryList.jsp" target="main">ר������</a>
								</li>
								<li>
									<a href="<%=basePath%>back/patent/Patent_addInput" target="main">ר�����</a>
								</li>
								<li>
									<a href="<%=basePath%>back/patent/Patent_searchInput" target="main">�߼�����</a>
								</li>

							</ul>
						</div>
						<!-- ��ұ�豸��-->
						<h1 class="type">
							<a href="javascript:void(0)">��ұ�豸��</a>
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
									<a href="equipment/listCategorys.jsp" target="main">�����ܱ�</a>
								</li>
								<li>
									<a href="equipment/add.jsp" target="main">����豸��Ϣ</a>
								</li>
								<li>
									<a href="equipment/enterId.jsp" target="main">�޸��豸��Ϣ</a>
								</li>
								<li>
									<a href="equipment/listCategorys.jsp" target="main">�����豸��Ϣ</a>
								</li>
								<li>
									<a href="equipment/enterId.jsp" target="main">�豸����</a>
								</li>
							</ul>
						</div>
						<!-- ��ұ��ҵ��-->
						<h1 class="type">
							<a href="javascript:void(0)">��ұ��ҵ��</a>
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
									<a href="company/CompanyList!list.action?page=1" target="main">�鿴��ұ��ҵ</a>
								</li>
								<li>
									<a href="<%=basePath%>back/company/AddCompany.jsp?ran=1"
										target="main">��ӿ�ұ��ҵ</a>
								</li>
							</ul>
						</div>
						<!-- ��ұר�ҿ�-->
						<h1 class="type">
							<a href="javascript:void(0)">��ұר�ҿ�</a>
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
									<a href="<%=basePath%>back/expert/save.jsp" target="main">���ר��</a>
								</li>
								<li>
									<a href="<%=basePath%>back/expert/expert_findAll.action?page=1"
										target="main">���ר��</a>
								</li>
								<li>
									<a href="<%=basePath%>back/expert/find.jsp" target="main">����ר��</a>
								</li>
								<li>
									<a href="<%=basePath%>back/expert/findGaojiTop.jsp" target="main">�߼�����</a>
								</li>
								<li>
									<a href="<%=basePath%>back/expert/expert_testSave.action"
										target="main">��������ר��</a>
								</li>
							</ul>
						</div>

						<!-- ��ұ���Ŀ�-->
						<h1 class="type">
							<a href="javascript:void(0)">��ұ���Ŀ�</a>
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
									<a href="article/GetArtYear!getartyearadd.action" target="main">���������Ϣ</a>
								</li>
								<li>
									<a href="article/EnterArticleName.jsp" target="main">�޸�������Ϣ</a>
								</li>
								<li>
									<a href="article/ArticleList!list.action?page=1" target="main">����������Ϣ</a>
								</li>
								<li>
									<a href="article/EnterArticleName.jsp" target="main">��������</a>
								</li>
							</ul>
						</div>
						<!-- ��ұͼ���-->
						<h1 class="type">
							<a href="javascript:void(0)">��ұͼ���</a>
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
										target="main">�鿴���ɷ���</a>
								</li>
								<li>
									<a href="jxustmpp/add.jsp" target="main">��Ӳɿ󷽷�</a>
								</li>
							</ul>
						</div>


						<!-- ��ұ���ɷ����׼��-->
						<h1 class="type">
							<a href="javascript:void(0)">��ұ���ɷ����׼��</a>
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
									<a href="<%=basePath%>standard/standardAction!list" target="main">��׼��Ϣ</a>
								</li>
								<li>
									<a href="standard/standard_addInput.jsp" target="main">���ӱ�׼</a>
								</li>
							</ul>
						</div>
						<!-- ��ұ��У����Ժ����-->
						<h1 class="type">
							<a href="javascript:void(0)">��ұ��У����Ժ����</a>
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
										target="main">�鿴���ɷ���</a>
								</li>
								<li>
									<a href="jxustmpp/add.jsp" target="main">��Ӳɿ󷽷�</a>
								</li>
							</ul>
						</div>
						<!--12 ��������ѧ��ɫ��-->
						<h1 class="type">
							<a href="javascript:void(0)">��������ѧ��ɫ��</a>
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
									<a href="feature/AddAchieve.jsp" target="main">��ӳɹ���Ϣ</a>
								</li>
								<li>
									<a href="feature/EnterAchieveName.jsp" target="main">�޸ĳɹ���Ϣ</a>
								</li>
								<li>
									<a href="feature/AchieveList.jsp?count=1" target="main">���ҳɹ���Ϣ</a>
								</li>
								<li>
									<a href="feature/EnterAchieveName.jsp" target="main">�ɹ�����</a>
								</li>
							</ul>
						</div>



					</div>
					<script type="text/javascript">
var contents = document.getElementsByClassName('content');
var toggles = document.getElementsByClassName('type');

var myAccordion = new fx.Accordion(toggles, contents, {
	opacity : true,
	duration : 400
});
myAccordion.showThisHideOpen(contents[0]);
</script>
				</td>
			</tr>
		</table>
	</body>
</html>
