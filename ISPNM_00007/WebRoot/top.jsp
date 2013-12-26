<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/index.css"/>
	
	<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-1.6.2.min.js" ></script>
	<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-ui-1.8.15.custom.min.js" ></script>
	<script type="text/javascript" src="index.js" ></script>
	<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>

  </head>
  
  <body>
     <div id="banner" align="center">
      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="1020" height="125" id="FlashID" title="movie1">
        <param name="movie" value="flash/top.swf" />
        <param name="quality" value="high" />
        <param name="wmode" value="opaque" />
        <param name="swfversion" value="9.0.45.0" />
        <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
        <param name="expressinstall" value="Scripts/expressInstall.swf" />
        <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
        <!--[if !IE]>-->
        <object type="application/x-shockwave-flash" data="flash/top.swf" width="1020" height="125">
          <!--<![endif]-->
          <param name="quality" value="high" />
          <param name="wmode" value="opaque" />
          <param name="swfversion" value="9.0.45.0" />
          <param name="expressinstall" value="Scripts/expressInstall.swf" />
          <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
          <div>
            <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
            <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获取 Adobe Flash Player" width="112" height="33" /></a></p>
          </div>
          <!--[if !IE]>-->
        </object>
        <!--<![endif]-->
      </object>    
</div>

   <table width="1022"  border="0" cellpadding="0" cellspacing="0" background="<%=basePath %>images/webimg/an-bg.jpg" align="center"  class="menutb">
  
        <!--DWLayoutTable-->
        <tr>
          <td width="2%"  valign=></td>
          <td width="5%"  valign=><a href="<%=basePath %>" target="_top">首 页</a></td>

          <td width="2" valign="top"><img src="<%=basePath %>images/webimg/an-line.jpg" width="2"></td>
          <td width="8%" valign="top"><a href="<%=basePath %>platform_intro.jsp" target="_blank">平台简介</font></a></td>

          <td width="2" valign="top"><img src="<%=basePath %>images/webimg/an-line.jpg" width="2"></td>
          <td width="8%" valign="top"><a href="<%=basePath %>front/technews/index.jsp" target="_blank">科技动态</font></a></td>

          <td width="2" valign="top"><img src="<%=basePath %>images/webimg/an-line.jpg" width="2"></td>
          <td width="8%" valign="top"><a href="<%=basePath %>front/equipment/index.jsp" target="_blank">矿冶设备</font></a></td>

          <td width="2" valign="top"><img src="<%=basePath %>images/webimg/an-line.jpg" width="2"></td>
          <td width="8%" valign="top"><a href="<%=basePath %>front/expert/expertList.jsp" target="_blank">行业专家</font></a></td>

          <td width="2" valign="top"><img src="<%=basePath %>images/webimg/an-line.jpg" width="2"></td>
          <td width="8%" valign="top"><a href="<%=basePath %>front/company/indexCompany.jsp" target="_blank">企业风采</font></a></td>

          <td width="2" valign="top"><img src="<%=basePath %>images/webimg/an-line.jpg" width="2"></td>
          <td width="8%" valign="top"><a href="<%=basePath %>front/standard/index.jsp" target="_blank">法律法规 </font></a></td>

          <td width="2" valign="top"><img src="<%=basePath %>images/webimg/an-line.jpg" width="2"></td>
          <td width="8%" valign="top"><a href="#">金属知识</font></a></td>
          
           <td width="2" valign="top"><img src="<%=basePath %>images/webimg/an-line.jpg" width="2"></td>
          <td width="8%" valign="top"><a href="<%=basePath %>front/feature/indexFeature.jsp" target="_blank">理工特色</font></a></td>
          <td width="2%"  valign=></td>
        </tr>
  </table>


  </body>
</html>
