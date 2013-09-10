class Detalle < ActiveRecord::Base
  belongs_to :servicio
  attr_accessible :pieza, :precio, :servicio_id
end
