<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">

	<link rel="stylesheet" type="text/css" href="index.css"/>	-->

	<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-1.6.2.min.js" ></script>
	<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-ui-1.8.15.custom.min.js" ></script>
	<script type="text/javascript" src="index.js" ></script>
	<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
	<link href="css/left.css" rel="stylesheet" type="text/css">
    <style type="text/css">

</style>

  </head>
  
  <body>
      <!-- 图片新闻区域 -->
        <div id="dvimg" style="padding:1px,1px,0px,1px;margin:0px;text-align: center">
           <div style="line-height:10px; overflow:hidden; font-size:12px; color:#000000; 
                text-align:center; text-decoration: none;padding:0px;margin:0px">
             <script >
				document.write('<style>.introCss{font-size: 12px;line-height: 15px;text-decoration: none;font-weight: bold;color: #303030;text-align: center;vertical-align: top;} a.nav:visited {  color: #006699; text-decoration: none;}a.nav:active {  color: #006699; text-decoration: none;}a.nav:hover {  color: #006699;text-decoration: none;}a.nav:link {color: #006699;text-decoration: none;}');
				document.write('.apno{padding:1px 7px;border-left:#cccccc 1px solid;}');
				document.write('a.apno:link,a.apno:visited{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#666;}');
				document.write('a.apno:active,a.apno:hover{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#999;}');
				document.write('.bpno{padding:1px 7px;border-left:#cccccc 1px solid;}');
				document.write('a.bpno:link,a.bpno:visited{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#D34600;}');
				document.write('a.bpno:active,a.bpno:hover{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#D34600;}');
				document.write('</style>');
				document.write("   <table border='0' cellspacing='0' cellpadding='1'>");
				document.write("    <tr>");
				document.write("     <td id='imgp'>");
				document.write("     </td>");
				document.write("    </tr>");
				document.write("   </table>");
				
				
				var slideshow_end_url="";
				var imageSrcArray = new Array();
				var imageIDsArray = new Array();
				var imageIntroArray = new Array();
											imageSrcArray[0]="http://www.jxys.gov.cn//manage/news/edit/uploadfile/201192372242623.jpg";
				imageIDsArray[0]="#";
				imageIntroArray[0]="第七届泛珠大会 项目...";
				imageSrcArray[1]="http://www.jxys.gov.cn//manage/news/edit/uploadfile/2011922131752528.jpg";
				imageIDsArray[1]="#";
				imageIntroArray[1]="工信部有关领导到江钨...";
				imageSrcArray[2]="http://www.jxys.gov.cn//manage/news/edit/uploadfile/20119228310692.jpg";
				imageIDsArray[2]="#";
				imageIntroArray[2]="南京地调中心组织考察...";
				imageSrcArray[3]="http://www.jxys.gov.cn//manage/news/edit/uploadfile/20119227432241.jpg";
				imageIDsArray[3]="#";
				imageIntroArray[3]="江钨控股集团被评为全...";
				imageSrcArray[4]="http://www.jxys.gov.cn//manage/news/edit/uploadfile/2011919121131531.jpg";
				imageIDsArray[4]="#";
				imageIntroArray[4]="江铜集团和上海期交所...";


				var imageCreatorArray = new Array('','','','');
				var imageBlogArray = new Array('','','','');
				
				var SHOWINGSTRING='第%slideNum / 5张';
				var numImgs = 5;
				
				
				var arrPreload = new Array();
				var SHOWCREATOR=false;
						 
				
				var begImg  = 0;
				var arrPreload = new Array();
				var SHOWCREATOR=false;
									
				var spd = 2;
				function init()
				{
					preloadRange(0,_PRELOADRANGE-1);
				
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
				
				 var agt=navigator.userAgent.toLowerCase();
				
					var is_major = parseInt(navigator.appVersion);
					var is_minor = parseFloat(navigator.appVersion);
				
					var is_nav  = ((agt.indexOf('mozilla')!=-1) && (agt.indexOf('spoofer')==-1)
								&& (agt.indexOf('compatible') == -1) && (agt.indexOf('opera')==-1)
								&& (agt.indexOf('webtv')==-1) && (agt.indexOf('hotjava')==-1));
					var is_nav2 = (is_nav && (is_major == 2));
					var is_nav3 = (is_nav && (is_major == 3));
					var is_nav4 = (is_nav && (is_major == 4));
					var is_nav4up = (is_nav && (is_major >= 4));
					var is_navonly      = (is_nav && ((agt.indexOf(";nav") != -1) ||
										  (agt.indexOf("; nav") != -1)) );
					var is_nav6 = (is_nav && (is_major == 5));
					var is_nav6up = (is_nav && (is_major >= 5));
					var is_gecko = (agt.indexOf('gecko') != -1);
				
				
					var is_ie     = ((agt.indexOf("msie") != -1) && (agt.indexOf("opera") == -1));
					var is_ie3    = (is_ie && (is_major < 4));
					var is_ie4    = (is_ie && (is_major == 4) && (agt.indexOf("msie 4")!=-1) );
					var is_ie4up  = (is_ie && (is_major >= 4));
					var is_ie5    = (is_ie && (is_major == 4) && (agt.indexOf("msie 5.0")!=-1) );
					var is_ie5_5  = (is_ie && (is_major == 4) && (agt.indexOf("msie 5.5") !=-1));
					var is_ie5up  = (is_ie && !is_ie3 && !is_ie4);
					var is_ie5_5up =(is_ie && !is_ie3 && !is_ie4 && !is_ie5);
					var is_ie6    = (is_ie && (is_major == 4) && (agt.indexOf("msie 6.")!=-1) );
					var is_ie6up  = (is_ie && !is_ie3 && !is_ie4 && !is_ie5 && !is_ie5_5);
				
					 var is_aol   = (agt.indexOf("aol") != -1);
					var is_aol3  = (is_aol && is_ie3);
					var is_aol4  = (is_aol && is_ie4);
					var is_aol5  = (agt.indexOf("aol 5") != -1);
					var is_aol6  = (agt.indexOf("aol 6") != -1);
				
					var is_opera = (agt.indexOf("opera") != -1);
					var is_opera2 = (agt.indexOf("opera 2") != -1 || agt.indexOf("opera/2") != -1);
					var is_opera3 = (agt.indexOf("opera 3") != -1 || agt.indexOf("opera/3") != -1);
					var is_opera4 = (agt.indexOf("opera 4") != -1 || agt.indexOf("opera/4") != -1);
					var is_opera5 = (agt.indexOf("opera 5") != -1 || agt.indexOf("opera/5") != -1);
					var is_opera5up = (is_opera && !is_opera2 && !is_opera3 && !is_opera4);
				
					var is_webtv = (agt.indexOf("webtv") != -1); 
				
					var is_TVNavigator = ((agt.indexOf("navio") != -1) || (agt.indexOf("navio_aoltv") != -1)); 
					var is_AOLTV = is_TVNavigator;
				
					var is_hotjava = (agt.indexOf("hotjava") != -1);
					var is_hotjava3 = (is_hotjava && (is_major == 3));
					var is_hotjava3up = (is_hotjava && (is_major >= 3));
				
					var is_js;
					if (is_nav2 || is_ie3) is_js = 1.0;
					else if (is_nav3) is_js = 1.1;
					else if (is_opera5up) is_js = 1.3;
					else if (is_opera) is_js = 1.1;
					else if ((is_nav4 && (is_minor <= 4.05)) || is_ie4) is_js = 1.2;
					else if ((is_nav4 && (is_minor > 4.05)) || is_ie5) is_js = 1.3;
					else if (is_hotjava3up) is_js = 1.4;
					else if (is_nav6 || is_gecko) is_js = 1.5;
					else if (is_nav6up) is_js = 1.5;
					else if (is_ie5up) is_js = 1.3
				
					else is_js = 0.0;
				
				   var is_win   = ( (agt.indexOf("win")!=-1) || (agt.indexOf("16bit")!=-1) );
					var is_win95 = ((agt.indexOf("win95")!=-1) || (agt.indexOf("windows 95")!=-1));
				
					var is_win16 = ((agt.indexOf("win16")!=-1) || 
							   (agt.indexOf("16bit")!=-1) || (agt.indexOf("windows 3.1")!=-1) || 
							   (agt.indexOf("windows 16-bit")!=-1) );  
				
					var is_win31 = ((agt.indexOf("windows 3.1")!=-1) || (agt.indexOf("win16")!=-1) ||
									(agt.indexOf("windows 16-bit")!=-1));
				
					var is_winme = ((agt.indexOf("win 9x 4.90")!=-1));
					var is_win2k = ((agt.indexOf("windows nt 5.0")!=-1));
				
					var is_win98 = ((agt.indexOf("win98")!=-1) || (agt.indexOf("windows 98")!=-1));
					var is_winnt = ((agt.indexOf("winnt")!=-1) || (agt.indexOf("windows nt")!=-1));
					var is_win32 = (is_win95 || is_winnt || is_win98 || 
									((is_major >= 4) && (navigator.platform == "Win32")) ||
									(agt.indexOf("win32")!=-1) || (agt.indexOf("32bit")!=-1));
				
					var is_os2   = ((agt.indexOf("os/2")!=-1) || 
									(navigator.appVersion.indexOf("OS/2")!=-1) ||   
									(agt.indexOf("ibm-webexplorer")!=-1));
				
					var is_mac    = (agt.indexOf("mac")!=-1);
					if (is_mac && is_ie5up) is_js = 1.4;
					var is_mac68k = (is_mac && ((agt.indexOf("68k")!=-1) || 
											   (agt.indexOf("68000")!=-1)));
					var is_macppc = (is_mac && ((agt.indexOf("ppc")!=-1) || 
												(agt.indexOf("powerpc")!=-1)));
				
					var is_sun   = (agt.indexOf("sunos")!=-1);
					var is_sun4  = (agt.indexOf("sunos 4")!=-1);
					var is_sun5  = (agt.indexOf("sunos 5")!=-1);
					var is_suni86= (is_sun && (agt.indexOf("i86")!=-1));
					var is_irix  = (agt.indexOf("irix") !=-1);    // SGI
					var is_irix5 = (agt.indexOf("irix 5") !=-1);
					var is_irix6 = ((agt.indexOf("irix 6") !=-1) || (agt.indexOf("irix6") !=-1));
					var is_hpux  = (agt.indexOf("hp-ux")!=-1);
					var is_hpux9 = (is_hpux && (agt.indexOf("09.")!=-1));
					var is_hpux10= (is_hpux && (agt.indexOf("10.")!=-1));
					var is_aix   = (agt.indexOf("aix") !=-1);      // IBM
					var is_aix1  = (agt.indexOf("aix 1") !=-1);    
					var is_aix2  = (agt.indexOf("aix 2") !=-1);    
					var is_aix3  = (agt.indexOf("aix 3") !=-1);    
					var is_aix4  = (agt.indexOf("aix 4") !=-1);    
					var is_linux = (agt.indexOf("inux")!=-1);
					var is_sco   = (agt.indexOf("sco")!=-1) || (agt.indexOf("unix_sv")!=-1);
					var is_unixware = (agt.indexOf("unix_system_v")!=-1); 
					var is_mpras    = (agt.indexOf("ncr")!=-1); 
					var is_reliant  = (agt.indexOf("reliantunix")!=-1);
					var is_dec   = ((agt.indexOf("dec")!=-1) || (agt.indexOf("osf1")!=-1) || 
						   (agt.indexOf("dec_alpha")!=-1) || (agt.indexOf("alphaserver")!=-1) || 
						   (agt.indexOf("ultrix")!=-1) || (agt.indexOf("alphastation")!=-1)); 
					var is_sinix = (agt.indexOf("sinix")!=-1);
					var is_freebsd = (agt.indexOf("freebsd")!=-1);
					var is_bsd = (agt.indexOf("bsd")!=-1);
					var is_unix  = ((agt.indexOf("x11")!=-1) || is_sun || is_irix || is_hpux || 
								 is_sco ||is_unixware || is_mpras || is_reliant || 
								 is_dec || is_sinix || is_aix || is_linux || is_bsd || is_freebsd);
				
					var is_vms   = ((agt.indexOf("vax")!=-1) || (agt.indexOf("openvms")!=-1));
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
				
				function change_transition() 
				{
				 current_transition = document.all.transitionType.selectedIndex;
				 if(current_transition == 0)
				  current_transition = 15;
				 else
				  current_transition--;
				}
				
				
				function changeSpeed(sidx)
				{
					 switch (sidx) 
				 {
				  case 0: interval = 2000; break;
				  case 1: interval = 4000; break;
				  case 2: interval = 6000; break;
				  default: interval = 4000;
					}
					if (timerId != -1) 
				 {
				  window.clearInterval(timerId);
				  timerId = window.setInterval("forward();", interval);
					}
				}

				var arrPreload = new Array();
				var _PRELOADRANGE = 5;
		
				function preloadRange(intPic,intRange) {
				 var divStr = "";
				 for (var i=intPic; i<(intPic+intRange); i++) {
				  arrPreload[i] = new Image();
				  arrPreload[i].src = imageSrcArray[i]; 
				 } 
				  
				 if(!bFirst)
				 {
				  if (browserCanBlend) 
				  {
				   var divTrans = '<select name="transitionType" size=1  onchange="change_transition()" class="list1" ><option value=15 selected>随 机</option> <option value=0 >混 合</option> <option value=1 >窗 式</option> <option value=2 >棋 盘</option> <option value=3 >斜 式</option> <option value=4 >门 式</option> <option value=5 >擦 除</option> <option value=6 >虹 式</option> <option value=7 >风 车</option> <option value=8 >波 纹</option> <option value=9 >时 钟</option> <option value=10 >雨 丝</option> <option value=11 >滑 动</option> <option value=12 >雪 花</option> <option value=13 >盘 旋</option> <option value=14 >伸 展</option> </select> ';
				  }
				  bFirst = true;
				 }
				 return false;
				}
				
				function ScaleImage(i)
				{
				 
				 var style="height=185 width=250 style='border:0px;filter:progid:dximagetransform.microsoft.wipe(gradientsize=1.0,wipestyle=4, motion=forward)'";
				 return style;

				}

				function imgLoadNotify()
				{
					imgIsLoaded = true;
				}

				function changeSlide(n)
				{ 

					if (document.all)
				 {     
				  if (browserCanBlend)
				  {
				   var do_transition;
				   if (current_transition == (transition_count)) 
				   {
					do_transition = Math.floor(Math.random() * transition_count);
				   } 
				   else 
				   {
					do_transition = current_transition;
				   }
				   document.all.imgp.style.filter=transitions[do_transition];
				   document.all.imgp.filters[0].Apply();   
				  }
					 else
					 {
					  document.all.imgp.style.filter="blendTrans(duration=1)";
					  document.all.imgp.filters.blendTrans.Apply();
					 }
					 
					}
					
					imgIsLoaded = false;
					var s = ScaleImage(curImg);

					
					var htmlCont = "<div id=dvimg style='padding:1px,1px,0px,1px;margin:0px;text-align: center'><a href='"+imageIDsArray[curImg]+"' target=_blank title='点击查看更多图片'><img align=middle  src='" + imageSrcArray[curImg] + "' onload='imgLoadNotify();' "+s+" ></a>";
				   
				 htmlCont += '<div style="filter:alpha(style=1,opacity=10,finishOpacity=80);background: #888888;width:100%-2px;text-align:center;overflow:hidden;top:-12px;position:relative;margin:0px;height:12px;padding:0px;border:0px;">';
				 
				   
				 var pno = 0;
				 
				 
				 for(pno=0;pno< numImgs ; pno++)
				 {
				  var classstr="apno";
				  if(pno == curImg)
				  {
				   classstr = "bpno";
				  }
				  
				  htmlCont += '<a href="javascript:changeSlide1('+pno+');" id="pno_'+pno+'" class="'+classstr+'" target="_self">'+(pno+1)+'</a>';
				 } 
				 htmlCont += '</div>';
				 
				 
				 htmlCont += "</div><div style='line-height:14px; overflow:hidden; font-size:12px; color:#000000; text-align:center; text-decoration: none;padding:0px;margin:0px'><a href='"+imageIDsArray[curImg]+"' class='nav' target='_blank' title='点击查看更多图片'><b><font color=#ff0000><span style='position:relative; top:0px'>"+imageIntroArray[curImg]+"</span></font></b></a></div>";
					
				 //alert(htmlCont);
					document.getElementById("imgp").innerHTML = htmlCont ;
					if (document.all) 
					{   
				  document.all.imgp.filters[0].Play();  
					} 
				}
				
				function changeSlide1(curindex)
				{
				 curImg = curindex;
				 window.clearInterval(timerId);

				 changeSlide();
				 timerId = window.setInterval('forward();', interval);
				}
				
				function forward()
				{
				 imgIsLoaded = false;
				  
				 if (!arrPreload[curImg+1])
				 {
				  curImg++;
				  if (curImg >= numImgs) 
				  { 
				   curImg = 0;
				   
				  } 
				 } 
				 else 
				 {
				  curImg++;
				  if (curImg >= numImgs) 
				  {  
				   curImg = 0;
				  }
				 }
				 changeSlide();
				}
				
				function rewind()
				{
				 curImg--;
				 if (curImg < 0)
				 {
				  curImg = numImgs-1;  
				 }
				 changeSlide();
				}
				
				function stop()
				{
					window.clearInterval(timerId);
					timerId = -1;
					
					imgIsLoaded = true;
				}
				
				function play()
				{
					if (timerId == -1) 
				  timerId = window.setInterval('forward();', interval);
				   
				}
				
				function setButton(direction)
				{
				 if (timerId != -1) { window.clearInterval(timerId); timerId = window.setInterval("forward();", interval); }
					imgIsLoaded = true;
					if (direction == 0) 
				 {
				  
					}
				 else 
				 {
				  
					}
				}
				init();			
</script>

<br /> 
<div width="250" border="0" cellpadding="0" cellspacing="0"  align="left">
    <iframe name="myframe" height="493" width="250" src="standard/standardAction!list1" frameborder="0" scrolling="no" ></iframe>
</div>



<div>
</div>
  </body>
</html>
