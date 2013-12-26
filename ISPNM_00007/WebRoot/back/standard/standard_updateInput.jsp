<%@ page contentType="text/html; charset=utf-8" language="java" %>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link href="../back/standard/css/bodystyle.css" rel="stylesheet" type="text/css" />

<title>修改矿冶标准信息</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/kindeditor/kindeditor-min.js" charset="UTF-8"></script>
	<script language="JavaScript" type="text/javascript" src="../My97DatePicker/WdatePicker.js" > </script>
	<script language="JavaScript" type="text/javascript" src="../ckeditor/ckeditor.js" > </script>
	<script language="JavaScript" type="text/javascript">
	function check() {
		var n1 = document.getElementById("standard.number").value;
		var n2 = document.getElementById("standard.title").value;
		var n3 = document.getElementById("standard.classify").value;
		var n4 = document.getElementById("standard.department").value;
		var n5 = document.getElementById("standard.fbdep").value;
		var n6 = document.getElementById("standard.createtime").value;
		var n7 = document.getElementById("standard.imptime").value;

		var n11 = n1.length;	var n22 = n3.length;	var n33 = n3.length;	var n44 = n4.length;
		var n55 = n5.length;

		  if(n11 > 50)
		   {
			   alert("文  号字符数不能超过50！");  return false;
		   }
		  if(n22 > 100)
		   {
			   alert("名  称字符数不能超过100！");  return false;
		   }
		  if(n33 > 50)
		   {
			   alert("字符数不能超过50！");  return false;
		   }
		 
		  if(n44 > 50)
		   {
			   alert("状   态字符数不能超过50！");  return false;
		   }
		  if(n55 > 10)
		   {
			   alert("发布单位字符数不能超过10！");  return false;
		   }
		
		   if(n1 == null || n1 == "")
		   {
			   alert("标准编号不能为空！");  return false;
		   }
		   if(n2 == null || n2 == "")
		   {
			   alert("标题不能为空！");  return false;
		   }
		   if(n3 == null || n3 == "")
		   {
			   alert("标准类型不能为空！");  return false;
		   }
		   if(n4 == null || n4 == "")
		   {
			   alert("所属行业不能为空！");  return false;
		   }
		   if(n5 == null || n5 == "")
		   {
			   alert("发布部门不能为空！");  return false;
		   }
		   if(n6 == null || n6 == "")
		   {
			   alert("通过时间为空！");  return false;
		   }
		   if(n7 == null || n7 == "")
		   {
			   alert("实施时间不能为空！");  return false;
		   }
		 
		    return true;
		  }
	</script>

<script type="text/javascript" src="../fckeditor/fckeditor.js"></script>



<%--<script type="text/javascript">
		KE.show({
			 id : "standard.content",
		     width : "100%",
		     height : "400px",		    
		     resizeMode : 1,
		     allowFileManager : true,
		     /*图片上传的SERVLET路径*/
		     imageUploadJson : "${pageContext.request.contextPath}/kin/uploadImage.html", 
		     /*图片管理的SERVLET路径*/     
		     fileManagerJson : "${pageContext.request.contextPath}/kin/uploadImgManager.html",
		     /*允许上传的附件类型*/
		     accessoryTypes : "doc|xls|pdf|txt|ppt|rar|zip",
		     /*附件上传的SERVLET路径*/
		     accessoryUploadJson : "${pageContext.request.contextPath}/kin/uploadAccessory.html"
		});
	</script>

--%></head>

<body>
<br><br>
<form name="updateInput" method="POST" action="standard/standardAction!update" enctype="multipart/form-data">
<table width="90%" border="1" align=center cellpadding="1" cellspacing="1">
  <tr background="images/bg.gif">
    <td height="27" colspan="3" background="images/bg.gif">&nbsp;&nbsp;<b class="title">修改矿冶标准信息 </b></td>
  </tr>
  <input name="standard.id" type="hidden" class="chinese" id="id" size="40" maxlength="60" value="${standard.id}"></td>
  </tr>
  <tr class="chinese">
    <td width="130" height="25" align="right">文&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
    <td height="25" colspan="2"><input name="standard.number" type="text" class="chinese" id="number" size="40" maxlength="60" value="${standard.number}">
       <font color="red">(*)</font>
    </td>
  </tr>
  <tr class="chinese">
    <td width="130" height="25" align="right">名&nbsp;&nbsp;&nbsp;&nbsp;称：</td>
    <td height="25" colspan="2"><input name="standard.title" type="text" class="chinese" id="title" size="40" maxlength="60" value="${standard.title}">
       <font color="red">(*)</font>
    </td>
  </tr>
  <tr class="chinese">
    <td width="130" height="25" align="right">类&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
    <td height="25" colspan="2">
  <!-- <input name="standard.classify" type="text" class="chinese" id="title" size="40" maxlength="60" value="${standard.classify}">  -->  
  <input name="standard.classify" type="text" class="chinese" id="title" size="40" maxlength="60" value="${standard.classify}">
   <font color="red">(*)</font>
    </td>
  </tr>
   <tr class="chinese">
    <td width="130" height="25" align="right">状&nbsp;&nbsp;&nbsp;&nbsp;态：</td>
    <td height="25" colspan="2"><input name="standard.department" type="text" class="chinese" id="department" size="40" maxlength="60" value="${standard.department}">
       <font color="red">(*)</font>
    </td>
  </tr>
    <tr class="chinese">
    <td width="130" height="25" align="right">发布单位：</td>
    <td height="25" colspan="2"><input name="standard.fbdep" type="text" class="chinese" id="fbdep" size="40" maxlength="60" value="${standard.fbdep}">
       <font color="red">(*)</font>
    </td>
  </tr>
    <tr class="chinese">
    <td width="130" height="25" align="right">通过时间：</td>
    <td height="25" colspan="2"><input name="standard.createtime" type="text" id="createtime" size="34" maxlength="50" value="${standard.createtime}"  onclick="WdatePicker()" class="Wdate" ></td>
  </tr>
    <tr class="chinese">
    <td width="130" height="25" align="right">实施时间：</td>
    <td height="25" colspan="2"><input name="standard.imptime" type="text" id="imptime" size="34" maxlength="50" value="${standard.imptime}"  onclick="WdatePicker()" class="Wdate" ></td>
  </tr>
  <tr class="chinese">
    <td width="130" height="25" align="right">内&nbsp;&nbsp;&nbsp;&nbsp;容：</td>
    <td height="25" colspan="2">&nbsp;</td>
  </tr>
 <tr>
    <td height="100" colspan="3">
    <div align="left">
    
<%--     
   <textarea  cols="80" name="standard.content" class="chinese" style="display:none"> ${standard.content}</textarea>
<script type="text/javascript">
      CKEDITOR.replace('standard.content',
      {skin:'kama',
       language:'zh-cn'});
</script>
--%>
    
<textarea id="standard.content" name="standard.content">
  ${standard.content}
</textarea>
    <br />
    
    </div>
    
    </td>
    </tr>
  <tr>
    <td colspan=3><p align="center"><br>
      <input name="B1" type="button" class="button" value="返回" onClick="history.back()">
      <input name="Action" type="hidden" id="Action" value="updateInput">&nbsp;
      <input name="B2" type="submit" class="button" id="B2" value="修改" onClick="return check();">
      <br><br><br></p>
     </td>
  </tr>
</table>
<br>
<br>
</form>
</body>
</html>
