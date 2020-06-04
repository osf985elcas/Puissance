class CreateConsolas < ActiveRecord::Migration[6.0]
  def change
    create_table :consolas do |t|
      t.string :marca
      t.string :paquete
      t.references :producto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
