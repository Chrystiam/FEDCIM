$(document).ready(function() {

	$('#cotizacion_detalle_id').change(function() { 
		var servn = $(this).val()
		if (servn == "" ){
		    $("#cotizacion_precio").val("0");
		    $("#cotizacion_total").val("0");
		}
		else{
			
		    $.ajax({
			    url:'/cotizaciones/cal_cost', //Defined in your routes file
			    data:('id=' + $('#cotizacion_detalle_id').val()) 
		    });
		}  
	});

	$('#cotizacion_total').hover(function(){
      $.ajax({
         url:'/cotizaciones/total_cost', //Defined in your routes file
         data:('presioes=' + $('#cotizacion_precio').val()) 
       });
    });

	$('#cotizacion_detalle_id').bind("keydown change keyup",function(){
        var deta = $(this).val()

        if (deta != "") {
           $("#none").css('display','block');
        }
        else{
            $("#none").css('display','none');
        }
	});


});
