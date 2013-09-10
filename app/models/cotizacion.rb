class Cotizacion < ActiveRecord::Base
  belongs_to :servicio
  belongs_to :detalle
  attr_accessible :precio, :total, :servicio_id, :detalle_id
end
