class CreateCotizaciones < ActiveRecord::Migration
  def change
    create_table :cotizaciones do |t|
      t.references :escalado_talla
      t.string :precio_escala
      t.references :patronaje_basico
      t.string :precio_patro
      t.string :total

      t.timestamps
    end
    add_index :cotizaciones, :escalado_talla_id
    add_index :cotizaciones, :patronaje_basico_id
  end
end
