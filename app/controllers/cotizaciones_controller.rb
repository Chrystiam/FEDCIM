class CotizacionesController < ApplicationController

  def index
    @cotizaciones = Cotizacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cotizaciones }
    end
  end

  def cal_cost
   input = EscaladoTalla.where("id = ?",params[:id]).first
   @costo = input.precio
    respond_to do |format|
      format.js { render 'cal_cost' } #cal_cost.js.erb
    end
  end
  
  def cal_costp
   patro = PatronajeBasico.where("id = ?", params[:id]).first
   @costp = patro.precio
    respond_to do |format|
      format.js { render 'cal_costp' } #cal_costp.js.erb
    end
  end

  def total_cost
    presioes = params[:presioes]
    presiopr = params[:presiopr]
    @costot = presioes.to_f + presiopr.to_f

    respond_to do |format|
      format.js {render 'total_cost'}
    end
  end 

  def show
    @cotizacion = Cotizacion.find(params[:id])
  end

  def new
    @cotizacion = Cotizacion.new
  end

  def edit
    @cotizacion = Cotizacion.find(params[:id])
  end

  def create
    @cotizacion = Cotizacion.new(params[:cotizacion])
    render :action => :new unless @cotizacion.save
  end

  def update
    @cotizacion = Cotizacion.find(params[:id])
    render :action  => :edit unless @cotizacion.update_attributes(params[:cotizacion])
  end

  def destroy
    @cotizacion = Cotizacion.find(params[:id])
    @cotizacion.destroy
  end
end
