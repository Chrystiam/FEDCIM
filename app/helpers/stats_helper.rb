 module StatsHelper
 
	def stat_for_contactos
		@numcon = Contacto.count(:group => :mes)

		leyenda = []         # leyendas del grafico

		@numcon.collect do |key, value| 
			case key
			when 1
			  leyenda << "Enero #{value} Contactos"
			when 2
			  leyenda << "Febrero #{value} Contactos"
			when 3
			  leyenda << "Marzo #{value} Contactos"
			when 4
			  leyenda << "Abril  #{value} Contactos"
			when 5
			  leyenda << "Mayo #{value} Contactos"
			when 6
			  leyenda << "Junio #{value} Contactos"
			when 7
			  leyenda << "Julio #{value} Contactos"
			when 8
			  leyenda << "Agosto #{value} Contactos"
		    when 9
			  leyenda << "Septiembre #{value} Contactos"
			when 10
			  leyenda << "Octubre #{value} Contactos"
			when 11
			  leyenda << "Noviembre #{value} Contactos"
			when 12
			  leyenda << "Diciembre #{value} Contactos"
			when nil
			  leyenda << "No Hay Valoracion"
			end
		end

		Gchart.pie(
	    :size => '695x380',
	    :theme => :keynote,
	    :title => "Contactos por Mes", 
	    :bg => 'efefef',
	    :labels => leyenda,
	    :data => @numcon.values,
	    :axis_with_labels => 'x,y',
	    :axis_labels =>  [@numcon.values])
	end
end
