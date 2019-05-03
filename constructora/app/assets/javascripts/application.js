// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .


function MiMetodo(){
	if ($("#alumno_name").val() == "") {
		alert("Ingrese Nombre");
		$("#alumno_name").focus();
		return false;
	}

	if ($("#alumno_dni").val() == "") {
		alert("Ingrese DNI");
		$("#alumno_dni").focus();
		return false;
	}
}

/*
se llama 
onChangeComboBox(this.options[this.selectedIndex].value)
function onChangeComboBox(value) {
	if (value == "0") {
		$("#casham").show();
	}
	else if (value == "1") {
		$("#casham").hide();
	}

	alert($("#sale_PaymentType").val())

}
*/
function onChangeComboBox() {
	if ($("#sale_PaymentType").val() == "0") {
		$("#divCashAmount").show();
		$("#divFinancedAmount").hide();

		$("#sale_CashAmount").val($("#sale_FinancedAmount").val());
		$("#sale_FinancedAmount").val('');
		$("#sale_CashAmount").focus();
	}
	else if ($("#sale_PaymentType").val() == "1") {
		$("#divCashAmount").hide();
		$("#divFinancedAmount").show();
		
		$("#sale_FinancedAmount").val($("#sale_CashAmount").val());
		$("#sale_CashAmount").val('');
		$("#sale_FinancedAmount").focus();
	}
	else {
		$("#divCashAmount").hide();
		$("#divFinancedAmount").hide();
	}
}