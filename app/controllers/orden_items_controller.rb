class OrdenItemsController < ApplicationController
  def create
    @orden = current_order
    @orden_item = @orden.orden_items.new(order_item_params)
    @orden.save
    session[:orden_id] = @orden.id
  end
  def update
    @orden = current_order
    @orden_item = @orden.orden_items.find(params[:id])
    @orden_item.update_attributes(order_item_params)
    @orden_items = @orden.orden_items
  end

  def destroy
    @orden = current_order
    @orden_item = @orden.orden_items.find(params[:id])
    @orden_item.destroy
    @orden_items = @orden.orden_items
  end


  private
  def order_item_params
    params.require(:orden_item).permit(:producto_id,:cantidad)
  end
end
