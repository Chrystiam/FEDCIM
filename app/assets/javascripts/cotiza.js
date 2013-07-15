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
});