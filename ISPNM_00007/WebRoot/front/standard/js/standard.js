function pageMoveOver(pg) {
	pg.style.backgroundColor = "#AAA";
}

function pageMoveOut(pg) {
	pg.style.backgroundColor = "#CCC";
}
function add() {
	window.location.href = "/ISPNM/back/standard/standard_addInput.jsp";
}
function update() {
	var cbs = document.all.item("standard.id");
	var len = 0;
	var id = null;
	for(var i = 0; i < cbs.length; i++) {
		if(cbs[i].checked) {
			len++;
			id = cbs[i].value;
		}
	}
	if(len == 0) {
		alert("请选择一条记录");
		return false;
	} else if(len > 1) {
		alert("只能选择一条记录");
		return false;
	}
	window.location.href = "/ISPNM/standard/standardAction!updateInput?standard.id="+id;
}
function showDetail() {
	var cbs = document.all.item("standard.id");
	var len = 0;
	var id = null;
	for(var i = 0; i < cbs.length; i++) {
		if(cbs[i].checked) {
			len++;
			id = cbs[i].value;
		}
	}
	if(len == 0) {
		alert("请选择一条记录");
		return false;
	} else if(len > 1) {
		alert("只能选择一条记录");
		return false;
	}
	window.location.href = "/ISPNM/standard/standardAction!showDetailInput?standard.id="+id;
}
function del() {
	var cbs = document.all.item("standard.id");
	var url = "/ISPNM/standard/standardAction!delete?";

	//如果返回的是一个集合
	
	if(cbs.length != undefined) {
		var checkedLen = 0;
		var index = 0;
		//将选中的记录的id号作为参数添加到URL地址上
		for(var i = 0; i < cbs.length; i++) {
			if(cbs[i].checked) {
				checkedLen++;
				url += "standards[" + index + "].id=" + cbs[i].value + "&";
				index++;
			}
		}
		if(checkedLen <= 0) {
			alert("请至少选择一条记录!");
			return false;
		}
		url = url.substring(0, url.length - 1);
	} else {//返回的是一个对象，表格只存在一条记录
		if(!cbs.checked) {
			alert("请至少选择一条记录!");
			return false;
		}
		url += "standards.id=" + cbs.value;
	}
	if(confirm("你确定要删除所选择的记录吗?")) {
		window.location.href = url;
	}
}
//单个删除
function del1() {

	if(confirm("你确定要删除所选择的记录吗?")) {
		window.location.href = "/ISPNM/standard/standardAction!delete?standards[0].id=${standard.id}";
	}
}


//搜索
function search() {
	var url = "/ISPNM/standard/standardAction!list?table.keyword=" + 
		document.getElementById("table.keyword").value;
	window.location.href = url;
}
function search2() {
	alert("abc");
	var url = "standard/standardAction!list2?table.keyword=" + 
		document.getElementById("table.keyword").value;
	window.location.href = url;
}

//复选框（全选、全不选）
function checkAll() {
   var selectFlags = document.getElementsByName("standard.id");
   for (var i=0; i<selectFlags.length; i++) {
    selectFlags[i].checked = document.getElementById("ifAll").checked;
     }	
 }
function checkEvent(name, allCheckId) {   
    var allCk = document.getElementById(allCheckId);   
    if (allCk.checked == true) checkAll(name);   
    else checkAllNo(name);   
}   

  //反选   
function reserveCheck(name) {   
    var names = document.getElementsByName(name);   
    var len = names.length;   
    if (len > 0) {   
        var i = 0;   
        for (i = 0; i < len; i++) {   
            if (names[i].checked) names[i].checked = false;   
            else names[i].checked = true;   
        }   
    }   
}   

//全选   
function checkAll(name) {   
    var names = document.getElementsByName(name);   
    var len = names.length;   
    if (len > 0) {   
        var i = 0;   
        for (i = 0; i < len; i++)   
        names[i].checked = true;   
    }   
}   

//全不选   
function checkAllNo(name) {   
    var names = document.getElementsByName(name);   
    var len = names.length;   
    if (len > 0) {   
        var i = 0;   
        for (i = 0; i < len; i++)   
        names[i].checked = false;   
    }   
}   

