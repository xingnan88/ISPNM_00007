<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<%@page import="jxust.isp4nm.model.TechNews"%>
<%@page import="jxust.isp4nm.util.Tools"%>
<%@page import="jxust.isp4nm.model.Patent"%>
<%@page import="jxust.isp4nm.model.Expert"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
List[][] list=new ArrayList[6][4];
for(int i=1;i<=6;i++){
   for(int j=1;j<=4;j++){
   
     List list_i_j=(List)request.getAttribute("list_"+i+"_"+j);
      list[i-1][j-1]=list_i_j;
     System.out.println(list_i_j.size());
   }

}			
			
			
			
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
	<head>

		<title>��ҳ</title>

		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />

		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<script type="text/javascript"
			src="<%=basePath%>/tools/jquery-ui/js/jquery-1.6.2.min.js">
		</script>
		<script type="text/javascript"
			src="<%=basePath%>/tools/jquery-ui/js/jquery-ui-1.8.15.custom.min.js">
		</script>
		<script type="text/javascript" src="css/index.js">
</script>
		<script src="Scripts/swfobject_modified.js" type="text/javascript">
</script>
		<style type="text/css">
a.db {
	font-family: '����';
}

label {
	display: block;
}
</style>
		<script>
</script>
	</head>

	<body>
		<jsp:include page="top.jsp"></jsp:include>
		
		<table id="main" style="">
			<tr>
				<td>
					<div id="left" style="overflow: hidden;">
						<!-- ͼƬ�������� -->

						<div>
							<div
								style="line-height: 10px; overflow: hidden; font-size: 12px; color: #000000; text-align: center; text-decoration: none; padding: 0px; margin: 0px">
								<script>
document
		.write('<style>.introCss{font-size: 12px;line-height: 15px;text-decoration: none;font-weight: bold;color: #303030;text-align: center;vertical-align: top;} a.nav:visited {  color: #006699; text-decoration: none;}a.nav:active {  color: #006699; text-decoration: none;}a.nav:hover {  color: #006699;text-decoration: none;}a.nav:link {color: #006699;text-decoration: none;}');
document.write('.apno{padding:1px 7px;border-left:#cccccc 1px solid;}');
document
		.write('a.apno:link,a.apno:visited{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#666;}');
document
		.write('a.apno:active,a.apno:hover{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#999;}');
document.write('.bpno{padding:1px 7px;border-left:#cccccc 1px solid;}');
document
		.write('a.bpno:link,a.bpno:visited{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#D34600;}');
document
		.write('a.bpno:active,a.bpno:hover{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#D34600;}');
document.write('</style>');
document.write("   <table border='0' cellspacing='0' cellpadding='1'>");
document.write("    <tr>");
document.write("     <td id='imgp'>");
document.write("     </td>");
document.write("    </tr>");
document.write("   </table>");

var slideshow_end_url = "";
var imageSrcArray = new Array();
var imageIDsArray = new Array();
var imageIntroArray = new Array();
imageSrcArray[0] = "http://www.jxys.gov.cn//manage/news/edit/uploadfile/201192372242623.jpg";
imageIDsArray[0] = "#";
imageIntroArray[0] = "���߽췺���� ��Ŀ...";
imageSrcArray[1] = "http://www.jxys.gov.cn//manage/news/edit/uploadfile/2011922131752528.jpg";
imageIDsArray[1] = "#";
imageIntroArray[1] = "���Ų��й��쵼������...";
imageSrcArray[2] = "http://www.jxys.gov.cn//manage/news/edit/uploadfile/20119228310692.jpg";
imageIDsArray[2] = "#";
imageIntroArray[2] = "�Ͼ��ص�������֯����...";
imageSrcArray[3] = "http://www.jxys.gov.cn//manage/news/edit/uploadfile/20119227432241.jpg";
imageIDsArray[3] = "#";
imageIntroArray[3] = "���ٿعɼ��ű���Ϊȫ...";
imageSrcArray[4] = "http://www.jxys.gov.cn//manage/news/edit/uploadfile/2011919121131531.jpg";
imageIDsArray[4] = "#";
imageIntroArray[4] = "��ͭ���ź��Ϻ��ڽ���...";

var imageCreatorArray = new Array('', '', '', '');
var imageBlogArray = new Array('', '', '', '');

var SHOWINGSTRING = '��%slideNum / 5��';
var numImgs = 5;

var arrPreload = new Array();
var SHOWCREATOR = false;

var begImg = 0;
var arrPreload = new Array();
var SHOWCREATOR = false;

var spd = 2;
function init() {
	preloadRange(0, _PRELOADRANGE - 1);

	curImg = begImg;
	if (curImg < 0 || curImg > numImgs - 1)
		curImg = numImgs - 1;
	changeSlide();
	setTimeout("play()", 6000);
}

var curImg = 0;
var timerId = -1;
var interval = 3500;
var imgIsLoaded = false;

var current_transition = 15;
var flag = true;
var bFirst = false;

var agt = navigator.userAgent.toLowerCase();

var is_major = parseInt(navigator.appVersion);
var is_minor = parseFloat(navigator.appVersion);

var is_nav = ((agt.indexOf('mozilla') != -1) && (agt.indexOf('spoofer') == -1)
		&& (agt.indexOf('compatible') == -1) && (agt.indexOf('opera') == -1)
		&& (agt.indexOf('webtv') == -1) && (agt.indexOf('hotjava') == -1));
var is_nav2 = (is_nav && (is_major == 2));
var is_nav3 = (is_nav && (is_major == 3));
var is_nav4 = (is_nav && (is_major == 4));
var is_nav4up = (is_nav && (is_major >= 4));
var is_navonly = (is_nav && ((agt.indexOf(";nav") != -1) || (agt
		.indexOf("; nav") != -1)));
var is_nav6 = (is_nav && (is_major == 5));
var is_nav6up = (is_nav && (is_major >= 5));
var is_gecko = (agt.indexOf('gecko') != -1);

var is_ie = ((agt.indexOf("msie") != -1) && (agt.indexOf("opera") == -1));
var is_ie3 = (is_ie && (is_major < 4));
var is_ie4 = (is_ie && (is_major == 4) && (agt.indexOf("msie 4") != -1));
var is_ie4up = (is_ie && (is_major >= 4));
var is_ie5 = (is_ie && (is_major == 4) && (agt.indexOf("msie 5.0") != -1));
var is_ie5_5 = (is_ie && (is_major == 4) && (agt.indexOf("msie 5.5") != -1));
var is_ie5up = (is_ie && !is_ie3 && !is_ie4);
var is_ie5_5up = (is_ie && !is_ie3 && !is_ie4 && !is_ie5);
var is_ie6 = (is_ie && (is_major == 4) && (agt.indexOf("msie 6.") != -1));
var is_ie6up = (is_ie && !is_ie3 && !is_ie4 && !is_ie5 && !is_ie5_5);

var is_aol = (agt.indexOf("aol") != -1);
var is_aol3 = (is_aol && is_ie3);
var is_aol4 = (is_aol && is_ie4);
var is_aol5 = (agt.indexOf("aol 5") != -1);
var is_aol6 = (agt.indexOf("aol 6") != -1);

var is_opera = (agt.indexOf("opera") != -1);
var is_opera2 = (agt.indexOf("opera 2") != -1 || agt.indexOf("opera/2") != -1);
var is_opera3 = (agt.indexOf("opera 3") != -1 || agt.indexOf("opera/3") != -1);
var is_opera4 = (agt.indexOf("opera 4") != -1 || agt.indexOf("opera/4") != -1);
var is_opera5 = (agt.indexOf("opera 5") != -1 || agt.indexOf("opera/5") != -1);
var is_opera5up = (is_opera && !is_opera2 && !is_opera3 && !is_opera4);

var is_webtv = (agt.indexOf("webtv") != -1);

var is_TVNavigator = ((agt.indexOf("navio") != -1) || (agt
		.indexOf("navio_aoltv") != -1));
var is_AOLTV = is_TVNavigator;

var is_hotjava = (agt.indexOf("hotjava") != -1);
var is_hotjava3 = (is_hotjava && (is_major == 3));
var is_hotjava3up = (is_hotjava && (is_major >= 3));

var is_js;
if (is_nav2 || is_ie3)
	is_js = 1.0;
else if (is_nav3)
	is_js = 1.1;
else if (is_opera5up)
	is_js = 1.3;
else if (is_opera)
	is_js = 1.1;
else if ((is_nav4 && (is_minor <= 4.05)) || is_ie4)
	is_js = 1.2;
else if ((is_nav4 && (is_minor > 4.05)) || is_ie5)
	is_js = 1.3;
else if (is_hotjava3up)
	is_js = 1.4;
else if (is_nav6 || is_gecko)
	is_js = 1.5;
else if (is_nav6up)
	is_js = 1.5;
else if (is_ie5up)
	is_js = 1.3

else
	is_js = 0.0;

var is_win = ((agt.indexOf("win") != -1) || (agt.indexOf("16bit") != -1));
var is_win95 = ((agt.indexOf("win95") != -1) || (agt.indexOf("windows 95") != -1));

var is_win16 = ((agt.indexOf("win16") != -1) || (agt.indexOf("16bit") != -1)
		|| (agt.indexOf("windows 3.1") != -1) || (agt.indexOf("windows 16-bit") != -1));

var is_win31 = ((agt.indexOf("windows 3.1") != -1)
		|| (agt.indexOf("win16") != -1) || (agt.indexOf("windows 16-bit") != -1));

var is_winme = ((agt.indexOf("win 9x 4.90") != -1));
var is_win2k = ((agt.indexOf("windows nt 5.0") != -1));

var is_win98 = ((agt.indexOf("win98") != -1) || (agt.indexOf("windows 98") != -1));
var is_winnt = ((agt.indexOf("winnt") != -1) || (agt.indexOf("windows nt") != -1));
var is_win32 = (is_win95 || is_winnt || is_win98
		|| ((is_major >= 4) && (navigator.platform == "Win32"))
		|| (agt.indexOf("win32") != -1) || (agt.indexOf("32bit") != -1));

var is_os2 = ((agt.indexOf("os/2") != -1)
		|| (navigator.appVersion.indexOf("OS/2") != -1) || (agt
		.indexOf("ibm-webexplorer") != -1));

var is_mac = (agt.indexOf("mac") != -1);
if (is_mac && is_ie5up)
	is_js = 1.4;
var is_mac68k = (is_mac && ((agt.indexOf("68k") != -1) || (agt.indexOf("68000") != -1)));
var is_macppc = (is_mac && ((agt.indexOf("ppc") != -1) || (agt
		.indexOf("powerpc") != -1)));

var is_sun = (agt.indexOf("sunos") != -1);
var is_sun4 = (agt.indexOf("sunos 4") != -1);
var is_sun5 = (agt.indexOf("sunos 5") != -1);
var is_suni86 = (is_sun && (agt.indexOf("i86") != -1));
var is_irix = (agt.indexOf("irix") != -1); // SGI
var is_irix5 = (agt.indexOf("irix 5") != -1);
var is_irix6 = ((agt.indexOf("irix 6") != -1) || (agt.indexOf("irix6") != -1));
var is_hpux = (agt.indexOf("hp-ux") != -1);
var is_hpux9 = (is_hpux && (agt.indexOf("09.") != -1));
var is_hpux10 = (is_hpux && (agt.indexOf("10.") != -1));
var is_aix = (agt.indexOf("aix") != -1); // IBM
var is_aix1 = (agt.indexOf("aix 1") != -1);
var is_aix2 = (agt.indexOf("aix 2") != -1);
var is_aix3 = (agt.indexOf("aix 3") != -1);
var is_aix4 = (agt.indexOf("aix 4") != -1);
var is_linux = (agt.indexOf("inux") != -1);
var is_sco = (agt.indexOf("sco") != -1) || (agt.indexOf("unix_sv") != -1);
var is_unixware = (agt.indexOf("unix_system_v") != -1);
var is_mpras = (agt.indexOf("ncr") != -1);
var is_reliant = (agt.indexOf("reliantunix") != -1);
var is_dec = ((agt.indexOf("dec") != -1) || (agt.indexOf("osf1") != -1)
		|| (agt.indexOf("dec_alpha") != -1)
		|| (agt.indexOf("alphaserver") != -1) || (agt.indexOf("ultrix") != -1) || (agt
		.indexOf("alphastation") != -1));
var is_sinix = (agt.indexOf("sinix") != -1);
var is_freebsd = (agt.indexOf("freebsd") != -1);
var is_bsd = (agt.indexOf("bsd") != -1);
var is_unix = ((agt.indexOf("x11") != -1) || is_sun || is_irix || is_hpux
		|| is_sco || is_unixware || is_mpras || is_reliant || is_dec
		|| is_sinix || is_aix || is_linux || is_bsd || is_freebsd);

var is_vms = ((agt.indexOf("vax") != -1) || (agt.indexOf("openvms") != -1));
var browserCanBlend = (is_ie5_5up);
var transitions = new Array;
transitions[0] = "progid:DXImageTransform.Microsoft.Fade(duration=1)";
transitions[1] = "progid:DXImageTransform.Microsoft.Blinds(Duration=1,bands=20)";
transitions[2] = "progid:DXImageTransform.Microsoft.Checkerboard(Duration=1,squaresX=20,squaresY=20)";
transitions[3] = "progid:DXImageTransform.Microsoft.Strips(Duration=1,motion=rightdown)";
transitions[4] = "progid:DXImageTransform.Microsoft.Barn(Duration=1,orientation=vertical)";
transitions[5] = "progid:DXImageTransform.Microsoft.GradientWipe(duration=1)";
transitions[6] = "progid:DXImageTransform.Microsoft.Iris(Duration=1,motion=out)";
transitions[7] = "progid:DXImageTransform.Microsoft.Wheel(Duration=1,spokes=12)";
transitions[8] = "progid:DXImageTransform.Microsoft.Pixelate(maxSquare=10,duration=1)";
transitions[9] = "progid:DXImageTransform.Microsoft.RadialWipe(Duration=1,wipeStyle=clock)";
transitions[10] = "progid:DXImageTransform.Microsoft.RandomBars(Duration=1,orientation=vertical)";
transitions[11] = "progid:DXImageTransform.Microsoft.Slide(Duration=1,slideStyle=push)";
transitions[12] = "progid:DXImageTransform.Microsoft.RandomDissolve(Duration=1,orientation=vertical)";
transitions[13] = "progid:DXImageTransform.Microsoft.Spiral(Duration=1,gridSizeX=40,gridSizeY=40)";
transitions[14] = "progid:DXImageTransform.Microsoft.Stretch(Duration=1,stretchStyle=push)";
transitions[15] = "special case";
var transition_count = 15;

var arrPreload = new Array();
var _PRELOADRANGE = 5;

function change_transition() {
	current_transition = document.all.transitionType.selectedIndex;
	if (current_transition == 0)
		current_transition = 15;
	else
		current_transition--;
}

function changeSpeed(sidx) {
	switch (sidx) {
	case 0:
		interval = 2000;
		break;
	case 1:
		interval = 4000;
		break;
	case 2:
		interval = 6000;
		break;
	default:
		interval = 4000;
	}
	if (timerId != -1) {
		window.clearInterval(timerId);
		timerId = window.setInterval("forward();", interval);
	}
}

var arrPreload = new Array();
var _PRELOADRANGE = 5;

function preloadRange(intPic, intRange) {
	var divStr = "";
	for ( var i = intPic; i < (intPic + intRange); i++) {
		arrPreload[i] = new Image();
		arrPreload[i].src = imageSrcArray[i];
	}

	if (!bFirst) {
		if (browserCanBlend) {
			var divTrans = '<select name="transitionType" size=1  onchange="change_transition()" class="list1" ><option value=15 selected>�� ��</option> <option value=0 >�� ��</option> <option value=1 >�� ʽ</option> <option value=2 >�� ��</option> <option value=3 >б ʽ</option> <option value=4 >�� ʽ</option> <option value=5 >�� ��</option> <option value=6 >�� ʽ</option> <option value=7 >�� ��</option> <option value=8 >�� ��</option> <option value=9 >ʱ ��</option> <option value=10 >�� ˿</option> <option value=11 >�� ��</option> <option value=12 >ѩ ��</option> <option value=13 >�� ��</option> <option value=14 >�� չ</option> </select> ';
		}
		bFirst = true;
	}
	return false;
}

function ScaleImage(i) {

	var style = "height=172 width=229 style='border:0px;filter:progid:dximagetransform.microsoft.wipe(gradientsize=1.0,wipestyle=4, motion=forward)'";
	return style;

}

function imgLoadNotify() {
	imgIsLoaded = true;
}

function changeSlide(n) {

	if (document.all) {
		if (browserCanBlend) {
			var do_transition;
			if (current_transition == (transition_count)) {
				do_transition = Math.floor(Math.random() * transition_count);
			} else {
				do_transition = current_transition;
			}
			document.all.imgp.style.filter = transitions[do_transition];
			document.all.imgp.filters[0].Apply();
		} else {
			document.all.imgp.style.filter = "blendTrans(duration=1)";
			document.all.imgp.filters.blendTrans.Apply();
		}

	}

	imgIsLoaded = false;
	var s = ScaleImage(curImg);

	var htmlCont = "<div id=dvimg style='padding:0px;margin:0px;'><a href='"
			+ imageIDsArray[curImg]
			+ "' target=_blank title='����鿴����ͼƬ'><img align=middle  src='"
			+ imageSrcArray[curImg] + "' onload='imgLoadNotify();' " + s
			+ " ></a>";

	htmlCont += '<div style="filter:alpha(style=1,opacity=10,finishOpacity=80);background: #888888;width:100%-2px;text-align:right;overflow:hidden;top:-12px;position:relative;margin:0px;height:12px;padding:0px;border:0px;">';

	var pno = 0;

	for (pno = 0; pno < numImgs; pno++) {
		var classstr = "apno";
		if (pno == curImg) {
			classstr = "bpno";
		}

		htmlCont += '<a href="javascript:changeSlide1(' + pno + ');" id="pno_'
				+ pno + '" class="' + classstr + '" target="_self">'
				+ (pno + 1) + '</a>';
	}
	htmlCont += '</div>';

	htmlCont += "</div><div style='line-height:10px; overflow:hidden; font-size:12px; color:#000000; text-align:center; text-decoration: none;padding:0px;margin:0px'><a href='"
			+ imageIDsArray[curImg]
			+ "' class='nav' target='_blank' title='����鿴����ͼƬ'><b><font color=#ff0000><span style='position:relative; top:-5px'>"
			+ imageIntroArray[curImg] + "</span></font></b></a></div>";

	//alert(htmlCont);
	document.getElementById("imgp").innerHTML = htmlCont;
	if (document.all) {
		document.all.imgp.filters[0].Play();
	}
}

function changeSlide1(curindex) {
	curImg = curindex;
	window.clearInterval(timerId);

	changeSlide();
	timerId = window.setInterval('forward();', interval);
}

function forward() {
	imgIsLoaded = false;

	if (!arrPreload[curImg + 1]) {
		curImg++;
		if (curImg >= numImgs) {
			curImg = 0;

		}
	} else {
		curImg++;
		if (curImg >= numImgs) {
			curImg = 0;
		}
	}
	changeSlide();
}

function rewind() {
	curImg--;
	if (curImg < 0) {
		curImg = numImgs - 1;
	}
	changeSlide();
}

function stop() {
	window.clearInterval(timerId);
	timerId = -1;

	imgIsLoaded = true;
}

function play() {
	if (timerId == -1)
		timerId = window.setInterval('forward();', interval);

}

function setButton(direction) {
	if (timerId != -1) {
		window.clearInterval(timerId);
		timerId = window.setInterval("forward();", interval);
	}
	imgIsLoaded = true;
	if (direction == 0) {

	} else {

	}
}
init();
</script>

							</div>
						</div>
						<table id="user" cellpadding="0" cellspacing="0">
							<tr style="height: 27px; overflow: hidden;">
								<th colspan="2">
									<div class="titlebg">
										<span class="title">�û���¼</span>
									</div>
								</th>
							</tr>
							<tr>
								<td style="width: 70px;" align="right">
									�û�����
								</td>
								<td>
									<input type="text" name="username" />
								</td>
							</tr>
							<tr>
								<td align="right">
									��&nbsp;&nbsp;�룺
								</td>
								<td>
									<input type="password" name="password" />
								</td>
							</tr>
							<tr>
								<td align="right">
									<a href="#" style="font-size: 12px;">��������</a>
								</td>
								<td>
									&nbsp;
									<button type="submit" value="��¼">
										��¼
									</button>
									<button type="reset" value="ע��">
										ע��
									</button>
								</td>
							</tr>
						</table>
						<div id="service">
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
						<div id="contact">
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
				</td>
				<td>
					<div id="content" style="background-color: white;">
						<div id="dbs">



							<a href="#" class="db">��<br />ұ<br />��<br />У<br />��<br />��<br />Ժ<br />��<br />��<br />
							</a>
							<a href="front/standard/index.jsp" class="db">��<br />ұ<br />��<br />ҵ<br />��<br />׼<br />��<br />
							</a>
							<a href="front/expert/expertList.jsp" class="db">��<br />ұ<br />��<br />ҵ<br />ר<br />��<br />��<br />
							</a>
							<a href="front/technews/index.jsp" class="db"> ��<br />ұ<br />��<br />��<br />��<br />̬<br />��<br />
							</a>
							<a href="#" class="db">��<br />ұ<br />ͼ<br />��<br />��<br />
							</a>
							<a href="front/article/indexArticle.jsp" class="db">��<br />ұ<br />��<br />��<br />��<br />
							</a>
							<a href="front/company/indexCompany.jsp" class="db">��<br />ұ<br />��<br />ҵ<br />��<br />
							</a>
							<a href="front/equipment/index.jsp" class="db">��<br />ұ<br />��<br />��<br />��<br />
							</a>

							<a href="front/patent/index.jsp" class="db">��<br />ұ<br />ר<br />��<br />��<br />
							</a>
							<a href="front/jxustmpp/list.action" class="db">��<br />ұ<br />��<br />��<br />��<br />��<br />��<br />
							</a>
							<a href="front/metaInfo/metalIndex.jsp" class="db">��<br />ұ<br />��<br />��<br />��<br />��<br />��<br />
							</a>
							<a href="front/feature/indexFeature.jsp" class="db">��<br />��<br />��<br />��<br />��<br />ѧ<br />��<br />ɫ<br />��<br />
							</a>
							
						</div>
						<div id="adver">
						<img src="images/advertise.jpg" alt="���" width="768" />
						</div>
						<div id="news">
							<div class="titlebg">
								<span class="title">��ұ����</span>
							</div>
							<div>
								 <s:iterator value="#request.listNews" status="stu">
							  <a href="front/technews/TechNews_show?id=<s:property value="id"/>"><s:property value="newstitle"/> </a>
							  </s:iterator>
							</div>
						</div>
						<div id="recoms" style="width: 100%;">
							<div id="tabs">
								<ul style="padding-left: 0; margin-top: 0px;">
									<li class="now">
										<a name="recom-0" >&nbsp;�ɿ󹤳�&nbsp;</a>
									</li>
									<li>
										<a name="recom-1">&nbsp;��ȫ�뻷������&nbsp;</a>
									</li>
									<li>
										<a name="recom-2">&nbsp;����ӹ�����&nbsp;</a>
									</li>
									<li>
										<a  name="recom-3">&nbsp;ұ�𹤳�&nbsp;</a>
									</li>
									<li>
										<a name="recom-4">&nbsp;���Ϲ���&nbsp;</a>
									</li>
									<li>
										<a name="recom-5">&nbsp;��ұ�豸����&nbsp;</a>
									</li>
								</ul>
							</div>
							<%
								String[] zj = new String[] { "������", "����", "������", "��ʢ��", "������",
										"��ͳѫ" };
							%>
							<%
								for (int i = 0; i < 6; i++) {
								  
								    
								 
							%>
							<div id="recom-<%=i%>" class="recom"
								<%=i == 0 ? "" : "style='display:none'"%>>
								<div>
									<span><label>
											��ҵ��̬<a href="front/technews/index.jsp">more&nbsp;&nbsp;</a> </label></span>
										<!-- 	<s:set name=""></s:set>
											<s:iterator value="#request.list_1_1" status="st">
									<a href="#"><%=("�ҹ�������40�������Դ�ۺ�����ʾ������ ".substring(2 * i))%></a> 
									  <a href="#"><s:property value="newstitle"/> </a>
									</s:iterator>-->
									<%
									if(list[i][0]!=null){
									for(int k=0;k<list[i][0].size();k++){
									   TechNews single=(TechNews)list[i][0].get(k);
									   System.out.println("list");
									   System.out.println(list[i][0]==null);
									  System.out.println(single.getNewstitle());
									
									 %>
									<a href="front/technews/TechNews_show?id=<%=single.getId() %>"><%=Tools.SubStr(single.getNewstitle())  %> </a>
									<% }
									}
									 %>
								</div>
								<div>
									<span><label>
									  <%if(i==4){
									     out.print("�¼����²���");
									   }
									   else if(i==5){
									     out.print("�¼������豸");
									   }else{
									     out.print("�¼����¹���");
									   }
									   %>
									  
											<a href="front/technews/index.jsp">more&nbsp;&nbsp;</a> </label> </span>
									<!-- 	<a href="#"><%="ǭ������������������ɿ������ɿ�Ԥ���о� ".substring(2 * i)%></a>
									<a href="#"><%="�߷ֱ���SAR���ص�����Ӧ������ ".substring(2 * i)%></a>
									<a href="#"><%="���ӿ�����������ʯ��ѧ���ѹ��ؼ����о� ".substring(2 * i)%></a>
									<a href="#"><%="��ɽ����վ��Ʒ��ַſ���ͭ��Ͷ������ ".substring(2 * i)%></a>
									<a href="#"><%="��ͭ���޹�˾������ǩ��ͭ��̽Э�� ".substring(2 * i)%></a>
									-->
									<%
									if(list[i][1]!=null){
									for(int k=0;k<list[i][1].size();k++){
									   TechNews single=(TechNews)list[i][1].get(k);
									   System.out.println("list");
									   System.out.println(list[i][1]==null);
									  System.out.println(single.getNewstitle());
									
									 %>
									<a href="front/technews/TechNews_show?id=<%=single.getId() %>"><%=Tools.SubStr(single.getNewstitle())  %> </a>
									<% }
									}
									 %>
								
								</div>
								<div>
									<span><label>
											ר����Ϣ<a href="front/patent/index.jsp">more&nbsp;&nbsp;</a></label> </span>
									<%
									if(list[i][2]!=null){
									for(int k=0;k<list[i][2].size();k++){
									   Patent single=(Patent)list[i][2].get(k);
									   System.out.println("list");
									   System.out.println(list[i][1]==null);
									 
									
									 %>
									<a href="front/patent/Patent_read?id=<%=single.getId() %>"><%=Tools.SubStr(single.getName())  %> </a>
									<% }
									}
									 %>
									
								</div>
								<div>
									<span><label>
									  <%
									    if(i>1){
									      out.print("ѧ��ר��");
									    }else{
									      out.print("ר�ҽ���");
									    }
									   %>
											<a href="front/expert/expertList.jsp">more&nbsp;&nbsp;</a> </label></span>
									<%
									if(list[i][3]!=null){
									for(int k=0;k<list[i][3].size();k++){
									   Expert single=(Expert)list[i][3].get(k);
									   System.out.println("list");
									   System.out.println(list[i][1]==null);
									 
									
									 %>
									<a href="front/expert/expert_findById?id=<%=single.getId() %>"><%=Tools.SubStr(single.getName())  %> </a>
									<% }
									}
									 %>
								</div>
							</div>
							<%
							  }
								
							%>
						</div>
					</div>
				</td>
			</tr>
		</table>
		<div id="links">
			<div class="titlebg">
				<span class="title">��������</span>
			</div>
			<div>
				<%
					for (int i = 0; i < 6; i++) {
				%>
				<a href="http://www.jxust.cn/" title="����������ѧ"><img src="images/link-jxust.png"
						alt="" /> </a>
				<a href="#" title="CSDN��̳"><img src="images/link-csdn.png"
						alt="CSDN��̳" /> </a>
				<a href="#" title="�Ѻ�"><img src="images/link-sohu.png" alt="�Ѻ�" />
				</a>
				<%
					}
				%>
			</div>
		</div>
		<div id="policy">
			<a href="#">���ڱ�վ</a>|
			<a href="#">�������</a>|
			<a href="#">��������</a>|
			<a href="#">��������</a>|
			<a href="#">����֧��</a>
			
			<p>
				Copyright@ 2011-2021 www.isp4nm.com All Rights Reserved ��Ȩ����
				����������ѧͼ���
			</p>
			<p>
				��ICP֤��080527�� �������Ļ���Ӫ����֤�� ������[2009]127�� ����������110105005190��
			</p>
			<p>
				����Ŷӣ�����������ѧ��ϢѧԺ���Ź�����
			</p>
		</div>
		<script type="text/javascript">
swfobject.registerObject("FlashID");
</script>
	</body>
</html>