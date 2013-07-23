class Cliente < ActiveRecord::Base
  belongs_to :municipio
  attr_accessible :nombres, :apellidos, :cedula, :empresa, :nit
  attr_accessible :cargo, :telefono, :direccion, :celular, :fax, :email, :municipio_id
  attr_accessible :municipio_nombre

  def municipio_nombre
    municipio.nombre if municipio
  end

  def municipio_nombre=(nombre)
  	self.municipio  = Municipio.find_or_create_by_nombre(nombre) unless nombre.blank? 
  end

end