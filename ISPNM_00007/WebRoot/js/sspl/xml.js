$(function() {
	/**
	 * 1.读出所有省市数据并展示出来；
	 * 2.初始化相关数据。
	 */
	var xmlUrl = "http://localhost:8080/ISP4NM/china.xml";
	var $position = $("#province");
	var $cityPosition = $("#city");
	readXml(xmlUrl, $position);
	searchXml(xmlUrl, "北京", $cityPosition);
	cityClick("北京", "东城", "connect");
	$position.addClass("font");
	$cityPosition.addClass("font");
	//
})
function readXml(xmlUrl, position) {
	$.ajax( {
		url : xmlUrl,
		type : 'POST',
		dataType : 'xml',
		error : function() {
			alert('Error loading XML document!');
		},
		success : function(xmlfile) {
			var $provinces = new Array();
			$(xmlfile).find("province").each(function() {
				$provinces.push($(this).attr("name"));
			})
			position.html(spanShow($provinces));
			//被单击后
		$("#province>.span").click(function() {
			var $province = $(this).text();
			var $cityPosition = $("#city");
			var $befPos = $("#province .spanActive");
			//
				toggleActive($(this), $befPos);
				//
				provinceClick(xmlUrl, $province, $cityPosition);
			})
	}
	})
}
function searchXml(xmlUrl, province, position) {
	$.ajax( {
		url : xmlUrl,
		type : 'POST',
		dataType : 'xml',
		error : function() {
			alert('Error loading XML document!');
		},
		success : function(xmlfile) {
			var $pEle = $(xmlfile).find("province");
			for (i = 0; i < $pEle.length; i++) {
				var $name = $pEle.eq(i).attr("name");
				if ($name == province) {
					var $model = $("connect").attr("model");
					var $cEle = $pEle.eq(i).children();
					var $cities = new Array();
					if ($cEle.length == 0) {
						alert(province + " 无区县列表！");
						cityClick(province, "", $model);
						setNav(province, "");
					}
					$cEle.each(function() {
						$cities.push($(this).text());
					})
					position.html(spanShow($cities));
					break;
				}
			}
			//被单击后
		$("#city>.span").click(function() {
			var $city = $(this).text();
			var $model = $("#connect").attr("model");
			var $befPos = $("#city .spanActive");
			//
				toggleActive($(this), $befPos);
				//
				cityClick(province, $city, $model);
				setNav(province, $city);
			})
	}
	})
}
function spanShow(data) {
	var $dShow = "";
	for (i = 0; i < data.length; i++) {
		if (i == 0) {
			$dShow += "<span class='span spanActive'>" + data[i] + "</span>";
		} else {
			$dShow += "<span class='span'>" + data[i] + "</span>";
		}
	}
	return $dShow;
}
function provinceClick(xmlUrl, province, position) {
	searchXml(xmlUrl, province, position);
}
function cityClick(province, city, model) {
	if (model == "connect") {
		var $type = $("#cpType .spanActive").text();
		var src = "company/backstage!search?cpDto.company.address=" + province
				+ city + "&cpDto.company.type=" + $type;
	} else if (model == "disconnect") {
		var src = "company/backstage!search?cpDto.company.address=" + province
				+ city;
	}
	$("#src").attr("src", src);
}
function setNav(province, city) {
	$("#nav span").html(province + " " + city);
}
function setActive(pos) {
	pos.addClass("spanActive");
}
function toggleActive(pos, befPos) {
	/*
	 * 1.找出之前spanActive的元素；若为空则标记当前元素为spanActive
	 * 2.判断两者是否为同一元素；
	 * 3.若为同一元素，无变化；
	 * 	  若不然，还原之前active元素并标记当前元素为spanActive;
	 */
	var $befText = befPos.text();
	var $curText = pos.text();
	if ($befText == "") {
		pos.addClass("spanActive");
		return;
	}
	if ($befText != $curText) {
		befPos.removeClass("spanActive");
		pos.addClass("spanActive");
	}
}