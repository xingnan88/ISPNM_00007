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
			<input type="hidden" id="content" name="content" value="�ɿ�ӹ�" />
		</form>

		<jsp:include page="/top.jsp"></jsp:include>
		<table id="main">
			<tbody>
				<tr>
					<td id="left">
						<div id="buttons">
							<a class="button white" href="front/patent/Patent_tab_form.jsp"
								target="x">�� ɫ ר ��</a>
							<a class="button white" href="front/patent/Patent_searchInput" target="x">ר
								�� �� ��</a>
						<!--  	<a class="button white" href="front/patent/Patent_list?page=1" target="x">��
								�� �� ��</a> -->
							<a class="button white" href="front/patent/categoryList.jsp" target="x">IPC���ർ��</a>
							<a class="button white" target="x">ʹ �� �� �� </a>
							<a class="button white" target="x">ע �� �� ¼</a>
							<a class="button white" href="index.jsp">�� �� �� ҳ</a>
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
				<span class="title">��������</span>
			</div>
			<div>
				<a href="#" title="��������ѧ"><img
						src="<%=basePath%>/images/link-jxust.png" alt="" /> </a>
				<a href="#" title="CSDN��̳"><img
						src="<%=basePath%>/images/link-csdn.png" alt="CSDN��̳" /> </a>
				<a href="#" title="�Ѻ�"><img src="<%=basePath%>/images/link-sohu.png"
						alt="�Ѻ�" /> </a>
				<a href="#" title="��������ѧ"><img
						src="<%=basePath%>/images/link-jxust.png" alt="" /> </a>
				<a href="#" title="CSDN��̳"><img
						src="<%=basePath%>/images/link-csdn.png" alt="CSDN��̳" /> </a>
				<a href="#" title="�Ѻ�"><img src="<%=basePath%>/images/link-sohu.png"
						alt="�Ѻ�" /> </a>
				<a href="#" title="��������ѧ"><img
						src="<%=basePath%>/images/link-jxust.png" alt="" /> </a>
				<a href="#" title="CSDN��̳"><img
						src="<%=basePath%>/images/link-csdn.png" alt="CSDN��̳" /> </a>
				<a href="#" title="�Ѻ�"><img src="<%=basePath%>/images/link-sohu.png"
						alt="�Ѻ�" /> </a>
				<a href="#" title="��������ѧ"><img
						src="<%=basePath%>/images/link-jxust.png" alt="" /> </a>
				<a href="#" title="CSDN��̳"><img
						src="<%=basePath%>/images/link-csdn.png" alt="CSDN��̳" /> </a>
				<a href="#" title="�Ѻ�"><img src="<%=basePath%>/images/link-sohu.png"
						alt="�Ѻ�" /> </a>
				<a href="#" title="��������ѧ"><img
						src="<%=basePath%>/images/link-jxust.png" alt="" /> </a>
				<a href="#" title="CSDN��̳"><img
						src="<%=basePath%>/images/link-csdn.png" alt="CSDN��̳" /> </a>
				<a href="#" title="�Ѻ�"><img src="<%=basePath%>/images/link-sohu.png"
						alt="�Ѻ�" /> </a>
				<a href="#" title="��������ѧ"><img
						src="<%=basePath%>/images/link-jxust.png" alt="" /> </a>
				<a href="#" title="CSDN��̳"><img
						src="<%=basePath%>/images/link-csdn.png" alt="CSDN��̳" /> </a>
				<a href="#" title="�Ѻ�"><img src="<%=basePath%>/images/link-sohu.png"
						alt="�Ѻ�" /> </a>
			</div>
		</div>
		<div id="policy">
			<a href="#">���ڱ�վ</a>|
			<a href="#">�������</a>|
			<a href="#">��������</a>|
			<a href="#">��������</a>|
			<a href="#">����֧��</a>|
			<a href="#">��վ��ͼ</a>
			<p>
				Copyright? 2011-2021 www.isp4nm.com All Rights Reserved ��Ȩ����
				��������ѧͼ���
			</p>
			<p>
				��ICP֤��080527�� �������Ļ���Ӫ���֤�� ������[2009]127�� ����������110105005190��
			</p>
			<p>
				����Ŷӣ���������ѧ��ϢѧԺ���Ź�����
			</p>
		</div>

	</body>
</html>
