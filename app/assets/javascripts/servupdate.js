$(document).ready(function(){
  
    $("#esctDi").css('display','none');
    $("#none").css('display','none');
    $("#cotizacion_precio").val("0");
    $("#cotizacion_total").val("0");

    $('#cotizacion_servicio_id').bind("keydown change keyup",function(e){
        var servn = $(this).val()
   
    	
        if (servn != "") {
    		$("#esctDi").css('display','block');
            update_detalle(servn);
        }else{
            $("#none").css('display','none')
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
        };
    }); 
    
    
     
});


 
