<%@ page language="java" import="java.util.*,jxust.isp4nm.model.MetalInfo" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>right</title>
    
    		<script type="text/javascript">
			function check_data() {
			//���ύ��ťʱ����������Ƿ�Ϊ��
			   if(seniorSearchForm.keyWord.value.length==0){
			  		return false;
				}
				return true;
			}
			function simple_search() {
				window.location.href="front/metaInfo/Search!SimpleSearch.action";
			}
			function senior_search() {
				window.location.href="GetYear!getyearFore.action";
			}
		</script>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="front/metaInfo/css/metal.css">
	

  </head>
  
  <body>
	<table width="740px" cellpadding="1" cellspacing="1"
			background="<%=basePath %>front/feature/images/3-bg.jpg"
			style="BORDER: #B9B9B9 1px solid; background-repeat: repeat-x"
			align="center">
		<tr>
			<td colspan="2">
				<table width="730 cellpadding="0" cellspacing="0" height="35"
						style="BORDER-bottom: #B9B9B9 1px solid;">
						<tr>
							<td style="font-size: 14px; color: FF5100">
							<strong> ����������Ϣ </strong>
							</td>
						</tr>						
				</table>
			</td>					
		</tr>
		<tr>
			<td colspan="2" align="right">
				<form name="seniorSearchForm"
						action="front/metaInfo/Search!SimpleSearch.action"
						onsubmit="return check_data()" method="post">
						<label style="font-size: 12px;">
							���ҹؼ��֣�
						</label>
						<img src="<%=basePath %>images/pic7.gif" /> 
						<input style="border:1px solid #E9E9F3;width: 150px;" type="text" name="keyWord"/>
						<input class="button"
							style="background-image: url(<%=basePath %>images/yimgbt.gif);"
							type="submit" value="  �� ��" onclick="return simple_search();" />
						<input type="submit" class="button" value="�߼�����"
							style="background-image: url(<%=basePath %>images/yimgbt.gif);"
							onclick="return senior_search();" />
					</form>
			</td>
		</tr>
		<s:if test="metalInfo!=null">
		<tr>
			<td colspan="2">
				<table width="100%" align="center" border="1" cellpadding="0" cellspacing="0">		  
				  <tr>
				    <td class="w1">�������ƣ�</td>
				    <td class="w2">${metalInfo.metalName }</td>
				    <td class="w3">����Ԫ�ط��ţ�</td>
				    <td class="w2">${metalInfo.metalSymbol }</td>
				    <td rowspan="3">
				    	<div><img src="front/metaInfo/images/${metalInfo.metalImgUrl}" width="150px"/></div>
				    </td>
				  </tr>
				  <tr>
				    <td class="w">�����Ͻ�</td>
				    <td colspan="3"><div class="cell">${metalInfo.metalAlloy }</div></td>
				  </tr>
				   <tr>
				    <td class="w">�����ɡ�ѡ��ұ������</td>
				    <td colspan="3"><div class="cell">${metalInfo.metalMethod }</div></td>
				  </tr>
				  <tr>
				    <td class="w">��������;��</td>
				    <td colspan="4"><div class="cell">${metalInfo.metalApp }</div></td>
				  </tr>
				  <tr>
				    <td class="w">�йؽ����Ļ���֪ʶ��</td>
				    <td colspan="4"><div class="cell">${metalInfo.metalBasic }</div></td>
				  </tr>
				 
				</table>
			</td>
		</tr>
		</s:if>
		<s:else><jsp:forward page="Fault.jsp"/></s:else>
	</table>
  </body>
</html>
