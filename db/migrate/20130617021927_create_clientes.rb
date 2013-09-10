class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombres
      t.string :apellidos
      t.string :cedula
      t.string :empresa
      t.string :nit
      t.string :cargo
      t.string :telefono
      t.string :direccion
      t.string :celular
      t.string :fax
      t.string :email
      t.references :municipio


      t.timestamps
    end
     add_index :clientes, :municipio_id
  end
end















