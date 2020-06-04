class CartsController < ApplicationController
  def show
    @orden_items = current_order.orden_items
  end
end
