<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	session.setAttribute("title", "更新成功");
%>
<%@ include file="head.jsp"%>
   <h1><s:property value="message" /></h1>
<jsp:include page="bottom.jsp"></jsp:include>

