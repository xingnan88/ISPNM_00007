$(function() {
	/*�����ʽ*/
	$(".formTr").addClass("formTr");
	$(".fTrArea").addClass("formTrArea");
	$(".fTdLabel").addClass("formTdLabel labelFont");
	$(".fTdLabelField").addClass("formTdLabelField font");
	$(".fTdLabelLeft").addClass("formTdLabelLeft tabFont");
	$(".fTdField").addClass("formTdField");
	$(".fTdArea").addClass("formTdArea font");
	$(".fTdButton").addClass("formTdButton");
	$(":text").addClass("text font needCheck");
	$("textArea").addClass("textArea font needCheck");
	$("select").addClass("select font");
	$(":checkbox").addClass("checkbox");
	$(":submit").addClass("submit");
	$(":button").addClass("submit");
	
	/*����¼�*/
	$(".needCheck").change(function(){
		checkDisable();
	})
})