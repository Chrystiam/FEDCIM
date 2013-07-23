class Departamento < ActiveRecord::Base
  has_many :municipios
  attr_accessible :nombre, :sigla
end
