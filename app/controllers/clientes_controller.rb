class ClientesController < ApplicationController
  load_and_authorize_resource :only => [:new, :edit, :destroy]
  autocomplete :municipio, :nombre, :full => true

  def index
    @clientes = Cliente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clientes }
    end
  end

  def show
    @cliente = Cliente.find(params[:id])
  end

  def new
    @cliente = Cliente.new
  end

  def edit
    @cliente = Cliente.find(params[:id])
  end

  def create
    @cliente = Cliente.new(params[:cliente])
    render :action => :new unless @cliente.save
  end

  def update
    @cliente = Cliente.find(params[:id])
    render :action  => :edit unless @cliente.update_attributes(params[:cliente])
  end

  def destroy
    @cliente = Cliente.find(params[:id])
    @cliente.destroy
  end
end
