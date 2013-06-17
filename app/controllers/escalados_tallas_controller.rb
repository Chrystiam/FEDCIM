class EscaladosTallasController < ApplicationController
  # GET /escalados_tallas
  # GET /escalados_tallas.json
  def index
    @escalados_tallas = EscaladoTalla.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @escalados_tallas }
    end
  end

  # GET /escalados_tallas/1
  # GET /escalados_tallas/1.json
  def show
    @escalado_talla = EscaladoTalla.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @escalado_talla }
    end
  end

  # GET /escalados_tallas/new
  # GET /escalados_tallas/new.json
  def new
    @escalado_talla = EscaladoTalla.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @escalado_talla }
    end
  end

  # GET /escalados_tallas/1/edit
  def edit
    @escalado_talla = EscaladoTalla.find(params[:id])
  end

  # POST /escalados_tallas
  # POST /escalados_tallas.json
  def create
    @escalado_talla = EscaladoTalla.new(params[:escalado_talla])

    respond_to do |format|
      if @escalado_talla.save
        format.html { redirect_to @escalado_talla, notice: 'Escalado talla was successfully created.' }
        format.json { render json: @escalado_talla, status: :created, location: @escalado_talla }
      else
        format.html { render action: "new" }
        format.json { render json: @escalado_talla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /escalados_tallas/1
  # PUT /escalados_tallas/1.json
  def update
    @escalado_talla = EscaladoTalla.find(params[:id])

    respond_to do |format|
      if @escalado_talla.update_attributes(params[:escalado_talla])
        format.html { redirect_to @escalado_talla, notice: 'Escalado talla was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @escalado_talla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /escalados_tallas/1
  # DELETE /escalados_tallas/1.json
  def destroy
    @escalado_talla = EscaladoTalla.find(params[:id])
    @escalado_talla.destroy

    respond_to do |format|
      format.html { redirect_to escalados_tallas_url }
      format.json { head :no_content }
    end
  end
end
