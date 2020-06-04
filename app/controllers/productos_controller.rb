class ProductosController < ApplicationController
  def index
    @celulares =Celular.joins(:producto,:computo)
  end
  def show
    @celular =Celular.joins(:producto,:computo).find(params[:id])
    @orden_item = current_order.orden_items.new
  end
  def new
  end
  def create
  end
  def edit
  end
  def update
  end
  def destroy
    def product_params
      params.require(:productos).permit(:marca, :linea, :precio)
    end
  end
end
