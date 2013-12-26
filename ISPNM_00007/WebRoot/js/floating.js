$(function(){
	var loginDialog = $('<table class="user" class="dialog" cellpadding="0" cellspacing="0">'+
		    		'<tr style="height: 27px;overflow: hidden;">'+
		    			'<th colspan="2"  ><div class="titlebg"><span class="title">用户登录</span></div></th>'+
		    		'</tr>'+
		    		'<tr>'+
		    			'<td style="width: 70px;" align="right">用户名：</td>'+
		    			'<td><input type="text" name="username" /></td>'+
		    		'</tr>'+
		    		'<tr>'+
		    			'<td align="right">密&nbsp;&nbsp;码：</td>'+
		    			'<td><input type="password" name="password"/></td>'+
		    		'</tr>'+
		    		'<tr>'+
		    			'<td align="right"><a href="#" style="font-size: 12px;">忘记密码</a></td>'+
		    			'<td >&nbsp;'+
		    				'<button type="submit" value="登录">登录</button>'+
		    				'<button type="reset" value="注册">注册</button>'+
		    			'</td>'+
		    		'</tr>'+
		    	'</table>');
	var serviceDialog = $('<div class="service">'+
		    		'<div class="titlebg"><span class="title" >服务定制</span></div>'+
		    		'<div>'+
		    			'<a href="#"><span class="i">数据获取：矿冶特色数据库</span></a>'+
		    			'<a href="#"><span class="i">客户通道：产品求购信息</span></a>'+
		    			'<a href="#"><span class="i">厂商通道：矿冶产品供应发布</span></a>'+
		    			'<a href="#"><span class="i">讯息跟随：订阅邮件获知最新视角</span></a>'+
		    		'</div>'+
		    	'</div>');
	var contactDialog = $('<div class="contact"><!-- 联系我们 -->'+
		    		'<div class="titlebg"><span class="title" >在线咨询</span></div>'+
		    		'<img src="images/consulter.png" alt="" />'+
		    		'<img src="images/lijizixun.png" alt="" />'+
		    		'<div>'+
		    			'<a href="#"><span class="i">咨询留言：QQ88888888</span></a>'+
		    			'<a href="#"><span class="i">电子邮箱：isp4nm@jxust.com</span></a>'+
		    			'<a href="#"><span class="i">意见提交：点此填写您对网站的建议</span></a>'+
		    		'</div>'+
		    	'</div>');
	$(".float").fadeTo("fast",0.9,null);
	
	$(".showLogin").click(function(){
		loginDialog.dialog({
			"resizable":false,
			"draggable":false,
			"width":"275px",
			"modal":true,
		});
	});
	$(".showService").click(function(){
		serviceDialog.dialog({
			"resizable":false,
			"draggable":false,
			"width":"275px",
			"modal":true,
		});
	});
	$(".showContact").click(function(){
		contactDialog.dialog({
			"resizable":false,
			"draggable":false,
			"width":"275px",
			"modal":true,
		});
	});
	$(".float").filter(".left").mouseover(function(){
		$(this).css("left","5px");
		$(this).fadeTo("fast",1,null);
	});
	$(".float").filter(".left").mouseout(function(){
		$(this).css("left","0px");
		$(this).fadeTo("fast",0.9,null);
	});
	
	$(".float").filter(".right").mouseover(function(){
		$(this).css("right","5px");
		$(this).fadeTo("fast",1,null);
	});
	$(".float").filter(".right").mouseout(function(){
		$(this).css("right","0px");
		$(this).fadeTo("fast",0.9,null);
	});
});