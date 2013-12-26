$(function() {
	/**
	 * 1.��������ʡ�����ݲ�չʾ������
	 * 2.��ʼ��������ݡ�
	 */
	var xmlUrl = "http://localhost:8080/ISP4NM/china.xml";
	var $position = $("#province");
	var $cityPosition = $("#city");
	readXml(xmlUrl, $position);
	searchXml(xmlUrl, "����", $cityPosition);
	cityClick("����", "����", "connect");
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
			//��������
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
						alert(province + " �������б�");
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
			//��������
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
	 * 1.�ҳ�֮ǰspanActive��Ԫ�أ���Ϊ�����ǵ�ǰԪ��ΪspanActive
	 * 2.�ж������Ƿ�ΪͬһԪ�أ�
	 * 3.��ΪͬһԪ�أ��ޱ仯��
	 * 	  ����Ȼ����ԭ֮ǰactiveԪ�ز���ǵ�ǰԪ��ΪspanActive;
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