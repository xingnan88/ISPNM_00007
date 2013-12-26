<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath %>back/jxustmpp/">
		<base target="_self">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<link href="images/skin.css" rel="stylesheet" type="text/css" />
		<style type="text/css">
		<!--
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
			background-color: #EEF2FB;
		}
		-->
		</style>
		
		<link href="swfupload/css/default.css" rel="stylesheet" type="text/css" />
	   	<script type="text/javascript" src="swfupload/js/swfupload.js"></script>
	   	<script type="text/javascript" src="swfupload/js/swfupload.queue.js"></script>
	    <script type="text/javascript" src="swfupload/js/fileprogress.js"></script>
	    <script type="text/javascript" src="swfupload/js/handlers.js"></script>
	    <!-- 初始化swfupload 对象-->
   		<script type="text/javascript">
		var upload1, upload2;

		window.onload = function() {
			upload1 = new SWFUpload({

				//提交路径
				upload_url: "upload.action",
				//向后台传递额外的参数
				post_params: {"mpp.id" : ""+document.form1.id.value},
				//上传文件的名称
				file_post_name: "file",
				
				// 下面自己按照字面意思理解
				file_size_limit : "102400",	// 100MB
				file_types : "*.wmv",
				file_types_description : "视频格式(wmv)",
				file_upload_limit : "1",
				//file_queue_limit : "0",

				// 事件处理
				file_dialog_start_handler : fileDialogStart,
				file_queued_handler : fileQueued,
				file_queue_error_handler : fileQueueError,
				file_dialog_complete_handler : fileDialogComplete,
				upload_start_handler : uploadStart,
				upload_progress_handler : uploadProgress,
				upload_error_handler : uploadError,
				upload_success_handler : uploadSuccess,
				upload_complete_handler : uploadComplete,

				// 按钮的处理
				button_image_url : "<%=basePath %>/back/jxustmpp/swfupload/images/ButtonUpload.png",
				button_placeholder_id : "spanButtonPlaceholder1",
				button_width: 135,
				button_height: 47,
				
				
				// Flash Settings
				flash_url : "<%=basePath %>/back/jxustmpp/swfupload/js/swfupload.swf",
				

				custom_settings : {
					progressTarget : "fsUploadProgress1",
					cancelButtonId : "btnCancel1"
				},
				
				// Debug Settings
				debug: false
			});
	     }
	    
	</script>
	</head>

	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top" background="images/mail_leftbg.gif">
					<img src="images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="images/content-bg.gif">
					<table width="100%" height="31" border="0" cellpadding="0"
						cellspacing="0" class="left_topbg" id="table2">
						<tr>
							<td height="31">
								&nbsp;
							</td>
						</tr>
					</table>
				</td>
				<td width="16" valign="top" background="images/mail_rightbg.gif">
					<img src="images/nav-right-bg.gif" width="16" height="29" />
				</td>
			</tr>

			<tr>
				<td valign="middle" background="images/mail_leftbg.gif">
					&nbsp;
				</td>
				<td valign="top" bgcolor="#F7F8F9">
					<table width="80%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td class="left_txt">
								当前位置：上传采矿方法视频
							</td>
						</tr>

						<tr>
							<td>
								<table width="100%" height="55" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="10%" height="55" valign="middle">
											<img src="images/title.gif" width="54" height="55">
										</td>
										<td width="90%" valign="top">
											<span class="left_txt2">提示：</span>
											<span class="left_txt3">本页为视频文件上传</span>
											<br>
											<span class="left_txt2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
											<span class="left_txt3">视频选择限制：1、文件最大为100M 2、文件类型为wmv</span>
										</td>
									</tr>
								</table>
							</td>
						</tr>

						<tr>
							<td>
								<table width="100%" height="31" border="0" cellpadding="0"
									cellspacing="0" class="nowtable">
									<tr>
										<td class="left_bt2">
											&nbsp;&nbsp;&nbsp;&nbsp;上传采矿方法视频
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>								
								<form action="upload" name="form1" method="post">
								<input type="hidden" name="id" value="${mpp.id }" />
								<table width="80%" border="0" cellspacing="0" cellpadding="0"
									align="center" class="shuoming">
									<tr>
										<td bgcolor="#ffffff" width="27%">&nbsp;</td>										
										<td bgcolor="#ffffff">
											<div>
												<div class="fieldset flash" id="fsUploadProgress1">
													<span class="legend">文件上传</span>
												</div>
												<div style="padding-left: 5px;">
												
													<span id="spanButtonPlaceholder1"></span>
													<a href="javascript:;" onclick="upload1.startUpload()"><img src="images/upload_button.png" style="border: 0px;margin-top: 2px;"/></a>
													
													
												</div>
											</div>
										</td>
										<td bgcolor="#ffffff" width="20%">&nbsp;</td>											
									</tr>
								</table>
								</form>
							</td>
						</tr>
						<s:if test="mpp.dhlj != null">
						<tr>
							<td>								
								<table width="80%" align="center" border="0" cellpadding="0" cellspacing="0" class="line_table_xinxi">
				                	<tr>
				                    	<td width="20%" align="right">方法名</td>
				                        <td><s:property value="mpp.ffname" /> </td>
				                    </tr>
				                    <tr>
				                    	<td width="20%" align="right">开采方式</td>
				                        <td><s:property value="mpp.kcfs" /></td>
				                    </tr>
				                    <tr>
				                    	<td width="20%" align="right" valign="top">采矿 截图</td>
				                        <td height="120">
				                        	<img src="<%=basePath %><s:property value="mpp.tplj" />" alt="<s:property value="mpp.ffname" />" title="<s:property value="mpp.ffname" />" class="post-thumbnail" />                           
				                        </td>
				                    </tr>
				                    <tr>
				                    	<td width="20%" align="right">采矿视频</td>
				                        <td><a href="mppplay.action?mpp.id=<s:property value="mpp.id" />">观看视频</a></td>
				                    </tr>
				                </table>
							</td>
						</tr>
						</s:if>
					</table>
				</td>
				<td background="images/mail_rightbg.gif">
					&nbsp;
				</td>
			</tr>



			<tr>
				 <td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
			    <td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
			    <td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
			</tr>
		</table>
	</body>
</html>
