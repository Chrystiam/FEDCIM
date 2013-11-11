class CotizacionesController < ApplicationController
  #load_and_authorize_resource :only => [:new, :edit, :destroy]
  def index
    @cotizaciones = Cotizacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cotizaciones }
      format.xml {render xml: @cotizaciones}
    end
  end

  def cal_cost
   input = Detalle.where("id = ?",params[:id]).first
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
    @costot = presioes.to_f 

    respond_to do |format|
      format.js {render 'total_cost'}
    end
  end 

  def show
    @cotizacion = Cotizacion.find(params[:id])
  end

  def new
    @cotizacion = Cotizacion.new
    @detalles = Detalle.all
    #@servicio = Servicio.all
  end

  def edit
    @cotizacion = Cotizacion.find(params[:id])
  end

  def create

    @cotizacion = Cotizacion.new
    @cotizacion.servicio_id = params[:cotizacion][:servicio_id].to_i
    @cotizacion.detalle_id = params[:cotizacion][:detalle_id].to_i
    @cotizacion.precio = params[:cotizacion][:precio].to_i
    @cotizacion.total = params[:cotizacion][:total].to_i
    render :action => :new unless @cotizacion.save
  end

  def update_detalle
    @detalles =  Detalle.where('servicio_id=?', params[:servicio_id])
    render :partial => "detalle", :object => @detalles
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
