class CreateDetalles < ActiveRecord::Migration
  def change
    create_table :detalles do |t|
      t.string :pieza
      t.integer :precio
      t.references :servicio

      t.timestamps
    end
    add_index :detalles, :servicio_id
  end
end
