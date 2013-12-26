var i = 0;
var picNameStrs = ["关于下达2011年赣州市钨、稀土矿开采控制总量控制指标的通知","放飞思想的翅膀 有色协会会长会议围绕“调结构、转方式”讨论纪要","中国瑞林和广西有色联合建立再生金属冶炼工艺与设备研究所签约仪式在南昌举行","省国土资源厅执法总队到荡坪钨业对矿产资源开采利用进行执法检查","钨合金电镀技术发展前景利好"];
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