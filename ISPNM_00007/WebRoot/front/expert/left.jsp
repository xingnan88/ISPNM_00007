<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
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
		<title>��ұ��ҵר�ҿ�</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<script type="text/javascript"
			src="../../jquery-ui/js/jquery-1.6.2.min.js">
</script>
		<script type="text/javascript"
			src="../../jquery-ui/js/jquery-ui-1.8.15.custom.min.js">
</script>
		<script type="text/javascript" src="js/index.js">
</script>
		<link REL="stylesheet" href="../../jquery-ui/css/home.css"
			type="text/css">
	</head>
	<body>
		<div id="left" style="height: 900px;margin-top: 0px;padding-top: 0px;">
		<div id="picNews" >
			<div id="pic">
				<img src="images/news-1.jpg"></img>
				<img src="images/news-2.jpg" style="display: none;"></img>
				<img src="images/news-3.jpg" style="display: none;"></img>
				<img src="images/news-4.jpg" style="display: none;"></img>
				<img src="images/news-5.jpg" style="display: none;"></img>
			</div>
			<div id="picInfo" style="font-size: 13px">
				<a href="#" id="picName">�����´�2011��������١�ϡ���󿪲ɿ�����������ָ���֪ͨ</a>
				<label>
					1
				</label>
				<label>
					2
				</label>
				<label>
					3
				</label>
				<label>
					4
				</label>
				<label>
					5
				</label>
			</div>
		</div>
		<div id="service" style="font-size: 13px">
			<div class="titlebg">
				<span class="title">ģ�����</span>
			</div>
			<div>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;ұ&nbsp;��&nbsp;У&nbsp;��&nbsp;��&nbsp;Ժ&nbsp;��&nbsp;��</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;ұ&nbsp;��&nbsp;ҵ&nbsp;��&nbsp;׼&nbsp;��</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;ұ&nbsp;��&nbsp;ҵ&nbsp;ר&nbsp;��&nbsp;��</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;ұ&nbsp;ͼ&nbsp;��&nbsp;��</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;ұ&nbsp;��&nbsp;��&nbsp;��</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;ұ&nbsp;��&nbsp;ҵ&nbsp;��</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;ұ&nbsp;��&nbsp;��&nbsp;��</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;ұ&nbsp;ר&nbsp;��&nbsp;��</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;ұ&nbsp;��&nbsp;��&nbsp;��&nbsp;��&nbsp;��</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;ұ&nbsp;��&nbsp;��&nbsp;��&nbsp;��&nbsp;��</span>
				</a>
				<a href="Achieve!listFore.action" target="main"
					onmouseover="this.style.cursor='hand'"
					onmouseout="this.style.cursor='default'"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;��&nbsp;��&nbsp;��&nbsp;��&nbsp;ѧ&nbsp;��&nbsp;ɫ&nbsp;��</span>
				</a>
			</div>
		</div>
		<div id="service" style="font-size: 13px">
			<div class="titlebg">
				<span class="title">������</span>
			</div>
			<div>
				<a href="#"><span class="i">���ݻ�ȡ����ұ��ɫ���ݿ�</span> </a>
				<a href="#"><span class="i">�ͻ�ͨ������Ʒ����Ϣ</span> </a>
				<a href="#"><span class="i">����ͨ������ұ��Ʒ��Ӧ����</span> </a>
				<a href="#"><span class="i">ѶϢ���棺�����ʼ���֪�����ӽ�</span> </a>
			</div>
		</div>
		<div id="contact" style="font-size: 13px;">
			<!-- ��ϵ���� -->
			<div class="titlebg">
				<span class="title">������ѯ</span>
			</div>
			<img src="images/consulter.png" alt="" />
			<img src="images/lijizixun.png" alt="" />
			<div>
				<a href="#"><span class="i">��ѯ���ԣ�QQ88888888</span> </a>
				<a href="#"><span class="i">�������䣺isp4nm@jxust.com</span> </a>
				<a href="#"><span class="i">����ύ�������д������վ�Ľ���</span> </a>
			</div>
		</div>
		</div>
	</body>
</html>
