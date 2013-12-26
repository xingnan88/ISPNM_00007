<%@ page language="java" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>江西理工大学特色库</title>
		<link REL="stylesheet" href="<%=basePath %>front/feature/css/home.css"
			type="text/css" />
		<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
		<script type="text/javascript">
		function range(){
			var ran = false;
			window.location.href="GetYear!getyearFore.action?ran=" + ran; 
		}
		function specific(){
			var ran = true;
			window.location.href="GetYear!getyearFore.action?ran=" + ran; 
		}
</script>
	</head>
	<body>
		<table width="99%" border="0" cellpadding="0" cellspacing="0"
			align="center">
			<tr>
				<td height="6"></td>
			</tr>
		</table>
		<table width="710" border="0" cellpadding="0" cellspacing="0"
			background="webimg/3-bg.jpg"
			style="BORDER: #B9B9B9 1px solid; background-repeat: repeat-x"
			align="center">
			<tr>
				<td colspan="2">
					<table width="710" border="0" cellpadding="0" cellspacing="0"
						height="35" style="BORDER-bottom: #B9B9B9 1px solid;">
						<tr>
							<td width="12"></td>
							<td width="200" style="font-size: 14px; color: #FF5100">
								<strong> 高级检索成果 </strong>
							</td>
							<td>
								&nbsp;
							</td>
							<td width="100">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr align="center">
				<td colspan="2"></td>
			</tr>
			<tr>
				<td width="690" height="460" align="center" valign="top">
					<form method="post"
						action="SeniorSearchAchieve!seniorSearchFore.action?page=1" target="main">
						<table width="90%" border="0" cellspacing="0" cellpadding="0"
							align=left>
							<tr>
								<td colspan="3">
									<table border=0 width=100% style="display: block" id="regtable">
										<tr>
											<td colspan="3" height="25">
												&nbsp;
											</td>
										</tr>
										<tr>
											<td style="width: 30%">
												成果名称
											</td>
											<td>
												<input type="text" name="achieveName" size="61"
													style="width: 405px; height: 18px; BACKGROUND-COLOR: #ffffff; BORDER-BOTTOM: #b4b4b4 1px double; BORDER-LEFT: #b4b4b4 1px double; BORDER-RIGHT: #b4b4b4 1px double; BORDER-TOP: #b4b4b4 1px double; COLOR: #8888aa" />
											</td>
										</tr>
										<tr>
											<td>
												作者
											</td>
											<td>
												<input type="text" name="author" size="61"
													style="width: 405px; height: 18px; BACKGROUND-COLOR: #ffffff; BORDER-BOTTOM: #b4b4b4 1px double; BORDER-LEFT: #b4b4b4 1px double; BORDER-RIGHT: #b4b4b4 1px double; BORDER-TOP: #b4b4b4 1px double; COLOR: #8888aa" />
											</td>
										</tr>
										<tr>
											<td>
												获成果时间
											</td>
											<td colspan="3" align="left">
												<s:if test="#request.ran == true">
												&nbsp;&nbsp;&nbsp;&nbsp;
													<select id="sltYear" name="sltYear">
														<option value="--" selected>
															--
														</option>
														<s:bean name="org.apache.struts2.util.Counter"
															id="counter">
															<s:param name="first">${requestScope.first1}</s:param>
															<s:param name="last">${requestScope.last1}</s:param>
															<s:iterator>
																<option value="<s:property />">
																	<s:property />
																</option>
															</s:iterator>
														</s:bean>
													</select>
												年
												<select id="sltMonth" name="sltMonth">
														<option value="--" selected>
															--
														</option>
														<s:iterator
															value="{'1','2','3','4','5','6','7','8','9','10','11','12'}"
															var="counter">
															<option value='<s:property value="#counter"/>'>
																<s:property value="#counter" />
															</option>
														</s:iterator>
													</select>
												月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" onclick="range()">查找范围请点击</a>
												</s:if>
												<s:if test="#request.ran == false">
												&nbsp;&nbsp;&nbsp;&nbsp;自&nbsp;
												<select id="staYear" name="staYear">
														<option value="--" selected>
															--
														</option>
														<s:bean name="org.apache.struts2.util.Counter"
															id="counter">
															<s:param name="first">${requestScope.first1}</s:param>
															<s:param name="last">${requestScope.last1}</s:param>
															<s:iterator>
																<option value="<s:property />">
																	<s:property />
																</option>
															</s:iterator>
														</s:bean>
													</select>
												年&nbsp;至&nbsp;
												<select id="endYear" name="endYear">
														<option value="--" selected>
															--
														</option>
														<s:bean name="org.apache.struts2.util.Counter"
															id="counter">
															<s:param name="first">${requestScope.first1}</s:param>
															<s:param name="last">${requestScope.last1}</s:param>
															<s:iterator>
																<option value="<s:property />">
																	<s:property />
																</option>
															</s:iterator>
														</s:bean>
													</select>
												年
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" onclick="specific()">查找具体请点击</a>
												</s:if>
											</td>
										</tr>
										<tr>
											<td>
												专利类别
											</td>
											<td>
												<input type="text" name="patentClass" size="61"
													style="width: 405px; height: 18px; BACKGROUND-COLOR: #ffffff; BORDER-BOTTOM: #b4b4b4 1px double; BORDER-LEFT: #b4b4b4 1px double; BORDER-RIGHT: #b4b4b4 1px double; BORDER-TOP: #b4b4b4 1px double; COLOR: #8888aa" />
											</td>
										</tr>
										<tr>
											<td>
												成果类别
											</td>
											<td align="left">
												&nbsp;&nbsp;&nbsp;&nbsp;
												<select name="achieveType">
													<option value="000">
														请选择成果类别
													</option>
													<option value="001">
														获奖
													</option>
													<option value="002">
														科研项目
													</option>
													<option value="003">
														论文
													</option>
													<option value="004">
														专利
													</option>
													<option value="005">
														专著教材
													</option>
												</select>
											</td>
										</tr>
										<tr>
											<td>
												学院类别
											</td>
											<td align="left">
												&nbsp;&nbsp;&nbsp;&nbsp;
												<select name="collegeType">
													<option value="0">
														请选择学院类别
													</option>
													<option value="1">
														材化学院
													</option>
													<option value="2">
														建测学院
													</option>
													<option value="3">
														机电学院
													</option>
													<option value="4">
														资源与环境工程学院
													</option>
													<option value="5">
														冶金与化学工程学院
													</option>
													<option value="6">
														电气工程与自动化学院
													</option>
													<option value="7">
														信息工程学院
													</option>
													<option value="8">
														文法学院
													</option>
													<option value="9">
														理学院
													</option>
													<option value="10">
														材料科学与工程学院
													</option>
													<option value="11">
														经济管理学院
													</option>
													<option value="12">
														外语外贸学院
													</option>
													<option value="13">
														稀土学院
													</option>
													<option value="14">
														应用科学学院
													</option>
													<option value="15">
														软件学院
													</option>
												</select>
											</td>
										</tr>
										<tr>
											<td>
												&nbsp;
											</td>
											<td colspan="4">
												&nbsp;
											</td>
										</tr>
										<tr>
											<td colspan="4" valign="middle" align="center">
												<input type="submit" name="Login" value="确 定"
													style="cursor: hand" class="Button" />
												<input type="reset" name="Reset" value="重 填"
													style="cursor: hand" class="Button" />
												<input type="button" name="back" value="关 闭"
													style="cursor: hand" class="Button"
													onclick="javascript:window.close()" />
											</td>
										</tr>
									</table>
							<tr>
								<td height="18" colspan="3">
									&nbsp;
								</td>
							</tr>
						</table>
					</form>
				</td>
				<td width="7" valign="bottom"></td>
			</tr>
			<tr bgcolor="#E9E9E9">
				<td height="1" colspan="2"></td>
			</tr>
		</table>
	</body>
	<script type="text/javascript">
		<c:if test="${requestScope.notCriter == 'not criterion'}">
			alert('开始时间不能大于结束时间！');
		</c:if>
	</script>
</html>