class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nombres, :string
    add_column :users, :apellidos, :string
    add_column :users, :direccion, :string
    add_column :users, :telefonoFijo, :string
    add_column :users, :telefonoMovil, :string
  end
end
