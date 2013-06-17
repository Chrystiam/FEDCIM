// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require lazybox
//= require jquery_ujs
//= require twitter/bootstrap
//= require bootstrap
//= require_tree .

$(document).ready(function() {
	$('#cotizacion_escalado_talla').change(function() { 

	  $.ajax({
	     url:'/cotizaciones/cal_cost', //Defined in your routes file
	     data:('id=' + $('#cotizacion_escalado_talla').val()) 
	   });
	});

	$('#cotizacion_patronaje_basico').change(function() { 

	  $.ajax({
	     url:'/cotizaciones/cal_costp', //Defined in your routes file
	     data:('id=' + $('#cotizacion_patronaje_basico').val()) 
	   });
	});

	$('#cotizacion_total').hover(function() { 

	  $.ajax({
	     url:'/cotizaciones/total_cost', //Defined in your routes file
	     data:('presioes=' + $('#cotizacion_precio_escala').val() + '&' + 
	      'presiopr=' + $('#cotizacion_precio_patro').val()) 
	   });
});

$('a#show_cotizacion_link').lazybox({closeImg: true});
  
  $('a[rel*=lazybox]').lazybox({close: false, modal: false, opacity: 0.7, klass: 'lazybox', speed: 200});
  $.lazybox.settings = {cancelClass: "button green", submitClass: 'button red', closeImg: false, niceClose: false}
  $.rails.allowAction = $.lazybox.confirm;

  $('#p1').tooltip('show') 
});
