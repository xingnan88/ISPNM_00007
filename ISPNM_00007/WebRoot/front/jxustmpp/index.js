var i = 0;
var picNameStrs = ["��ɫʥ��","���˫����","�º���ѩ","������","�������"];
$(function(){
	var effects = ['blind', 'clip', 'drop', 'explode', 'fold', 'puff', 'slide', 'scale', 'size'];
	var $pics = $("#picNews img");
	var $picNum = $("#picNews label")
	var $allRecom = $("#recoms .recom");
	var $allRecTab = $("#recoms>#tabs a");
	var $picDiv =$("#pic");
	//var recTabs = $("#recoms #tabs li");
	
	$(".db").mouseover(function(){
		$(this).fadeTo("slow",0.5,null);
		$(this).css("color","rgb(51,15,255)");
	});
	$(".db").mouseout(function(){
		$(this).fadeTo("slow",1,null);
		$(this).css("color","#ffffff");
	});
	
	$allRecTab.mouseover(function(){
		$("#recoms>#tabs li").css("height","20px");
		$("#recoms>#tabs li").css("border-color","#ffffff");
		$allRecom.hide();
		$("#"+$(this).attr("name")).show();
		$(this).parent().css("border-color","rgb(255, 55, 20)");
		$(this).parent().css("height","31px");
	});
	
	$picNum.click(function(){
		changePic2($.inArray(this,$picNum));
	});
	
	setTimeout(changePic, 3000);
	
	function changePic(){
		$picDiv.css("background-image");
		$($pics[i%5]).hide(effects[i%9],{},2000);
		$($picNum).css("background-color","#ddeeff");
		i++;
		$($pics[i%5]).show(effects[i%9],{},2000);
		$("#picName").text(picNameStrs[i%5]);
		$($picNum[i%5]).css("background-color","#ffffff");
		setTimeout(changePic, 3000);
	}
	
	function changePic2(c){
		$("#picNews img:visible").hide(effects[(i+1)%9],{},2000);
		$($picNum).css("background-color","#ddeeff");
		
		$($pics[c]).show(effects[(i+1)%9],{},2000);
		$($picNum[c]).css("background-color","#ffffff");
	}
});