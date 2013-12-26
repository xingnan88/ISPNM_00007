$(function() {
	var $checked;
	$(":button").addClass("submit");
	$(":reset").addClass("submit");
	judgeEnable();
	//
	$("td>input").click(function() {
		judgeEnable();
	})
	//
	$(":button").click(function() {
		/**
		 * 1.ˢ�� refresh
		 * 2.���� back
		 * 3.ȫѡ selectAll
		 * 4.��ѡ inverse
		 * 5.�鿴 show
		 * 6.�޸� modify
		 * 7.ɾ�� delete
		 * 8.Ԥ�� preview
		 * 9.��ҳ home
		 * 10.��һҳ previous
		 * 11.��ҳ next
		 * 12.βҳ last
		 * @memberOf {TypeName} 
		 */
		var $name = $(this).attr("name");
		if ($name == "refresh") {
			location.reload();
		} else if ($name == "back") {
			history.back();
		} else if ($name == "selectAll") {
			var $value = $(this).attr("value");
			if ($value == "ȫѡ") {
				$(this).attr("value", "ȡ��");
				$("td>input").attr("checked", true);
			} else {
				$(this).attr("value", "ȫѡ");
				$("td>input").attr("checked", false);
			}
			judgeEnable();
		} else if ($name == "inverse") {
			$("td>input").each(function() {
				var $boo = $(this).attr("checked");
				$(this).attr("checked", !$boo);
			});
			judgeEnable();
		} else if ($name == "show") {
			$cpId = $(":checked").val();
			//
			$("form").attr("action",
					"company/backstage!show?cpDto.idStr=" + $cpId).submit();
		} else if ($name == "modify") {
			$cpId = $(":checked").val();
			$("form").attr("action",
					"company/backstage!modifyNav?cpDto.idStr=" + $cpId)
					.submit();
		} else if ($name == "delete") {
			var $cpIdStr = "";
			$(":checked").each(function() {
				$cpIdStr = $cpIdStr + $(this).val() + ":";
			});
			$("form").attr("action",
					"company/backstage!delete?cpDto.idStr=" + $cpIdStr)
					.submit();
		} else if ($name == "preview") {
			$("form").attr("action", "company/backstage!preview").submit();
		} else if ($name == "home") {
			$("form").attr("action", "company/backstage!home").submit();
		} else if ($name == "previous") {
			$("form").attr("action", "company/backstage!previous").submit();
		} else if ($name == "next") {
			$("form").attr("action", "company/backstage!next").submit();
		} else if ($name == "last") {
			$("form").attr("action", "company/backstage!last").submit();
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
function judgeEnable() {
	var $length = selectOutChecked();
	var $show = $("input[name='show']").eq(0);
	var $modify = $("input[name='modify']").eq(0);
	var $delete = $("input[name='delete']").eq(0);
	if ($length == 0) {
		setDisable($show, true);
		setDisable($modify, true);
		setDisable($delete, true);
	} else {
		if ($length == 1) {
			setDisable($show, false);
			setDisable($modify, false);
		} else {
			setDisable($show, true);
			setDisable($modify, true);
		}
		setDisable($delete, false);
	}
}
function setDisable(ele, boo) {
	ele.attr("disabled", boo);
}