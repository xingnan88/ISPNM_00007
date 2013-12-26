<%@ page contentType="text/html; charset=GBK" language="java"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
	    <base href="<%=basePath%>">
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=GBK">
		<link href="css/bodystyle.css" rel="stylesheet" type="text/css">
		<title>修改矿冶科技动态信息</title>
		<script type="text/javascript"
			src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.5.1.min.js">
</script>
		<script type="text/javascript">
var currentShowCity = 0;
$(document).ready(function() {
	$("#mianCategory").change(function() {
		/*$("#mianCategory option").each(function(i, o) {
			if ($(this).attr("selected"))
			{
				//$(".smallCategory").hide();
				//$(".smallCategory").eq(i).show();
				$(".class"+i).clone().appendTo(".smallCategory"));
				currentShowCity = i;
				
		}
		});*/
		var x = $("#mianCategory option:selected").attr("id");
		$(".smallCategory").empty();
		$(".class" + x).clone().appendTo(".smallCategory");
	});
	$("#mianCategory").change();
});
</script>
		<script type="text/javascript" src="<%=basePath%>/tools/ckeditor/ckeditor.js">
</script>
		<script type="text/javascript" src="<%=basePath%>/tools/My97DatePicker/WdatePicker.js">
</script>

	</head>

	<body>
		<br>
		<br>
		<form name="update" method="post" action="TechNews_update">

			<input type="hidden" name="techNews.id" value="${techNews.id}" />


			<table width="90%" border="1" align=center cellpadding="1"
				cellspacing="1">
				<tr background="images/bg.gif">
					<td height="27" colspan="3" background="images/bg.gif">
						&nbsp;&nbsp;
						<b class="title">修改矿冶科技动态信息 </b>
					</td>
				</tr>

				<tr class="chinese">
					<td width="130" height="25" align="right">
						所属类型：
					</td>
					<td>
						<select id="mianCategory" title="请选择主类"
							name="techNews.bigclassname">
							<option>
								${techNews.bigclassname}
							</option>
							<option id="0">
								采矿工程
							</option>
							<option id="1">
								安全与环境工程
							</option>
							<option id="2">
								矿物加工工程
							</option>
							<option id="3">
								冶金工程
							</option>
							<option id="4">
								材料工程
							</option>
							<option id="5">
								矿冶设备工程
							</option>

						</select>
						<select id="smallCategory" title="请选择小类"
							name="techNews.smallclassname">
							<option>
								${techNews.smallclassname}
							</option>
							<option id="0">
								行业动态
							</option>
							<option id="1">
								新技术新工艺
							</option>
							<option id="2">
								新技术、新工艺
							</option>
							<option id="3">
								新技术、新材料
							</option>
							<option id="4">
								新技术、新设备
							</option>
						</select>
					</td>
				</tr>
				<tr class="chinese">
					<td width="130" height="25" align="right">
						信息标题：
					</td>
					<td height="25" colspan="2">
						<input name="techNews.newstitle" value="${techNews.newstitle}"
							type="text" class="chinese" id="NewsTitle" size="40"
							maxlength="60">
					</td>
				</tr>

				<tr class="chinese">
					<td width="130" height="25" align="right">
						发布时间：
					</td>
					<td height="25" colspan="2">
						<input id="techNews.newstime" type="text" name="techNews.newstime"
							value="${techNews.newstime}" />
						<img onclick="WdatePicker({el:$dp.$('techNews.newstime')})"
							src="<%=basePath%>/tools/My97DatePicker/skin/datePicker.gif" width="16"
							height="22" align="absmiddle">
					</td>

				</tr>
				<tr class="chinese">
					<td width="130" height="25" align="right">
						信息出处：
					</td>
					<td height="25" colspan="2">
						<input name="techNews.newsfrom" value="${techNews.newsfrom}"
							type="text" class="chinese" id="NewsFrom" size="40"
							maxlength="60">
					</td>
				</tr>
				<tr class="chinese">
					<td width="130" height="25" align="right">
						添加图片：
					</td>
					<td height="25" colspan="2">
						<input name="picture" type="file" class="chinese" size="40"
							maxlength="60">
					</td>
				</tr>



				<tr class="chinese">
					<td width="130" height="25" align="right">
						信息内容：
					</td>
					<td height="25" colspan="2">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="25" colspan="3">
						<div align="center">
							<textarea cols="80" id="newscontent" name="techNews.newscontent"
								class="chinese" style="display: none">${techNews.newscontent}</textarea>
							<script type="text/javascript">
CKEDITOR.replace('newscontent', {
	skin : 'kama',
	language : 'zh-cn'
});</script>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan=3>
						<p align="center">
							<br>
							<input name="B1" type="button" class="button" value="返回>>"
								onClick="location.href='ListNews.jsp'">
							<input name="Action" type="hidden" id="Action" value="Add">
							&nbsp;
							<input name="B2" type="submit" class="button" id="B2"
								value="更新>>">
							<br>
							<br>
							<br>
						</p>
					</td>
				</tr>
			</table>
			<br>
			<br>
		</form>
	</body>
</html>
