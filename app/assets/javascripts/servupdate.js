$(document).ready(function(){
  
    $("#esctDi").css('display','none');
    $("#none").css('display','none');
    $("#cotizacion_precio").val("0");
    $("#cotizacion_total").val("0");

    $('#cotizacion_servicio_id').change(function(e){
         var servn = $(this).val()
    
    	
        if (servn != "") {
            $("#none").css('display','block');
    		$("#esctDi").css('display','block');
            update_detalle(servn)
        }
    	else{
            $("#none").css('display','none');
    		$("#esctDi").css('display','none');
    	};

        function update_detalle(servicio_id) {  
            jQuery.ajax({
                url: "/cotizaciones/update_detalle",
                type: "GET",
                data: {"servicio_id" : servicio_id},
                dataType: "html",
                success: function(data) {
                  jQuery("#esctDi").html(data);
                }
            });    
        }
        /*
        function update_precio(servicio_id) {  
            jQuery.ajax({
                url: "/cotizaciones/cal_cost",
                type: "GET",
                data: {"id" : servicio_id}
            });    
        }
        */
    });
});


 
