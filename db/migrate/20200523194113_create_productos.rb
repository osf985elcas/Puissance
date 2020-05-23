class CreateProductos < ActiveRecord::Migration[6.0]
  def change
    create_table :productos do |t|
      t.string :marca
      t.string :linea
      t.float :precio
      t.string :imagen

      t.timestamps
    end
  end
end
