<%@ page language="java" import="java.util.*" contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <base href="<%=basePath %>front/jxustmpp/"/>
    <title>��ұ�������̿�</title>
    
	<meta http-equiv="pragma" content="no-cache" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="expires" content="0" />    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	
	<link rel="stylesheet" type="text/css" href="index.css"/>
	<script type="text/javascript" src="jquery-ui/js/jquery-1.6.2.min.js" ></script>
	<script type="text/javascript" src="jquery-ui/js/jquery-ui-1.8.15.custom.min.js" ></script>
	<script type="text/javascript" src="index.js" ></script>
	<style type="text/css">
a.db{
	font-family:'����';

}
label {
	display: block;
}
	</style>
	<script >
	</script>
  </head>
  
  <body>
    <div id="banner">
    	<div style="float: right;font-size: 11px;margin: 2px 5px;">
    		<a>�����ղ�</a>|
    		<a>��Ϊ��ҳ</a>|
    		<a>��ϵ����</a>
    	</div>
    	<div style="height: 88px;width: 1px;"></div>
    	<table id="navigation" cellpadding="0" cellspacing="0" style="border: none;">
	    	<tr>
		    	<td id="nav-l"></td>
		    	<td class="item"><a>ƽ̨���</a></td>
		    	<td class="item"><a>������Ŀ</a></td>
		    	<td class="item"><a>������Ŀ</a></td>
		    	<td class="item"><a>������Ŀ</a></td>
		    	<td class="item"><a>������Ŀ</a></td>
		    	<td class="item"><a>������Ŀ</a></td>
		    	<td class="item"><a>������Ŀ</a></td>
		    	
		    	<td id="nav-r"></td>
	    	</tr>
	    		
    	</table>
    </div>
    <table id="main" style="">
	    <tr><td>
		    <div id="content" style="background-color: white;">
            <div class="modeltitle_play"><span class="modelbody_play"><em>��Ƶ��</em>��ұ�������̿�</span><span class="modeltag_play">��ǰλ�ã�<a>&nbsp;��ҳ&nbsp;</a>>&nbsp;��ұ�������̿�</span></div>
		      <div id="video">
		    		<OBJECT id=MediaPlayer1 style="WIDTH: 735px; HEIGHT: 400px" codeBase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701standby=Loading type=application/x-oleobject height=246 width=241 classid=CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6 VIEWASTEXT="">
					<PARAM NAME="URL" VALUE="<%=basePath %><s:property value="mpp.dhlj"/>">
					<PARAM NAME="rate" VALUE="1">
					<PARAM NAME="balance" VALUE="0">
					<PARAM NAME="currentPosition" VALUE="0">
					<PARAM NAME="defaultFrame" VALUE="">
					<PARAM NAME="playCount" VALUE="1">
					<PARAM NAME="autoStart" VALUE="-1">
					<PARAM NAME="currentMarker" VALUE="0">
					<PARAM NAME="invokeURLs" VALUE="-1">
					<PARAM NAME="baseURL" VALUE="">
					<PARAM NAME="volume" VALUE="70">
					<PARAM NAME="mute" VALUE="0">
					<PARAM NAME="uiMode" VALUE="full">
					<PARAM NAME="stretchToFit" VALUE="0">
					<PARAM NAME="windowlessVideo" VALUE="0">
					<PARAM NAME="enabled" VALUE="-1">
					<PARAM NAME="enableContextMenu" VALUE="-1">
					<PARAM NAME="fullScreen" VALUE="0">
					<PARAM NAME="SAMIStyle" VALUE="">
					<PARAM NAME="SAMILang" VALUE="">
					<PARAM NAME="SAMIFilename" VALUE="">
					<PARAM NAME="captioningID" VALUE="">
					<PARAM NAME="enableErrorDialogs" VALUE="0">
					<PARAM NAME="_cx" VALUE="6376">
					<PARAM NAME="_cy" VALUE="6509">
					</OBJECT>
		    		
		    	</div>
		    	
			    	
	    	  </div>
		    
	    </td>
        <td>
        		<div style="height:50px;"></div>
		    	<div id="contact">
		    		<div class="titlebg"><span class="title" >��Ƶ��Ϣ</span></div>
		    		
		    		<div>
		    			<span class="i_play">��������<s:property value="mpp.ffname"/></span>
		    			<span class="i_play">���ɷ�ʽ��<s:property value="mpp.kcfs"/></span>
		    			<span class="i_play">���Ŵ�����<s:property value="mpp.counts"/></span>
		    			<span class="i_play">������ڣ�<s:date name="mpp.time" format="yyyy-MM-dd"/></span>
		    			<s:if test="mpp.kcfs == '¶��ɿ�'">
		    				<span class="i_play">����˵����<s:property value="mpp.wzsm"/></span>
		    				
		    			</s:if>
		    			<s:else>
	                        <span class="i_play">���÷�Χ��<s:property value="mpp.syfw"/></span>
	                        <span class="i_play">��������<s:property value="mpp.kkcs"/></span>
	                        <span class="i_play">����������<s:property value="mpp.cqgz"/></span>
	                        <span class="i_play">�زɹ�����<s:property value="mpp.hcgz"/></span>
		    			</s:else>
                        
		    		</div>
		    	</div>
		    
		</td>
		<td width="5">&nbsp;</td>
        </tr>
       
         
	</table>
	<div id="links" >
	    <div class="titlebg" ><span class="title">��������</span></div>
	    <div>
		    <% for(int i=0;i<6;i++){%>
		    <a href="#" title="��������ѧ"><img  src="images/link-jxust.png" alt=""/></a>
		    <a href="#" title="CSDN��̳"><img  src="images/link-csdn.png" alt="CSDN��̳"/></a>
		    <a href="#" title="�Ѻ�"><img  src="images/link-sohu.png" alt="�Ѻ�"/></a>
		<%} %>
		</div>
    </div>
    <div id="policy">
    	<a href="#">���ڱ�վ</a>|
    	<a href="#">�������</a>|
    	<a href="#">��������</a>|
    	<a href="#">��������</a>|
    	<a href="#">����֧��</a>|
    	<a href="#">��վ��ͼ</a>
    	<p>Copyright? 2011-2021 www.isp4nm.com All Rights Reserved ��Ȩ���� ��������ѧͼ��� </p>
		<p>��ICP֤��080527�� �������Ļ���Ӫ���֤�� ������[2009]127�� ����������110105005190��</p>
		<p>����Ŷӣ���������ѧ��ϢѧԺ���Ź�����</p>
    </div>
  </body>
</html>
