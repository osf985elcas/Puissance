class CreateCamaras < ActiveRecord::Migration[6.0]
  def change
    create_table :camaras do |t|
      t.string :tipo
      t.string :tamanoPantalla
      t.string :resolucion
      t.references :producto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
