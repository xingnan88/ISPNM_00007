$(function() {
	/*�����ʽ*/
	$(".index").addClass("index");
	$(".body").addClass("body");
	$(".body .title h2").addClass("tabFont");
	/*����¼�*/
	//������ʾ
	$("#nav").toggle(function() {
		$(this).fadeTo("slow", 0);
	}, function() {
		$(this).fadeTo("slow", 1);
	})
	$("#nav").click().delay("1000").click();
	//�л���ѯ��Χ
	$("#connect").click(function(){
		if($(this).attr("model")=="connect"){
			$(this).attr("model","disconnect");
			$(this).addClass("markDisconnect");
			$(this).removeClass("markConnect");
			return;
		}
		$(this).attr("model","connect");
		$(this).addClass("markConnect");
		$(this).removeClass("markDisconnect");
		
	})
})