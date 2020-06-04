class Orden < ApplicationRecord
  has_many :orden_items
  before_save :set_subtotal

  def subtotal
    orden_items.collect {|orden_item| orden_item.valid? ? (orden_item.unit_price*orden_item.cantidad) : 0}.sum
  end

  private
  def set_subtotal
    self[:subtotal] = subtotal
  end
end
