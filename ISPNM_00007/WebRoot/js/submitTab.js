$(function() {
	
	//�ύ������������,�ܿ���ַ������������
	$("#firstForm").submit();

	
	//���title�µ�a�Ǵ����¼����ύ��
	$("#title a").click(function() {
		$("#content").val($(this).text());
		$("#tabForm").submit();
	});
	
	//list�µ�tr�����ʱ�����ӵ�ַPatent_read?id=" + inputNode����action
	$(".list tr").click(function() {
//		var idNode=$(this).find("input").val();
//		$.post("Patent_read?id=" + idNode,null,callback);
		$(this).find("form").submit();
	});
	
	//����ƶ���title�µ�aʱ�ı�����ʽ
	$("#title a").hover(
		function() {
			$(this).css({"color":"#F30","font-size":"19px"});
		},
		function() {
			$(this).css({"color":"#000","font-size":"14px"});
		}
			);
	
	//����ƶ���list�µ�tdʱ�ı�tr��ʽ
	$(".list td").hover(
			function() {
				$(this).parent().css({"background-color":"#FFF68F"});
			},
			function() {
				$(this).parent().css({"background-color":"#FFFAFA"});
			}
				);
});

//�ص�������ȡ�����ص�html���ݣ���ʾ��list div��
function callback(data) {
	$(".list").html(data);
}