class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :celular
      t.string :email
      t.integer :año
      t.integer :mes
      t.integer :dia

      t.timestamps
    end
  end
end
