class ContactosController < ApplicationController

  def index
    @contactos = Contacto.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contactos }
    end
  end

  def show
    @contacto = Contacto.find(params[:id])
  end

  def new
    @contacto = Contacto.new
  end

  def edit
    @contacto = Contacto.find(params[:id])
  end

  def create
    @contacto = Contacto.new(params[:contacto])
    if @contacto.save
      @contacto.mes = Contacto.splfecm(@contacto.created_at)
      @contacto.dia = Contacto.splfecd(@contacto.created_at)
      @contacto.año = Contacto.splfeca(@contacto.created_at)
    end
    render :action => :home unless @contacto.save
    ContactoMailer.registration_contacto(@contacto).deliver 
  end

  def update
    @contacto = Contacto.find(params[:id])
    @contacto.dia = Contacto.splfecd(@contacto.created_at)
    @contacto.año = Contacto.splfeca(@contacto.created_at)
    @contacto.mes = Contacto.splfecm(@contacto.created_at)
    render :action  => :edit unless @contacto.update_attributes(params[:contacto])
  end

  def destroy
    @contacto = Contacto.find(params[:id])
    @contacto.destroy
  end  
end
