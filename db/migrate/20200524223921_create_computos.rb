class CreateComputos < ActiveRecord::Migration[6.0]
  def change
    create_table :computos do |t|
      t.string :tipoRed
      t.string :RAM
      t.string :procesador
      t.string :almacenamiento

      t.timestamps
    end
  end
end
