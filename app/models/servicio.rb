class Servicio < ActiveRecord::Base
  has_many :cotizaciones
  has_many :detalles	
  attr_accessible :nombre
end
