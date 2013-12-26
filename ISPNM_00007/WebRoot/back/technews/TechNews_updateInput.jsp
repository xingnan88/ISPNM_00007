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
		<title>�޸Ŀ�ұ�Ƽ���̬��Ϣ</title>
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
						<b class="title">�޸Ŀ�ұ�Ƽ���̬��Ϣ </b>
					</td>
				</tr>

				<tr class="chinese">
					<td width="130" height="25" align="right">
						�������ͣ�
					</td>
					<td>
						<select id="mianCategory" title="��ѡ������"
							name="techNews.bigclassname">
							<option>
								${techNews.bigclassname}
							</option>
							<option id="0">
								�ɿ󹤳�
							</option>
							<option id="1">
								��ȫ�뻷������
							</option>
							<option id="2">
								����ӹ�����
							</option>
							<option id="3">
								ұ�𹤳�
							</option>
							<option id="4">
								���Ϲ���
							</option>
							<option id="5">
								��ұ�豸����
							</option>

						</select>
						<select id="smallCategory" title="��ѡ��С��"
							name="techNews.smallclassname">
							<option>
								${techNews.smallclassname}
							</option>
							<option id="0">
								��ҵ��̬
							</option>
							<option id="1">
								�¼����¹���
							</option>
							<option id="2">
								�¼������¹���
							</option>
							<option id="3">
								�¼������²���
							</option>
							<option id="4">
								�¼��������豸
							</option>
						</select>
					</td>
				</tr>
				<tr class="chinese">
					<td width="130" height="25" align="right">
						��Ϣ���⣺
					</td>
					<td height="25" colspan="2">
						<input name="techNews.newstitle" value="${techNews.newstitle}"
							type="text" class="chinese" id="NewsTitle" size="40"
							maxlength="60">
					</td>
				</tr>

				<tr class="chinese">
					<td width="130" height="25" align="right">
						����ʱ�䣺
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
						��Ϣ������
					</td>
					<td height="25" colspan="2">
						<input name="techNews.newsfrom" value="${techNews.newsfrom}"
							type="text" class="chinese" id="NewsFrom" size="40"
							maxlength="60">
					</td>
				</tr>
				<tr class="chinese">
					<td width="130" height="25" align="right">
						���ͼƬ��
					</td>
					<td height="25" colspan="2">
						<input name="picture" type="file" class="chinese" size="40"
							maxlength="60">
					</td>
				</tr>



				<tr class="chinese">
					<td width="130" height="25" align="right">
						��Ϣ���ݣ�
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
							<input name="B1" type="button" class="button" value="����>>"
								onClick="location.href='ListNews.jsp'">
							<input name="Action" type="hidden" id="Action" value="Add">
							&nbsp;
							<input name="B2" type="submit" class="button" id="B2"
								value="����>>">
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
