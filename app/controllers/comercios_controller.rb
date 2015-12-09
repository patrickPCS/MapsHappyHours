class ComerciosController < ApplicationController
  before_action :set_comercio, only: [:show, :edit, :update, :destroy]

  # GET /comercios
  # GET /comercios.json
  def index
    @comercios = Comercio.all
  end

  # GET /comercios/1
  # GET /comercios/1.json
  def show
  end

  # GET /comercios/new
  def new
    @comercio = Comercio.new
  end

  # GET /comercios/1/edit
  def edit
  end

  # POST /comercios
  # POST /comercios.json
  def create
    @comercio = Comercio.new(comercio_params)

    respond_to do |format|
      if @comercio.save
        format.html { redirect_to @comercio, notice: 'Comercio was successfully created.' }
        format.json { render :show, status: :created, location: @comercio }
      else
        format.html { render :new }
        format.json { render json: @comercio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comercios/1
  # PATCH/PUT /comercios/1.json
  def update
    respond_to do |format|
      if @comercio.update(comercio_params)
        format.html { redirect_to @comercio, notice: 'Comercio was successfully updated.' }
        format.json { render :show, status: :ok, location: @comercio }
      else
        format.html { render :edit }
        format.json { render json: @comercio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comercios/1
  # DELETE /comercios/1.json
  def destroy
    @comercio.destroy
    respond_to do |format|
      format.html { redirect_to comercios_url, notice: 'Comercio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comercio
      @comercio = Comercio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comercio_params
      params.require(:comercio).permit(:nome, :endereco, :tipo, :tefefone)
    end
end
