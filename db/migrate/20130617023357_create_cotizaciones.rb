class CreateCotizaciones < ActiveRecord::Migration
  def change
    create_table :cotizaciones do |t|
      t.references :servicio
      t.references :detalle
      t.integer :precio
      t.integer :total

      t.timestamps
    end
    add_index :cotizaciones, :servicio_id
    add_index :cotizaciones, :detalle_id
  end
end
