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
		//用“、”分隔两项文本；
		$value += $(this).next().html() + "、";
	})
	//为类型字符串末尾加上“工程”，并舍掉未尾的“、”；
	if ($value != "") {
		$value = $value.substring(0, $value.length - 1) + "工程";
	}
	$("#cpType").val($value);
}
function transType() {
	//获取type值，将“工程”替换为“、“，然后按"、"将其拆分；
	var $value = $("#cpTypeInfo").val();
	$value = $value.replace("工程", "、");
	$value = $value.split("、");
	//逐个对照
	for (i = 0; i < $value.length; i++) {
		//判断取得的值是否为空
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