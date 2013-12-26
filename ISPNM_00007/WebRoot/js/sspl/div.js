$(function() {
	/*添加样式*/
	$(".index").addClass("index");
	$(".body").addClass("body");
	$(".body .title h2").addClass("tabFont");
	/*添加事件*/
	//导航提示
	$("#nav").toggle(function() {
		$(this).fadeTo("slow", 0);
	}, function() {
		$(this).fadeTo("slow", 1);
	})
	$("#nav").click().delay("1000").click();
	//切换查询范围
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