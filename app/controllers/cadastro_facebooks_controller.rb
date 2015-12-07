class CadastroFacebooksController < ApplicationController
  before_action :set_cadastro_facebook, only: [:show, :edit, :update, :destroy]

  # GET /cadastro_facebooks
  # GET /cadastro_facebooks.json
  def index
    @cadastro_facebooks = CadastroFacebook.all
  end

  # GET /cadastro_facebooks/1
  # GET /cadastro_facebooks/1.json
  def show
  end

  # GET /cadastro_facebooks/new
  def new
    @cadastro_facebook = CadastroFacebook.new
  end

  # GET /cadastro_facebooks/1/edit
  def edit
  end

  # POST /cadastro_facebooks
  # POST /cadastro_facebooks.json
  def create
    @cadastro_facebook = CadastroFacebook.new(cadastro_facebook_params)

    respond_to do |format|
      if @cadastro_facebook.save
        format.html { redirect_to @cadastro_facebook, notice: 'Cadastro facebook was successfully created.' }
        format.json { render :show, status: :created, location: @cadastro_facebook }
      else
        format.html { render :new }
        format.json { render json: @cadastro_facebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastro_facebooks/1
  # PATCH/PUT /cadastro_facebooks/1.json
  def update
    respond_to do |format|
      if @cadastro_facebook.update(cadastro_facebook_params)
        format.html { redirect_to @cadastro_facebook, notice: 'Cadastro facebook was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadastro_facebook }
      else
        format.html { render :edit }
        format.json { render json: @cadastro_facebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastro_facebooks/1
  # DELETE /cadastro_facebooks/1.json
  def destroy
    @cadastro_facebook.destroy
    respond_to do |format|
      format.html { redirect_to cadastro_facebooks_url, notice: 'Cadastro facebook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro_facebook
      @cadastro_facebook = CadastroFacebook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_facebook_params
      params.require(:cadastro_facebook).permit(:email, :senha)
    end
end
