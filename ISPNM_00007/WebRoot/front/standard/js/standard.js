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
		alert("��ѡ��һ����¼");
		return false;
	} else if(len > 1) {
		alert("ֻ��ѡ��һ����¼");
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
		alert("��ѡ��һ����¼");
		return false;
	} else if(len > 1) {
		alert("ֻ��ѡ��һ����¼");
		return false;
	}
	window.location.href = "/ISPNM/standard/standardAction!showDetailInput?standard.id="+id;
}
function del() {
	var cbs = document.all.item("standard.id");
	var url = "/ISPNM/standard/standardAction!delete?";

	//������ص���һ������
	
	if(cbs.length != undefined) {
		var checkedLen = 0;
		var index = 0;
		//��ѡ�еļ�¼��id����Ϊ������ӵ�URL��ַ��
		for(var i = 0; i < cbs.length; i++) {
			if(cbs[i].checked) {
				checkedLen++;
				url += "standards[" + index + "].id=" + cbs[i].value + "&";
				index++;
			}
		}
		if(checkedLen <= 0) {
			alert("������ѡ��һ����¼!");
			return false;
		}
		url = url.substring(0, url.length - 1);
	} else {//���ص���һ�����󣬱��ֻ����һ����¼
		if(!cbs.checked) {
			alert("������ѡ��һ����¼!");
			return false;
		}
		url += "standards.id=" + cbs.value;
	}
	if(confirm("��ȷ��Ҫɾ����ѡ��ļ�¼��?")) {
		window.location.href = url;
	}
}
//����ɾ��
function del1() {

	if(confirm("��ȷ��Ҫɾ����ѡ��ļ�¼��?")) {
		window.location.href = "/ISPNM/standard/standardAction!delete?standards[0].id=${standard.id}";
	}
}


//����
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

//��ѡ��ȫѡ��ȫ��ѡ��
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

  //��ѡ   
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

//ȫѡ   
function checkAll(name) {   
    var names = document.getElementsByName(name);   
    var len = names.length;   
    if (len > 0) {   
        var i = 0;   
        for (i = 0; i < len; i++)   
        names[i].checked = true;   
    }   
}   

//ȫ��ѡ   
function checkAllNo(name) {   
    var names = document.getElementsByName(name);   
    var len = names.length;   
    if (len > 0) {   
        var i = 0;   
        for (i = 0; i < len; i++)   
        names[i].checked = false;   
    }   
}   

