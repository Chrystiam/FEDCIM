class CreateEscaladosTallas < ActiveRecord::Migration
  def change
    create_table :escalados_tallas do |t|
      t.string :pieza
      t.integer :precio

      t.timestamps
    end
  end
end
