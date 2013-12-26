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
		<title>矿冶行业专家库</title>
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
				<a href="#" id="picName">关于下达2011年赣州市钨、稀土矿开采控制总量控制指标的通知</a>
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
				<span class="title">模块分类</span>
			</div>
			<div>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;矿&nbsp;冶&nbsp;高&nbsp;校&nbsp;科&nbsp;研&nbsp;院&nbsp;所&nbsp;库</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;矿&nbsp;冶&nbsp;行&nbsp;业&nbsp;标&nbsp;准&nbsp;库</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;矿&nbsp;冶&nbsp;行&nbsp;业&nbsp;专&nbsp;家&nbsp;库</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;矿&nbsp;冶&nbsp;图&nbsp;书&nbsp;库</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;矿&nbsp;冶&nbsp;论&nbsp;文&nbsp;库</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;矿&nbsp;冶&nbsp;企&nbsp;业&nbsp;库</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;矿&nbsp;冶&nbsp;设&nbsp;备&nbsp;库</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;矿&nbsp;冶&nbsp;专&nbsp;利&nbsp;库</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;矿&nbsp;冶&nbsp;生&nbsp;产&nbsp;流&nbsp;程&nbsp;库</span>
				</a>
				<a href="#"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;矿&nbsp;冶&nbsp;金&nbsp;属&nbsp;种&nbsp;类&nbsp;库</span>
				</a>
				<a href="Achieve!listFore.action" target="main"
					onmouseover="this.style.cursor='hand'"
					onmouseout="this.style.cursor='default'"><span class="i">&nbsp;&nbsp;&nbsp;&nbsp;江&nbsp;西&nbsp;理&nbsp;工&nbsp;大&nbsp;学&nbsp;特&nbsp;色&nbsp;库</span>
				</a>
			</div>
		</div>
		<div id="service" style="font-size: 13px">
			<div class="titlebg">
				<span class="title">服务定制</span>
			</div>
			<div>
				<a href="#"><span class="i">数据获取：矿冶特色数据库</span> </a>
				<a href="#"><span class="i">客户通道：产品求购信息</span> </a>
				<a href="#"><span class="i">厂商通道：矿冶产品供应发布</span> </a>
				<a href="#"><span class="i">讯息跟随：订阅邮件获知最新视角</span> </a>
			</div>
		</div>
		<div id="contact" style="font-size: 13px;">
			<!-- 联系我们 -->
			<div class="titlebg">
				<span class="title">在线咨询</span>
			</div>
			<img src="images/consulter.png" alt="" />
			<img src="images/lijizixun.png" alt="" />
			<div>
				<a href="#"><span class="i">咨询留言：QQ88888888</span> </a>
				<a href="#"><span class="i">电子邮箱：isp4nm@jxust.com</span> </a>
				<a href="#"><span class="i">意见提交：点此填写您对网站的建议</span> </a>
			</div>
		</div>
		</div>
	</body>
</html>
