class Contacto < ActiveRecord::Base
  attr_accessible :apellido, :celular, :email, :nombre, :telefono
end
