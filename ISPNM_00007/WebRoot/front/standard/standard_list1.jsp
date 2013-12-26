<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
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

		<title>矿冶行业标准库</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<script type="text/javascript" src="back/standard/js/standard.js"></script>
		<script type="text/javascript">
	
</script>
		<link href="back/standard/css/fenye.css" rel="stylesheet" type="text/css">
		<link href="back/standard/css/left.css" rel="stylesheet" type="text/css">
		<style type="text/css">
</style>

	</head>

	<body>

		<table cellpadding="0" cellspacing="0" width="230">
			<!--DWLayoutTable-->
			<tbody>
				<tr>
					<td height="27" valign="top" width="230">

						<table class="subjecttitle" background="front/standard/images/bg2.gif"
							border="0" cellpadding="0" cellspacing="0" width="230">

							<!--DWLayoutTable-->
							<tbody>
								<tr>
									<td align="center" height="27" valign="middle" width="35">
										<img src="front/standard/images/dit3.gif" height="16" width="17">
									</td>
									<td valign="middle" width="174" style="color: #000000;">
										本网专稿
									</td>
									<td width="54">
										<a href="front/standard/index10.jsp#" target="_top"
											style="color: #000000;">更多&gt;&gt;</a>
									</td>
								</tr>
							</tbody>
						</table>

						<table border="0" cellpadding="0" cellspacing="0" width="200">

							<!--DWLayoutTable-->
							<tbody>
								<tr>
									<td height="2" width="200"></td>
								</tr>
							</tbody>
						</table>

						<table style="border: 1px solid rgb(224, 224, 224);" align="left"
							bgcolor="#FEF9E3" border="0" cellpadding="0" cellspacing="0"
							width="230">
							<!--DWLayoutTable-->
							<tbody>
								<tr>
									<td align="center" valign="top">

										<div id="rolllink"
											style="overflow: hidden; height: 200px; width: 200px">
											<div id="rolllink1">
												<table class="contenttable" align="center" border="0"
													cellpadding="0" cellspacing="0" width="99%">
													<!--DWLayoutTable-->
													<tbody>
														<s:iterator value="table.list" var="standard">
															<tr <s:if test="table.rowSimple">class="row"</s:if>>
																<tr>
																	<td colspan="2" height="8"></td>
																</tr>

																<tr>
																	<td align="center" height="20" valign="top" width="5%">
																		<img src="front/standard/images/dit1.gif">
																	</td>
																	<td valign="top" width="95%">


																		<a target="_blank"
																			style="word-break: break-all;"
																			title="${standard.title}"
																			href="standard/standardAction!showDetailInput2?standard.id=${standard.id}">
																			<s:set name="str" value="#standard.title"></s:set> <s:if
																				test="#str.length()>13">
																				<s:property value="#str.substring(0,13)+'...'" />
																			</s:if> <s:else>
																				<s:property value="#standard.title" />
																			</s:else> </a>
																	</td>
																</tr>

																<tr>
																	<td colspan="2" height="3"></td>
																</tr>
														</s:iterator>
													</tbody>
												</table>

											</div>



											<div id="rolllink2">

												<table class="contenttable" align="center" border="0"
													cellpadding="0" cellspacing="0" width="99%">
													<!--DWLayoutTable-->
													<tbody>

														<tr>
															<td colspan="2" height="8"></td>
														</tr>

														<tr>
															<td align="center" height="20" valign="top" width="5%">
																<img src="front/standard/images/dit1.gif">
															</td>
															<td valign="top" width="95%">


																<a target="_blank" style="word-break: break-all;"
																	title="${standard.title}"
																	href="standard/standardAction!showDetailInput2?standard.id=${standard.id}">
																	<s:set name="str" value="#standard.title"></s:set> 
																	<s:if test="#str.length()>13">
																		<s:property value="#str.substring(0,13)+'...'" />
																	</s:if> 
																	<s:else>
																		<s:property value="#standard.title" />
																    </s:else> </a>   

															</td>
														</tr>


														<tr>
															<td colspan="2" height="3"></td>
														</tr>
													</tbody>
												</table>
											</div>


										</div>

										<script language="JavaScript">
	var rollspeed = 80
	rolllink2.innerHTML = rolllink1.innerHTML
	//克隆rolllink1为rolllink2
	function Marquee() {
		if (rolllink2.offsetTop - rolllink.scrollTop <= 0) //当滚动至rolllink1与rolllink2交界时
			rolllink.scrollTop -= rolllink1.offsetHeight //rolllink跳到最顶端
		else {
			rolllink.scrollTop++
		}
	}
	var MyMar = setInterval(Marquee, rollspeed)
	//设置定时器
	rolllink.onmouseover = function() {
		clearInterval(MyMar)
	}//鼠标移上时清除定时器达到滚动停止的目的
	rolllink.onmouseout = function() {
		MyMar = setInterval(Marquee, rollspeed)
	}//鼠标移开时重设定时器
</script>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
		<br />


<div>
		<table
			style="background-repeat: repeat-x; border-left: 1px solid rgb(224, 224, 224); border-top: 1px solid rgb(224, 224, 224); border-right: 1px solid rgb(224, 224, 224);"
			background="front/standard/images/3-bg.jpg" border="0" cellpadding="0"
			cellspacing="0" width="230"">
			<!--DWLayoutTable-->

			<tbody>
				<tr>
					<td align="center" height="35" valign="middle" width="35">
						<img src="front/standard/images/dit2.gif" height="16" width="17">
					</td>
					<td
						style="font-weight: bold; font-size: 14px; color: rgb(215, 66, 46); font-family: Arial, 宋体; letter-spacing: 0.2mm;"
						valign="middle" width="174">
						最新信息
					</td>
					<td width="54"></td>
				</tr>
			</tbody>
		</table>
		<table style="border: 1px solid rgb(224, 224, 224);" align="left"
			border="0" cellpadding="0" cellspacing="0" width="230">
			<!--DWLayoutTable-->

			<tbody>
				<tr>
					<td height="300 valign="top">
						<table class="contenttable" align="center" border="0"
							cellpadding="0" cellspacing="0" width="95%">
							<!--DWLayoutTable-->
							<tbody>
								<s:iterator value="table.list" var="standard">
									<tr>
										<td valign="top" width="95%" height="20">

											<a target="_blank" style="word-break: break-all;"
												title="${standard.title}"
												href="standard/standardAction!showDetailInput2?standard.id=${standard.id}">
												<s:set name="str" value="#standard.title"></s:set> 
												<s:if test="#str.length()>13">
												<s:property value="#str.substring(0,13)+'...'" />	
												</s:if> 
												
												<s:else>
										       <s:property value="#standard.title" /> 		
												</s:else> </a>
										</td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
					</td>
				</tr>

			</tbody>
		</table>
		<br />
</div>
	</body>
</html>
