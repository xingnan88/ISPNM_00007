<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>back/">
    
    <title>��վ����Ա��½</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<style type="text/css">
	<!--
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
		background-color: #1D3647;
	}
	-->
	</style>
	<link href="<%=basePath %>images/skin.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
    <table width="100%" height="166" border="0" cellpadding="0" cellspacing="0">
	  <tr>
	    <td height="42" valign="top"><table width="100%" height="42" border="0" cellpadding="0" cellspacing="0" class="login_top_bg">
	      <tr>
	        <td width="1%" height="21">&nbsp;</td>
	        <td height="42">&nbsp;</td>
	        <td width="17%">&nbsp;</td>
	      </tr>
	    </table></td>
	  </tr>
	  <tr>
	    <td valign="top"><table width="100%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg">
	      <tr>
	        <td width="49%" align="right"><table width="91%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg2">
	            <tr>
	              <td height="138" valign="top"><table width="89%" height="427" border="0" cellpadding="0" cellspacing="0">
	                <tr>
	                  <td height="149">&nbsp;</td>
	                </tr>
	                <tr>
	                  <td height="80" align="right" valign="top">&nbsp;</td>
	                </tr>
	                <tr>
	                  <td height="198" align="right" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
	                    <tr>
	                      <td width="50%">&nbsp;</td>
	                      <td height="25" colspan="2" class="left_txt"><p>1- �����̼���Ϣ���Ż�վ��������ѡ����...</p></td>
	                    </tr>
	                    <tr>
	                      <td>&nbsp;</td>
	                      <td height="25" colspan="2" class="left_txt"><p>2- һվͨʽ�����Ϸ�ʽ�������û�ʹ��...</p></td>
	                    </tr>
	                    <tr>
	                      <td>&nbsp;</td>
	                      <td height="25" colspan="2" class="left_txt"><p>3- ǿ��ĺ�̨ϵͳ�������������練��...</p></td>
	                    </tr>
	                    <tr>
	                      <td>&nbsp;</td>
	                      <td width="30%" height="40"><img src="<%=basePath %>images/icon-demo.gif" width="16" height="16"><a href="#" target="_blank" class="left_txt3"> ʹ��˵��</a> </td>
	                      <td width="35%"><img src="<%=basePath %>images/icon-login-seaver.gif" width="16" height="16"><a href="#" class="left_txt3"> ���߿ͷ�</a></td>
	                    </tr>
	                  </table></td>
	                </tr>
	              </table></td>
	            </tr>
	            
	        </table></td>
	        <td width="1%" >&nbsp;</td>
	        <td width="50%" valign="bottom"><table width="100%" height="59" border="0" align="center" cellpadding="0" cellspacing="0">
	            <tr>
	              <td width="4%">&nbsp;</td>
	              <td width="96%" height="38"><span class="login_txt_bt">��ɫұ����Ϣ������ƽ̨��̨����</span></td>
	            </tr>
	            <tr>
	              <td>&nbsp;</td>
	              <td height="21"><table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table211" height="328">
	                  <tr>
	                    <td height="150" colspan="2" valign="middle">
	                    <form name="loginform" action="login.action" method="post">
	                        <table cellSpacing="0" cellPadding="0" width="100%" border="0" height="143" id="table212">
	                          <tr>
	                            <td class="top_hui_text" colspan="2"><span class="login_txt"><s:property value="errors.error[0]" /></span></td>
	                            
	                          </tr>
	                          <tr>
	                            <td width="13%" class="top_hui_text"><span class="login_txt">����Ա��</span></td>
	                            <td height="30" colspan="2" class="top_hui_text"><input name="username" class="editbox4" value="" size="20">                            </td>
	                          </tr>
	                          <tr>
	                            <td width="13%" class="top_hui_text"><span class="login_txt"> �� �룺</span></td>
	                            <td height="30" colspan="2" class="top_hui_text"><input class="editbox4" type="password" size="20" name="password">
	                              <img src="<%=basePath %>images/luck.gif" width="19" height="18"> </td>
	                          </tr>
	                          
	                          <tr>
	                            <td height="35" >&nbsp;</td>
	                            <td width="20%" height="35" ><input name="Submit" type="submit" id="Submit" value="�� ½" class="button_css" onMouseOver="this.className='myhand'"> </td>
	                            <td width="67%" class="top_hui_text"><input name="cs" type="button" id="cs" value="����" class="button_css" onMouseOver="this.className='myhand'"></td>
	                          </tr>
	                        </table>
	                    </form></td>
	                  </tr>
	                  <tr>
	                    <td width="433" height="164" align="right" valign="bottom"><img src="<%=basePath %>images/login-wel.gif" width="242" height="138"></td>
	                    <td width="57" align="right" valign="bottom">&nbsp;</td>
	                  </tr>
	              </table></td>
	            </tr>
	          </table>
	          </td>
	      </tr>
	    </table></td>
	  </tr>
	  <tr>
	    <td height="20"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="login-buttom-bg">
	      <tr>
	        <td align="center"><span class="login-buttom-txt">Copyright &copy; 2009-2010 </span></td>
	      </tr>
	    </table></td>
	  </tr>
	</table>

  </body>
</html>
