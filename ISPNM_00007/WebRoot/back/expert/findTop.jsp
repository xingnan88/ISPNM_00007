<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
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
		<title>My JSP 'findTop.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	</head>
	<body>
	<form action="<%=basePath%>back/expert/expert_find.action?page=1" name="form" id="form" method="post" target="findResult">
	  <table width="100%" border="0" align="center" style="font-size: 14px;" >
        <tr >
          <td height="22" colspan="5" align="center"> ����ר�� </td>
        </tr>
        <tr>
          <td height="20%" align="center">&nbsp;&nbsp;&nbsp; &nbsp; �о�����: </td>
          <td width="20%"><select name="researchFields" id="researchFields">
          	  <option value="�о�����"> �о����� </option>
              <option value="�ɿ󹤳�"> �ɿ󹤳� </option>
              <option value="��ȫ�뻷������"> ��ȫ�뻷������ </option>
              <option value="����ӹ�����"> ����ӹ����� </option>
              <option value="ұ�𹤳� "> ұ�𹤳� </option>
              <option value="���Ϲ���"> ���Ϲ��� </option>
              <option value="��ұ�豸����"> ��ұ�豸���� </option>
            </select>          </td>
            </tr>
            <tr>
          <td width="20%" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ר����: </td>
          <td width="20%"><input type="text" name="name" id="name"></td>
           </tr>
          <td width="20%" align="center"> <a href="<%=basePath%>back/expert/findGaoji.jsp" target="findGaojiTop">�߼�����</a> </td>
        </tr>
       
		 <tr>
          <td height="22" colspan="3" align="center"> <br/> <input type="submit" name="Submit" value="����">&nbsp;&nbsp;&nbsp; 
         <input type="reset" name="Submit2" value="����"></td>
          
	    </tr>
      </table>
	  <p>&nbsp;</p>
	</form>
	</body>
</html>
