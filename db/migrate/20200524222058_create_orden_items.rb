class CreateOrdenItems < ActiveRecord::Migration[6.0]
  def change
    create_table :orden_items do |t|
      t.integer :producto_id
      t.integer :orden_id
      t.float :precio_unidad
      t.integer :cantidad
      t.float :precio_total
      t.timestamps
    end
  end
end
