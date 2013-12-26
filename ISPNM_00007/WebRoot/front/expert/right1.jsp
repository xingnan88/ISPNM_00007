<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
		<base href="<%=basePath%>">
		<title>��ұ��ҵר�ҿ�</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/index.css">
		<script type="text/javascript"
			src="<%=basePath%>/front/expert/jquery-ui/js/jquery-1.6.2.min.js">
</script>
		<script type="text/javascript"
			src="<%=basePath%>/front/expert/jquery-ui/js/jquery-ui-1.8.15.custom.min.js">
</script>
		<script type="text/javascript" src="<%=basePath%>front/expert/js/index.js">
</script>
		<script type="text/javascript">
function go1(){
		location.href="<%=basePath%>front/expert/expert_findByField.action?researchFields=�ɿ󹤳�&page=1";
}
function go2(){
		location.href="<%=basePath%>front/expert/expert_findByField.action?researchFields=��ȫ�뻷������&page=1"
}
function go3(){
	location.href="<%=basePath%>front/expert/expert_findByField.action?researchFields=����ӹ�����&page=1"
}
function go4(){
	location.href="<%=basePath%>front/expert/expert_findByField.action?researchFields=ұ�𹤳�&page=1"
}
function go5(){
	location.href="<%=basePath%>front/expert/expert_findByField.action?researchFields=���Ϲ���&page=1"
}

function go6(){
	location.href="<%=basePath%>front/expert/expert_findByField.action?researchFields=��ұ�豸����&page=1"
	
}
</script>
		<script type="text/javascript">
function sub() {
	var name = document.getElementById("name").value;
	var researchFields = document.getElementById("researchFields").value;
	location.href = "<%=basePath%>front/expert/expert_find.action?page=1&researchFields="
			+ researchFields + "&name=" + name;

}
</script>
	</head>
	<body>
		<%
			int a = -1;
						String researchFields = (String) request
								.getAttribute("researchFields");

						if (researchFields.equals("�ɿ󹤳�"))
						{
							a = 0;
						}
						if (researchFields.equals("��ȫ�뻷������"))
						{
							a = 1;
						}
						if (researchFields.equals("����ӹ�����"))
						{
							a = 2;
						}
						if (researchFields.equals("ұ�𹤳�"))
						{
							a = 3;
						}
						if (researchFields.equals("���Ϲ���"))
						{
							a = 4;
						}
						if (researchFields.equals("��ұ�豸����"))
						{
							a = 5;
						}
					%>
		<div id="re" align="right"
			style="font-size: 14px; background-color: #EBECED; width: 762px">
			<font color="#0000ff"><b>�о����� </b> </font>
			<select name="researchFields" id="researchFields">
				<option value="�о�����">
					�о�����
				</option>
				<option value="�ɿ󹤳�" <%=a==0 ? "selected=selected":""%>>
					�ɿ󹤳�
				</option>
				<option value="��ȫ�뻷������" <%=a==1 ? "selected=selected":""%>>
					��ȫ�뻷������
				</option>
				<option value="����ӹ�����" <%=a==2 ? "selected=selected":""%>>
					����ӹ�����
				</option>
				<option value="ұ�𹤳�" <%=a==3 ? "selected=selected":""%>>
					ұ�𹤳�
				</option>
				<option value="���Ϲ���" <%=a==4 ? "selected=selected":""%>>
					���Ϲ���
				</option>
				<option value="��ұ�豸����" <%=a==5 ? "selected=selected":""%>>
					��ұ�豸����
				</option>

			</select>
			<font color="#0000ff"><b>ר����</b> </font>
			<input type="text" name="name" id="name"
				style="height: 20px; width: 100px" value="${name}"/>
			<input type="submit" value="����" style="width: 40px; height: 20px"
				onclick="sub()" />
		</div>
		<div id="recoms"
			style="width: 762px; background-color: #ffffff; border-color: #ffffff; margin-left: 0px; margin-top: 0px; height: 100%">
			<div id="tabs">
				<ul style="padding-left: 0; margin-top: 0px;">
				
					<li <%=a == 0 ? "class='now'" : ""%>>
						<a onclick=" go1()" href="javascript:" name="recom-0">&nbsp;�ɿ󹤳�&nbsp;</a>
					</li>
					<li <%=a == 1 ? "class='now'" : ""%>>
						<a onclick=" go2()" href="javascript:" name="recom-1">&nbsp;��ȫ�뻷������&nbsp;</a>
					</li>
					<li <%=a == 2 ? "class='now'" : ""%>>
						<a onclick=" go3()" href="javascript:" name="recom-2">&nbsp;����ӹ�����&nbsp;</a>
					</li>
					<li <%=a == 3 ? "class='now'" : ""%>>
						<a onclick="go4()" href="javascript:" name="recom-3">&nbsp;ұ�𹤳�&nbsp;</a>
					</li>
					<li <%=a == 4 ? "class='now'" : ""%>>
						<a onclick=" go5()" href="javascript:" name="recom-4">&nbsp;���Ϲ���&nbsp;</a>
					</li>
					<li <%=a == 5 ? "class='now'" : ""%>>
						<a onclick=" go6()" href="javascript:" name="recom-5">&nbsp;��ҵ�豸����&nbsp;</a>
					</li>
				</ul>
			</div>
			<div id="recom-<%=a%>" class="recom">
				<div style="width: 762px;">
					<span><label>
							${researchFields} &nbsp;&nbsp;&nbsp;����������£�
						</label> </span>
					<span><label>
							ר����&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;�о�����&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;רҵ����
						</label> </span>
					<table style="width: 762px; font-size: 13px">
						<s:iterator value="experts" id="expert" status="st">
							<tr onmousemove="this.style.backgroundColor='#FFF68F'"
										onmouseout="this.style.backgroundColor='#ffffff'"
										style="border-bottom-color: #ffffff">
								<td width="25%">
									<a target="_black" style="background-image: url('iamges/a.png');width: 57px"
										
										href='<%=basePath%>front/expert/expert_findById.action?id=<s:property value="#expert.id" />'><s:property
											value="#expert.name" escape="false" />
									</a>
								</td>
								<td width="25%">
									<s:property value="#expert.researchFields" />
								</td>
								<td width="50%">
									<s:if test="#expert.majorFields.length()>20">
										<s:property value="#expert.majorFields.substring(0, 20)+'...'"
											escape="false" />
									</s:if>
									<s:else>
										<s:property value="#expert.majorFields" escape="false" />
									</s:else>
								</td>
									  </tr>
									  <tr onmousemove="this.style.backgroundColor='#FFF68F'"
										onmouseout="this.style.backgroundColor='#ffffff'"
										style="border-bottom-color: #ffffff">
									
						</s:iterator>
					</table>
					<table align="center"
						style="font-size: 12px; height: 12px; width: 500px; border-color: #ffffff;">
						<tr>
							<td>
								��
								<s:property value="pageCount" />
								ҳ
							</td>
							<td>
								��ʾ��
								<s:property value="page" />
								ҳ
							</td>
							<td>
								<a style="background-image: url('iamges/a.png');"
									href="<%=basePath%>front/expert/expert_find.action?researchFields=${researchFields}&page=1&name=${name}">��ҳ</a>
							</td>
							<td>
								<a style="background-image: url('iamges/a.png');"
									href="<%=basePath%>front/expert/expert_find.action?researchFields=${researchFields}&page=<%=(Integer) request.getAttribute("page") - 1%>&name=${name}">��һҳ</a>
							</td>
							<td>
								<a style="background-image: url('iamges/a.png');"
									href="<%=basePath%>front/expert/expert_find.action?researchFields=${researchFields}&page=<%=(Integer) request.getAttribute("page") + 1%>&name=${name}">��һҳ</a>
							</td>
							<td>
								<a style="background-image: url('iamges/a.png');"
									href="<%=basePath%>front/expert/expert_find.action?researchFields=${researchFields}&page=<s:property value="pageCount"/>&name=${name}">βҳ</a>
							</td>
							<td>
								ת��
								<select id="page" name="page" onchange="goCurrentPage()">
									<%
										int pageCount = (Integer) request.getAttribute("pageCount");

										for (int b = 1; b < (Integer) request.getAttribute("page"); b++)
										{
											out.println("<option value=" + b + ">" + b + "</option>");
										}
										out.println("<option value="
												+ (Integer) request.getAttribute("page")
												+ " selected='selected'>"
												+ (Integer) request.getAttribute("page") + "</option>");
										for (int i = (Integer) request.getAttribute("page") + 1; i <= pageCount; i++)
										{
											out.println("<option value=" + i + ">" + i + "</option>");
										}
									%>
								</select>
								ҳ
								<script type="text/javascript">
function goCurrentPage() {
	var obj = document.getElementById("page");
	var page = obj.options[obj.selectedIndex].value;
	location.href = "<%=basePath%>front/expert/expert_find.action?page="
			+ page + "&researchFields=${researchFields}&name=${name}";
}
</script>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>

	</body>
</html>
