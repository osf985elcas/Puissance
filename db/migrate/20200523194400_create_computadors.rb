class CreateComputadors < ActiveRecord::Migration[6.0]
  def change
    create_table :computadors do |t|
      t.string :tipo
      t.references :computo, null: false, foreign_key: true
      t.references :producto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
