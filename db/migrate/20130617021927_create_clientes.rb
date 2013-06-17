class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre_empresa
      t.string :nombre_solicita_servicio
      t.string :telefono_empresa
      t.string :telefono_contacto
      t.string :correo_empresa
      t.string :correo_contacto

      t.timestamps
    end
  end
end
