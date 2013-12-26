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
		//判定自输入分页的页码是否合法
		function tiao(){
		
			var r = /^\+?[1-9][0-9]*$/;　　//正整数 
		    var count = "${pager.pageCount}";
		    var value1 = document.getElementById("go").value;
		    var value0 = (value1-1)*20;
            
           //判定数字
//		    if(isNaN(value1)){
//		    	alert("无效数字，请输入1到"+"${pager.pageCount}"+"之间的整数值！");return false;
//		    }

			if(!(r.test(value1))){
			    	alert("无效数字，请输入1到"+count+"之间的整数值！");return false;
				    }    
		    else{
			    if((value1<${pager.pageCount}+1)&&(value1>0)){
			    	url='standard/standardAction!list?pager.offset='+value0;
					window.location.href= url;
			    	
				    } else{
			           alert("无效数字，请输入1到"+count+"之间的整数值!");return false;
				    }
			    }
		    }
		//创建一个排序的方向
		function sortParam() {
			var orient = "${table.sortOrient}" + "";//如果EL取得为空串，表示第一次排序
			if("" == orient || "asc" == orient) orient = "desc";//空串或者当前方向为升序的话改为降序
			else orient = "asc";
			return "table.sortOrient=" + orient
		}

		//对字段进行排序
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
						<input type="button" value="添加" onclick="add();">
						<input type="button" value="查看" onclick="showDetail();">
						<input type="button" value="修改" onclick="update();">
						<input type="button" value="删除" onclick="del();">
					</td>
					<td align="right" style="height: 30">
						关键字:
						<input type="text" id="table.keyword" name="table.keyword" value="${table.keyword}" >
						<input type="button" value="搜索" onclick="search();">
					</td>
				</tr>
			</table>
		</div>


		<!-- 表格数据展现 -->
		<table id="standard" width="85%" border="1" class="tbl" align="center">
			<thead>
				<tr>
					<th width="4%" style="cursor: hand" 
				     	onclick="elementSort('id');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						序号
					</th>
					<th width="6%" style="cursor: hand"
						onclick="elementSort('number');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						文号
					</th>
					<th width="25%" style="cursor: hand"
						onclick="elementSort('title');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						名&nbsp;&nbsp;&nbsp;&nbsp;称
					</th>
					<th width="6%" style="cursor: hand"
						onclick="elementSort('classify');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						类别
					</th>
					<th width="6%" style="cursor: hand"
						onclick="elementSort('department');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						状态
					</th>
					<th width="8%" style="cursor: hand" onclick="elementSort('fbdep');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						发布单位
					</th>

					<th width="7%" style="cursor: hand"
						onclick="elementSort('createtime');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						发布时间
					</th>

					<th width="7%" style="cursor: hand"
						onclick="elementSort('imptime');"
						onMouseOver="this.style.backgroundImage='url(back/standard/images/th_bg2.gif)';"
						onMouseOut="this.style.backgroundImage='url(back/standard/images/th_bg1.gif)';">
						实施时间
					</th>

					<th width="10%">
						操&nbsp;&nbsp;&nbsp;&nbsp;作
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
						<a href="standard/standardAction!updateInput?standard.id=${standard.id}">修改</a>&nbsp;
						<a href="standard/standardAction!delete?standards[0].id=${standard.id}" onclick="del1();">删除</a>&nbsp;
						<a href="standard/standardAction!showDetailInput?standard.id=${standard.id}">查看</a>
					</td>
					<td>
						<input type="checkbox" id="standard.id" name="standard.id" value="${standard.id}">
					</td>
				</tr>
			</s:iterator>
		</table>
		<br>
		<!-- 分页 -->
		<div id="fenye">
		
	<!-- <a href="javascript:reserveCheck('standard.id')">全（不）选</a>  -->	
	
			<c:if test="${pager.pageCount gt 1}">
				<!-- 页数大于1页时才显示分页效果 -->
	                     总页数： <strong>${pager.pageCount}</strong>
		当前为第<font color="red"> <fmt:formatNumber type="number"
					value="${pager.offset/20+1}" maxFractionDigits="0" /></font>  页 
				
						<pg:pager url="standard/standardAction!list"
					export="current=pageNumber" items="${pager.items}"
					maxPageItems="${pager.maxPageItems}"
					maxIndexPages="${pager.maxIndexPages}">

					<pg:first>
						<a href="${pageUrl}">首页</a>
					</pg:first>

					<pg:prev>
						<a href="${pageUrl}">上一页</a>
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
						<a href="${pageUrl}">下一页</a>
					</pg:next>
					<pg:last>
						<a href="${pageUrl}">尾页</a>
					</pg:last>

			跳转到第<input name="go" type="text" id="go" style="width: 40px; height: 20px; text-align: center;vertical:middle" size="40">页
	  <!--
        <input type="button" name="skip" value="跳转" onclick="window.location.href='standard/standardAction!list?pager.offset='+(document.getElementById('go').value-1)*20"/> 
	  -->
             <input type="button" name="skip" value="跳转" onClick="return tiao();">
               </pg:pager>
			</c:if>
		</div>
	</body>
</html>
