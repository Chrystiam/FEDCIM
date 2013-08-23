class Contacto < ActiveRecord::Base
  attr_accessible :apellido, :celular, :email, :nombre, :telefono, :created_at, :mes

    def self.splfecm(fecha)
	    fecstr = fecha.to_s 
	  	splife = fecstr.split("-")
	  	@fec = splife[1]
	  	@fec.to_i
	end

	def self.splfecd(fecha)
	    fecstr = fecha.to_s 
	  	splife = fecstr.split("-")
	  	@fec = splife[2]
	  	@fec.to_i
	end

	def self.splfeca(fecha)
	    fecstr = fecha.to_s 
	  	splife = fecstr.split("-")
	  	@fec = splife[0]
	  	@fec.to_i
	end

end
