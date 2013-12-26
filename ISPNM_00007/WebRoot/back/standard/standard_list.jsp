<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
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

		<title>My JSP 'standard_list.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<script type="text/javascript" src="back/standard/js/standard.js">
		</script>
       <script type="text/javascript">
		//�ж��������ҳ��ҳ���Ƿ�Ϸ�
		function tiao(){
		
			var r = /^\+?[1-9][0-9]*$/;����//������ 
		    var count = "${pager.pageCount}";
		    var value1 = document.getElementById("go").value;
		    var value0 = (value1-1)*20;
            
           //�ж�����
//		    if(isNaN(value1)){
//		    	alert("��Ч���֣�������1��"+"${pager.pageCount}"+"֮�������ֵ��");return false;
//		    }

			if(!(r.test(value1))){
			    	alert("��Ч���֣�������1��"+count+"֮�������ֵ��");return false;
				    }    
		    else{
			    if((value1<${pager.pageCount}+1)&&(value1>0)){
			    	url='standard/standardAction!list?pager.offset='+value0;
					window.location.href= url;
			    	
				    } else{
			           alert("��Ч���֣�������1��"+count+"֮�������ֵ!");return false;
				    }
			    }
		    }
		//����һ������ķ���
		function sortParam() {
			var orient = "${table.sortOrient}" + "";//���ELȡ��Ϊ�մ�����ʾ��һ������
			if("" == orient || "asc" == orient) orient = "desc";//�մ����ߵ�ǰ����Ϊ����Ļ���Ϊ����
			else orient = "asc";
			return "table.sortOrient=" + orient
		}

		//���ֶν�������
		function elementSort(property) {
			window.location.href = "/ISPNM/standard/standardAction!list?table.sortProperty=" +
			property + "&" + sortParam();
		}
			    

</script>

		<link href="back/standard/css/table.css" rel="stylesheet" type="text/css">
		<link href="back/standard/css/fenye.css" rel="stylesheet" type="text/css">
		<style type="text/css">
	a {
color: #0449BE;
}
#fenye {
	font-size: 15px;
	text-align: center;
	padding-top: 15px;
	padding-right: 0px;
	padding-bottom: 5px;
	padding-left: 0px;
}
#fenye a {
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
	margin-left: 3px;
}
#fenye .current {
	background-color: #0000FF;
	padding-top: 0px;
	padding-right: 2px;
	padding-bottom: 0px;
	padding-left: 2px;
	margin-top: 2px;
	margin-right: 3px;
	margin-bottom: 2px;
	margin-left: 3px;
	color: #FFFFFF;
	width: 10px;
}
.caozuo {
	padding-right: 5px;
	padding-left: 5px;
	text-align: left;
	padding-top: 0px;
	padding-bottom: 0px;
	margin: 0px;
}
a:link {
color: #261CDC;
text-decoration: underline;
}

.tti a{
    color:#666;
	text-decoration: none;
}
.tti a:hover {
	color: #FF0000;
}

</style>

	</head>

	<body style="text-align: center;">
		<div style="width: 68%;" align="left">
			<table border="0" cellSpacing="0" cellPadding="0">
				<tr>
					<td align="left" style="height: 30">
						<input type="button" value="���" onclick="add();">
						<input type="button" value="�鿴" onclick="showDetail();">
						<input type="button" value="�޸�" onclick="update();">
						<input type="button" value="ɾ��" onclick="del();">
					</td>
					<td align="right" style="height: 30">
						�ؼ���:
						<input type="text" id="table.keyword" name="table.keyword" value="${table.keyword}" >
						<input type="button" value="����" onclick="search();">
					</td>
				</tr>
			</table>
		</div>


		<!-- �������չ�� -->
		<table id="standard" width="85%" border="1" class="tbl" align="center">
			<thead>
				<tr>
					<th width="4%" style="cursor: hand" 
				     	onclick="elementSort('id');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						���
					</th>
					<th width="6%" style="cursor: hand"
						onclick="elementSort('number');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						�ĺ�
					</th>
					<th width="25%" style="cursor: hand"
						onclick="elementSort('title');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						��&nbsp;&nbsp;&nbsp;&nbsp;��
					</th>
					<th width="6%" style="cursor: hand"
						onclick="elementSort('classify');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						���
					</th>
					<th width="6%" style="cursor: hand"
						onclick="elementSort('department');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						״̬
					</th>
					<th width="8%" style="cursor: hand" onclick="elementSort('fbdep');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						������λ
					</th>

					<th width="7%" style="cursor: hand"
						onclick="elementSort('createtime');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						����ʱ��
					</th>

					<th width="7%" style="cursor: hand"
						onclick="elementSort('imptime');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						ʵʩʱ��
					</th>

					<th width="10%">
						��&nbsp;&nbsp;&nbsp;&nbsp;��
					</th>

					<th width="5%">
						<input type="checkbox" id="ckReserve" onclick="reserveCheck('standard.id','ckReserve');">
					</th>
				</tr>
			</thead>
			<s:iterator value="table.list" var="standard">
				<tr <s:if test="table.rowSimple">class="row"</s:if>>
					<td>
						${standard.id}
					</td>
					<td>
						${standard.number}
					</td>
					<td class="tti">	
					<a style="word-break:break-all;" title="${standard.title}"
							href="standard/standardAction!showDetailInput?standard.id=${standard.id}">
                      <s:set name="str" value="#standard.title"></s:set>  
                      <s:if test="#str.length()>20">  
                      <s:property value="#str.substring(0,20)+'...'" />  
                      </s:if>  
                      <s:else>  
                      <s:property value="#standard.title" />  
                      </s:else>  
                     </a>
					</td>
					
					<td>
						${standard.classify}
					</td>
					<td>
						${standard.department}
					</td>
					<td>
						${standard.fbdep}
					</td>
					<td>
						${standard.createtime}
						
					</td>
					<td>
						${standard.imptime}
					</td>
					<td class="caozuo">
						<a href="standard/standardAction!updateInput?standard.id=${standard.id}">�޸�</a>&nbsp;
						<a href="standard/standardAction!delete?standards[0].id=${standard.id}" onclick="del1();">ɾ��</a>&nbsp;
						<a href="standard/standardAction!showDetailInput?standard.id=${standard.id}">�鿴</a>
					</td>
					<td>
						<input type="checkbox" id="standard.id" name="standard.id" value="${standard.id}">
					</td>
				</tr>
			</s:iterator>
		</table>
		<br>
		<!-- ��ҳ -->
		<div id="fenye">
		
	<!-- <a href="javascript:reserveCheck('standard.id')">ȫ������ѡ</a>  -->	
	
			<c:if test="${pager.pageCount gt 1}">
				<!-- ҳ������1ҳʱ����ʾ��ҳЧ�� -->
	                     ��ҳ���� <strong>${pager.pageCount}</strong>
		��ǰΪ��<font color="red"> <fmt:formatNumber type="number"
					value="${pager.offset/20+1}" maxFractionDigits="0" /></font>  ҳ 
				
						<pg:pager url="standard/standardAction!list"
					export="current=pageNumber" items="${pager.items}"
					maxPageItems="${pager.maxPageItems}"
					maxIndexPages="${pager.maxIndexPages}">

					<pg:first>
						<a href="${pageUrl}">��ҳ</a>
					</pg:first>

					<pg:prev>
						<a href="${pageUrl}">��һҳ</a>
					</pg:prev>
					<pg:pages>
						<c:if test="${current eq pageNumber}">
							<span class="current">${pageNumber}</span>&nbsp;
					  			</c:if>
						<c:if test="${!(current eq pageNumber)}">
							<a href="${pageUrl}">${pageNumber}</a>
						</c:if>
					</pg:pages>
					<pg:next>
						<a href="${pageUrl}">��һҳ</a>
					</pg:next>
					<pg:last>
						<a href="${pageUrl}">βҳ</a>
					</pg:last>

			��ת����<input name="go" type="text" id="go" style="width: 40px; height: 20px; text-align: center;vertical:middle" size="40">ҳ
	  <!--
        <input type="button" name="skip" value="��ת" onclick="window.location.href='standard/standardAction!list?pager.offset='+(document.getElementById('go').value-1)*20"/> 
	  -->
             <input type="button" name="skip" value="��ת" onClick="return tiao();">
               </pg:pager>
			</c:if>
		</div>
	</body>
</html>
