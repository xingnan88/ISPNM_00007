<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

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

<script type="text/javascript" src="js/standard.js"></script>

<style type="text/css">
</style>

	</head>

	<body style="text-align: center;">
		<jsp:include page="/top.jsp"></jsp:include>


		<table cellpadding="0" cellspacing="0" width="100%">
			<!--DWLayoutTable-->
			<tbody>
				<tr>
					<td height="27" valign="top" width="260">

						<table class="subjecttitle" background="more_files/bg2.gif"
							border="0" cellpadding="0" cellspacing="0" width="260">

							<!--DWLayoutTable-->
							<tbody>
								<tr>
									<td align="center" height="27" valign="middle" width="35">
										<img src="more_files/dit3.gif" height="16" width="17">
									</td>
									<td valign="middle" width="174">
										本网专稿
									</td>
									<td width="54">
										<a href="#">更多&gt;&gt;</a>
									</td>
								</tr>
							</tbody>
						</table>
						
						<table border="0" cellpadding="0" cellspacing="0" width="263">

							<!--DWLayoutTable-->
							<tbody>
								<tr>
									<td height="2" width="263"></td>
								</tr>
							</tbody>
						</table>
						
						<table style="border: 1px solid rgb(224, 224, 224);" align="left"
							bgcolor="#FEF9E3" border="0" cellpadding="0" cellspacing="0"
							width="180">
							<!--DWLayoutTable-->
							<tbody>
								<tr>
									<td align="center" height="210" valign="top">

										<div id="rolllink"
											style="overflow: hidden; height: 210px; width: 255px">
											<div id="rolllink1">
												<table class="contenttable" align="center" border="0"
													cellpadding="0" cellspacing="0" width="99%">
													<!--DWLayoutTable-->
													<tbody>
														<tr>
															<td colspan="2" height="8"></td>
														</tr>

														<tr>
															<td align="center" height="24" valign="top" width="5%">
																<img src="more_files/dit1.gif">
															</td>
															<td valign="top" width="95%">
																<a href="#" title=""
																	target="_blank">前8月上饶市有色产业工业增加值65....</a>
															</td>

														</tr>

														<tr>
															<td align="center" height="24" valign="top" width="5%">
																<img src="more_files/dit1.gif">
															</td>
															<td valign="top" width="95%">
																<a href="#" title=""
																	target="_blank">江西铜产业：打造鹰潭世界铜都 建设南...</a>
															</td>
														</tr>

														<tr>
															<td align="center" height="24" valign="top" width="5%">
																<img src="more_files/dit1.gif">
															</td>
															<td valign="top" width="95%">
																<a href="#" title=""
																	target="_blank">赣州伟嘉合金技术改造项目获2011年...</a>
															</td>
														</tr>

														<tr>
															<td align="center" height="24" valign="top" width="5%">
																<img src="more_files/dit1.gif">
															</td>

															<td valign="top" width="95%">
																<a href="#" title="" target="_blank">红金稀土公司经济效益再创新高</a>
															</td>
														</tr>

														<tr>
															<td colspan="2" height="3"></td>
														</tr>
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
															<td align="center" height="24" valign="top" width="5%">
																<img src="more_files/dit1.gif">
															</td>
															<td valign="top" width="95%">
																<a href="#" title="" target="_blank">前8月上饶市有色产业工业增加值65....</a>
															</td>
														</tr>


														<tr>
															<td align="center" height="24" valign="top" width="5%">
																<img src="more_files/dit1.gif">
															</td>
															<td valign="top" width="95%">
																<a href="#" title="" target="_blank">前8月上饶市有色产业工业增加值65....</a>
															</td>
														</tr>


														<tr>
															<td align="center" height="24" valign="top" width="5%">
																<img src="more_files/dit1.gif">
															</td>
															<td valign="top" width="95%">
																<a href="#" title="" target="_blank">江西铜产业：打造鹰潭世界铜都
																	建设南...</a>
															</td>
														</tr>

														<tr>
															<td align="center" height="24" valign="top" width="5%">
																<img src="more_files/dit1.gif">
															</td>
															<td valign="top" width="95%">
																<a href="#" title="" target="_blank">赣州伟嘉合金技术改造项目获2011年...</a>
															</td>
														</tr>

														<tr>
															<td align="center" height="24" valign="top" width="5%">
																<img src="more_files/dit1.gif">
															</td>
															<td valign="top" width="95%">
																<a href="#" title="" target="_blank">红金稀土公司经济效益再创新高</a>
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





		<jsp:include page="/bottom.jsp"></jsp:include>
	</body>
</html>
