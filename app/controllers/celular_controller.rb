class CelularController < ApplicationController
  def new
    @celular=Celular.new
  end
  def index
    @celulares =Celular.joins(:producto,:computo)
  end
  def show
    @celular =Celular.joins(:producto,:computo).find(params[:id])
  end
end
