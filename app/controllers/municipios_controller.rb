class MunicipiosController < ApplicationController
  load_and_authorize_resource :only => [:new, :edit, :destroy]
  autocomplete :departamento, :nombre, :full => true
  
  def index
    @municipios = Municipio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @municipios }
    end
  end

  def show
    @municipio = Municipio.find(params[:id])
  end

  def new
    @municipio = Municipio.new
  end

  def edit
    @municipio = Municipio.find(params[:id])
  end

  def create
    @municipio = Municipio.new(params[:municipio])
    @municipio.nombre = Municipio.muni_ubica(@municipio)
    render :action => :new unless @municipio.save
  end

  def update
    @municipio = Municipio.find(params[:id])
    @municipio.nombre = Municipio.muni_ubica(@municipio)
    render :action => :edit unless @municipio.update_attributes(params[:municipio])
  end

  def destroy
    @municipio = Municipio.find(params[:id])
    @municipio.destroy
  end
end
