class RemoveUserFromOrden < ActiveRecord::Migration[6.0]
  def change
    remove_reference :ordens, :user, null: false, foreign_key: true
  end
end
