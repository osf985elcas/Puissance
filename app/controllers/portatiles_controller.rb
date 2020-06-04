class PortatilesController < ApplicationController
  def index
    @computadores =Computador.joins(:producto,:computo).where(tipo: 'Portatil')
  end
  def show
    @computador =Computador.joins(:producto,:computo).find(params[:id])
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
