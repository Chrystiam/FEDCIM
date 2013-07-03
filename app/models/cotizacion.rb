class Cotizacion < ActiveRecord::Base
  belongs_to :escalado_talla
  belongs_to :patronaje_basico
  attr_accessible :precio_escala, :precio_patro, :total, :escalado_talla, :patronaje_basico
end
