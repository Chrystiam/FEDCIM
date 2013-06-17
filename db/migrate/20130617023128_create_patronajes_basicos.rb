class CreatePatronajesBasicos < ActiveRecord::Migration
  def change
    create_table :patronajes_basicos do |t|
      t.string :pieza
      t.integer :precio

      t.timestamps
    end
  end
end
