$(function(){
	var loginDialog = $('<table class="user" class="dialog" cellpadding="0" cellspacing="0">'+
		    		'<tr style="height: 27px;overflow: hidden;">'+
		    			'<th colspan="2"  ><div class="titlebg"><span class="title">�û���¼</span></div></th>'+
		    		'</tr>'+
		    		'<tr>'+
		    			'<td style="width: 70px;" align="right">�û�����</td>'+
		    			'<td><input type="text" name="username" /></td>'+
		    		'</tr>'+
		    		'<tr>'+
		    			'<td align="right">��&nbsp;&nbsp;�룺</td>'+
		    			'<td><input type="password" name="password"/></td>'+
		    		'</tr>'+
		    		'<tr>'+
		    			'<td align="right"><a href="#" style="font-size: 12px;">��������</a></td>'+
		    			'<td >&nbsp;'+
		    				'<button type="submit" value="��¼">��¼</button>'+
		    				'<button type="reset" value="ע��">ע��</button>'+
		    			'</td>'+
		    		'</tr>'+
		    	'</table>');
	var serviceDialog = $('<div class="service">'+
		    		'<div class="titlebg"><span class="title" >������</span></div>'+
		    		'<div>'+
		    			'<a href="#"><span class="i">���ݻ�ȡ����ұ��ɫ���ݿ�</span></a>'+
		    			'<a href="#"><span class="i">�ͻ�ͨ������Ʒ����Ϣ</span></a>'+
		    			'<a href="#"><span class="i">����ͨ������ұ��Ʒ��Ӧ����</span></a>'+
		    			'<a href="#"><span class="i">ѶϢ���棺�����ʼ���֪�����ӽ�</span></a>'+
		    		'</div>'+
		    	'</div>');
	var contactDialog = $('<div class="contact"><!-- ��ϵ���� -->'+
		    		'<div class="titlebg"><span class="title" >������ѯ</span></div>'+
		    		'<img src="images/consulter.png" alt="" />'+
		    		'<img src="images/lijizixun.png" alt="" />'+
		    		'<div>'+
		    			'<a href="#"><span class="i">��ѯ���ԣ�QQ88888888</span></a>'+
		    			'<a href="#"><span class="i">�������䣺isp4nm@jxust.com</span></a>'+
		    			'<a href="#"><span class="i">����ύ�������д������վ�Ľ���</span></a>'+
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