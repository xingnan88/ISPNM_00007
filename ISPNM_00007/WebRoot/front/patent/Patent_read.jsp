<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

  <table width="720" border="1" cellpadding=0 cellspacing=0 align="center">
    <tr>
      <td bgcolor="#EAEAEA" align="right">���ƣ�</td>
      <td colspan="3"><s:property value="patent.name"/>&nbsp;</td>
    </tr>
    <tr>
      <td width="130" bgcolor="#EAEAEA" align="right">���루ר�����ţ�</td>
      <td width="230" ><s:property value="patent.number"/>&nbsp;</td>
      <td width="130" bgcolor="#EAEAEA" align="right">�����գ�</td>
	  <td width="230" ><s:date name="patent.applicationDate" format="yyyy.MM.dd" />&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" align="right">���������棩�ţ�</td>
      <td><s:property value="patent.openNumber"/>&nbsp;</td>
      <td bgcolor="#EAEAEA" align="right">���������棩�գ�</td>
      <td><s:date name="patent.publishDate" format="yyyy.MM.dd" />&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" align="right">������ţ�</td>
      <td colspan="3"><s:property value="patent.mainClassNumber"/>&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" align="right">����ţ�</td>
      <td colspan="3"><s:property value="patent.ClassNumber"/>&nbsp;</td>
    </tr>
       <tr>
      <td bgcolor="#EAEAEA" align="right">�����ˣ�</td>
      <td colspan="3"><s:property value="patent.applicant"/>&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" align="right">�����ˣ�</td>
      <td colspan="3"><s:property value="patent.inventor"/>&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" align="right">��ַ��</td>
      <td><s:property value="patent.address"/>&nbsp;</td>
      <td bgcolor="#EAEAEA" align="right">��ʡ���ţ�</td>
      <td><s:property value="patent.cpNumber"/>&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" align="right">����Ȩ��</td>
      <td colspan="3"><s:property value="patent.priority"/>&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" align="right">ר�����������</td>
      <td><s:property value="patent.agency"/>&nbsp;</td>
      <td bgcolor="#EAEAEA" align="right">�����ˣ�</td>
      <td><s:property value="patent.agent"/>&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" colspan="4">ժҪ��</td>
    </tr>
    <tr> 
      <td colspan="4"><s:property value="patent.intro" escape="false"/>&nbsp;</td>
    </tr>
  </table>
