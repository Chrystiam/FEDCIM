class PatronajesBasicosController < ApplicationController
  # GET /patronajes_basicos
  # GET /patronajes_basicos.json
  def index
    @patronajes_basicos = PatronajeBasico.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patronajes_basicos }
    end
  end

  # GET /patronajes_basicos/1
  # GET /patronajes_basicos/1.json
  def show
    @patronaje_basico = PatronajeBasico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patronaje_basico }
    end
  end

  # GET /patronajes_basicos/new
  # GET /patronajes_basicos/new.json
  def new
    @patronaje_basico = PatronajeBasico.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patronaje_basico }
    end
  end

  # GET /patronajes_basicos/1/edit
  def edit
    @patronaje_basico = PatronajeBasico.find(params[:id])
  end

  # POST /patronajes_basicos
  # POST /patronajes_basicos.json
  def create
    @patronaje_basico = PatronajeBasico.new(params[:patronaje_basico])

    respond_to do |format|
      if @patronaje_basico.save
        format.html { redirect_to @patronaje_basico, notice: 'Patronaje basico was successfully created.' }
        format.json { render json: @patronaje_basico, status: :created, location: @patronaje_basico }
      else
        format.html { render action: "new" }
        format.json { render json: @patronaje_basico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patronajes_basicos/1
  # PUT /patronajes_basicos/1.json
  def update
    @patronaje_basico = PatronajeBasico.find(params[:id])

    respond_to do |format|
      if @patronaje_basico.update_attributes(params[:patronaje_basico])
        format.html { redirect_to @patronaje_basico, notice: 'Patronaje basico was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @patronaje_basico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patronajes_basicos/1
  # DELETE /patronajes_basicos/1.json
  def destroy
    @patronaje_basico = PatronajeBasico.find(params[:id])
    @patronaje_basico.destroy

    respond_to do |format|
      format.html { redirect_to patronajes_basicos_url }
      format.json { head :no_content }
    end
  end
end
