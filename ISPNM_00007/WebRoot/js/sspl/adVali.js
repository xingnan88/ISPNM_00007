$(function() {
	checkDisable();
})
function checkDisable() {
	var $submit = $(":submit");
	var $result = false;
	var $needCheck = $(".needCheck");
	var count = 0;
	for (i = 0; i < $needCheck.length; i++) {
		var $value = $needCheck.eq(i).val();
		if ($.trim($value) == "") {
			count++;
			continue;
		}

	}
	if ($("#cpType").val() == "") {
		count++;
	}
	if (count > $needCheck.length) {
		$result = true;
	}
	$submit.attr("disabled", $result);
	disabledColor($result);
}
function disabledColor(result) {
	var $submit = $(":submit");
	if (result) {
		$submit.addClass("btnDisabled");
	} else {
		$submit.removeClass("btnDisabled");
	}
}
