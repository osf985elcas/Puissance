class Pedido < ApplicationRecord
  belongs_to :producto
  belongs_to :user
end
