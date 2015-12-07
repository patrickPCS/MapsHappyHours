class CadastroComerciosController < ApplicationController
  before_action :set_cadastro_comercio, only: [:show, :edit, :update, :destroy]

  # GET /cadastro_comercios
  # GET /cadastro_comercios.json
  def index
    @cadastro_comercios = CadastroComercio.all
  end

  # GET /cadastro_comercios/1
  # GET /cadastro_comercios/1.json
  def show
  end

  # GET /cadastro_comercios/new
  def new
    @cadastro_comercio = CadastroComercio.new
  end

  # GET /cadastro_comercios/1/edit
  def edit
  end

  # POST /cadastro_comercios
  # POST /cadastro_comercios.json
  def create
    @cadastro_comercio = CadastroComercio.new(cadastro_comercio_params)

    respond_to do |format|
      if @cadastro_comercio.save
        format.html { redirect_to @cadastro_comercio, notice: 'Cadastro comercio was successfully created.' }
        format.json { render :show, status: :created, location: @cadastro_comercio }
      else
        format.html { render :new }
        format.json { render json: @cadastro_comercio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastro_comercios/1
  # PATCH/PUT /cadastro_comercios/1.json
  def update
    respond_to do |format|
      if @cadastro_comercio.update(cadastro_comercio_params)
        format.html { redirect_to @cadastro_comercio, notice: 'Cadastro comercio was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadastro_comercio }
      else
        format.html { render :edit }
        format.json { render json: @cadastro_comercio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastro_comercios/1
  # DELETE /cadastro_comercios/1.json
  def destroy
    @cadastro_comercio.destroy
    respond_to do |format|
      format.html { redirect_to cadastro_comercios_url, notice: 'Cadastro comercio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro_comercio
      @cadastro_comercio = CadastroComercio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_comercio_params
      params.require(:cadastro_comercio).permit(:nome, :tipo, :endereco, :telefone, :avaliacao)
    end
end
