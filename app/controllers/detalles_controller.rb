class DetallesController < ApplicationController
  # GET /detalles
  # GET /detalles.json
  def index
    @detalles = Detalle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @detalles }
    end
  end

  # GET /detalles/1
  # GET /detalles/1.json
  def show
    @detalle = Detalle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @detalle }
    end
  end

  # GET /detalles/new
  # GET /detalles/new.json
  def new
    @detalle = Detalle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @detalle }
    end
  end

  # GET /detalles/1/edit
  def edit
    @detalle = Detalle.find(params[:id])
  end

  # POST /detalles
  # POST /detalles.json
  def create
    @detalle = Detalle.new(params[:detalle])

    respond_to do |format|
      if @detalle.save
        format.html { redirect_to @detalle, notice: 'Detalle was successfully created.' }
        format.json { render json: @detalle, status: :created, location: @detalle }
      else
        format.html { render action: "new" }
        format.json { render json: @detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /detalles/1
  # PUT /detalles/1.json
  def update
    @detalle = Detalle.find(params[:id])

    respond_to do |format|
      if @detalle.update_attributes(params[:detalle])
        format.html { redirect_to @detalle, notice: 'Detalle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalles/1
  # DELETE /detalles/1.json
  def destroy
    @detalle = Detalle.find(params[:id])
    @detalle.destroy

    respond_to do |format|
      format.html { redirect_to detalles_url }
      format.json { head :no_content }
    end
  end
end
