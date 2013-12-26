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
          <td height="22" colspan="5" align="center"> 查找专家 </td>
        </tr>
        <tr>
          <td height="20%" align="center">&nbsp;&nbsp;&nbsp; &nbsp; 研究领域: </td>
          <td width="20%"><select name="researchFields" id="researchFields">
          	  <option value="研究领域"> 研究领域 </option>
              <option value="采矿工程"> 采矿工程 </option>
              <option value="安全与环境工程"> 安全与环境工程 </option>
              <option value="矿物加工工程"> 矿物加工工程 </option>
              <option value="冶金工程 "> 冶金工程 </option>
              <option value="材料工程"> 材料工程 </option>
              <option value="矿冶设备工程"> 矿冶设备工程 </option>
            </select>          </td>
            </tr>
            <tr>
          <td width="20%" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 专家名: </td>
          <td width="20%"><input type="text" name="name" id="name"></td>
           </tr>
          <td width="20%" align="center"> <a href="<%=basePath%>back/expert/findGaoji.jsp" target="findGaojiTop">高级查找</a> </td>
        </tr>
       
		 <tr>
          <td height="22" colspan="3" align="center"> <br/> <input type="submit" name="Submit" value="搜索">&nbsp;&nbsp;&nbsp; 
         <input type="reset" name="Submit2" value="重置"></td>
          
	    </tr>
      </table>
	  <p>&nbsp;</p>
	</form>
	</body>
</html>
