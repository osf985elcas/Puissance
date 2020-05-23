class CreateMetodoPagos < ActiveRecord::Migration[6.0]
  def change
    create_table :metodo_pagos do |t|
      t.string :tipo
      t.string :codigo
      t.float :dinero

      t.timestamps
    end
  end
end
