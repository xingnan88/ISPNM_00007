$(function() {
	/**
	 * 1.读出所有省市数据并展示出来；
	 * 2.初始化相关数据。
	 */
	var xmlUrl = "http://localhost:8080/ISP4NM/china.xml";
	var $position = $(".select").eq(0);
	var $cityPosition = $(".select").eq(1);
	readXmlSelect(xmlUrl, $position);
	searchXmlSelect(xmlUrl, "北京", $cityPosition);
})
function readXmlSelect(xmlUrl, position) {
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
			position.html(optionShow($provinces));
			//内容改变后
		$(".select").eq(0).change(function() {
			var $province = $(this).val();
			var $cityPosition = $(".select").eq(1);
			provinceClick(xmlUrl, $province, $cityPosition);
		})
	}
	})
}
function searchXmlSelect(xmlUrl, province, position) {
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
					var $cEle = $pEle.eq(i).children();
					var $cities = new Array();
					if ($cEle.length == 0) {
						$(position).fadeTo("slow", 0).attr("disabled", true);
					} else {
						$(position).fadeTo("slow", 1).attr("disabled", false);
						$cEle.each(function() {
							$cities.push($(this).text());
						})
						position.html(optionShow($cities));
						break;
					}
				}
			}
		}
	})
}
function optionShow(data) {
	var $dShow = "";
	for (i = 0; i < data.length; i++) {
		$dShow += "<option>" + data[i] + "</option>";
	}
	return $dShow;
}
function provinceClick(xmlUrl, province, position) {
	searchXmlSelect(xmlUrl, province, position);
}
