$(function() {
	initType();
	//
	$(":checkbox").change(function() {
		initType();
		checkDisable();
	})
})
function initType() {
	var $value = "";
	$(":checked").each(function() {
		//�á������ָ������ı���
		$value += $(this).next().html() + "��";
	})
	//Ϊ�����ַ���ĩβ���ϡ����̡��������δβ�ġ�������
	if ($value != "") {
		$value = $value.substring(0, $value.length - 1) + "����";
	}
	$("#cpType").val($value);
}
function transType() {
	//��ȡtypeֵ���������̡��滻Ϊ��������Ȼ��"��"�����֣�
	var $value = $("#cpTypeInfo").val();
	$value = $value.replace("����", "��");
	$value = $value.split("��");
	//�������
	for (i = 0; i < $value.length; i++) {
		//�ж�ȡ�õ�ֵ�Ƿ�Ϊ��
		if ($value[i] == "") {
			continue;
		}
		//
		$(":checkbox").each(function() {
			$text = $.trim($(this).next().html());
			$key = $.trim($value[i]);
			if ($text == $key) {
				$(this).attr("checked", true);
			}
		})
	}
	initType();

}