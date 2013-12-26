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
		<title>��ӿ�ұ�Ƽ���̬��Ϣ</title>
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
		$(".class"+x).clone().appendTo(".smallCategory");
	});
	$("#mianCategory").change();
});

</script>
		<script type="text/javascript" src="<%=basePath%>tools/ckeditor/ckeditor.js">
</script>
	</head>

	<body>
		<br>
		<br>
		<form name="addnews" method="POST" action="back/technews/TechNews_add"
			enctype="multipart/form-data">
			<table width="90%" border="1" align=center cellpadding="1"
				cellspacing="1">
				<tr background="images/bg.gif">
					<td height="27" colspan="3" background="images/bg.gif">
						&nbsp;&nbsp;
						<b class="title">��ӿ�ұ�Ƽ���̬��Ϣ </b>
					</td>
				</tr>

				<tr class="chinese">
					<td width="130" height="25" align="right">
						�������ͣ�
					</td>
					<td>
						<select id="mianCategory" title="��ѡ������" name="techNews.bigclassname">
							<option >
								---��ѡ������---
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
						
						<select class="smallCategory"  name="techNews.smallclassname">
							<option >
								----��ѡ��С��----
							</option>
						</select>
						<select name="hide" style="display: none;">
							<option class="class0">
								��ҵ��̬
							</option>
							<option class="class0">
								�¼����¹���
							</option>
						
							<option class="class1">
								��ҵ��̬
							</option>
							<option class="class1">
								�¼����¹���
							</option>
							<option class="class2">
								��ҵ��̬
							</option>
							<option class="class2">
								�¼������¹���
							</option>
							<option class="class3">
								��ҵ��̬
							</option>
							<option class="class3">
								�¼������¹���
							</option>
							<option class="class4">
								��ҵ��̬
							</option>
							<option class="class4">
								�¼������²���
							</option>
						
							<option class="class5">
								��ҵ��̬
							</option>
							<option class="class5">
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
						<input name="techNews.newstitle" type="text" class="chinese"
							id="NewsTitle" size="40" maxlength="60">
					</td>
				</tr>
				
				<tr class="chinese">
					<td width="130" height="25" align="right">
						��Ϣ������
					</td>
					<td height="25" colspan="2">
						<input name="techNews.newsfrom" type="text" class="chinese"
							id="NewsFrom" size="40" maxlength="60">
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
								class="chinese" style="display: none"></textarea>
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
