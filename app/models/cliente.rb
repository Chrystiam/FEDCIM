class Cliente < ActiveRecord::Base
  attr_accessible :correo_contacto, :correo_empresa, :nombre_empresa, :nombre_solicita_servicio, :telefono_contacto, :telefono_empresa
end
