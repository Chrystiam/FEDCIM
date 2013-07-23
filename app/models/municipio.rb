class Municipio < ActiveRecord::Base
  belongs_to :departamento
  attr_accessible :nombre, :sigla, :departamento_id, :departamento_nombre

  def departamento_nombre
  	departamento.nombre if departamento
  end

  def departamento_nombre=(nombre)
  	self.departamento  = Departamento.find_or_create_by_nombre(nombre) unless nombre.blank? 
  end

  def self.muni_ubica(muni)
  	@ubica = muni.nombre + ' | ' + muni.departamento.nombre
  end

end
