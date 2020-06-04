class OrdenItem < ApplicationRecord
  belongs_to :orden
  belongs_to :producto

  before_save :set_unit_price
  before_save :set_total_price

  def unit_price
    if persisted?
      self[:precio_unidad]
    else
      producto.precio
    end
  end

  def total_price
    unit_price* cantidad
  end

  private
  def set_unit_price
    self[:precio_unidad]=unit_price
  end
  def set_total_price
    self[:precio_total] = cantidad * set_unit_price
  end
end
