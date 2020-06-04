class CreateOrdens < ActiveRecord::Migration[6.0]
  def change
    create_table :ordens do |t|
      t.float :subtotal
      t.float :total
      t.float :impuesto
      t.float :envio
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
