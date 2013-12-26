$(function() {
	checkDisable();
})
function checkDisable() {
	var $submit = $(":submit");
	var $result = false;
	var $needCheck = $(".needCheck");
	for (i = 0; i < $needCheck.length; i++) {
		var $value = $needCheck.eq(i).val();
		if ($.trim($value) == "") {
			$result = true;
			break;
		}
	}
	if ($("#cpType").val()=="") {
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
