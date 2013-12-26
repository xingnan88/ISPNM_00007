$(function() {
	$(":button").addClass("button");
	//show
	$("table tr[value]").click(function() {
		var $value=$(this).attr("value");
		$("form").attr("action", "company/backstage!show?cpDto.idStr="+$value).submit();
	})
	//
	$(":button").click(function() {
		/**
		 * 1.刷新 refresh
		 * 2.返回 back
		 * 3.首页 home
		 * 4.上一页 previous
		 * 5.下页 next
		 * 6.尾页 last
		 * @memberOf {TypeName} 
		 */
		var $name = $(this).attr("name");
		if ($name == "refresh") {
			location.reload();
		} else if ($name == "back") {
			history.back();
		} else if ($name == "home") {
			$("form").attr("action", "company/front!home").submit();
		} else if ($name == "previous") {
			$("form").attr("action", "company/front!previous").submit();
		} else if ($name == "next") {
			$("form").attr("action", "company/front!next").submit();
		} else if ($name == "last") {
			$("form").attr("action", "company/front!last").submit();
		}
	})
})
function checkPageButton() {
	var $label = $(".body .title h2 label");
	var $curNum = $label.eq(0).html();
	var $maxNum = $label.eq(1).html();
	
	var btnHome = $("input[name='home']");
	var btnPrevious = $("input[name='previous']");
	var btnLast = $("input[name='last']");
	var btnNext = $("input[name='next']");

	if ($curNum == 1) {
		setDisable(btnHome, true);
		setDisable(btnPrevious, true);
	}

	if ($curNum == $maxNum) {
		setDisable(btnLast, true);
		setDisable(btnNext, true);
	}

	if ($curNum > 1 && $curNum < $maxNum) {
		setDisable(btnHome, false);
		setDisable(btnPrevious, false);
		setDisable(btnLast, false);
		setDisable(btnNext, false);
	}
}
function selectOutChecked() {
	$checked = $("td input:checked");
	return $checked.length;
}
function setDisable(ele, boo) {
	ele.attr("disabled", boo);
}
