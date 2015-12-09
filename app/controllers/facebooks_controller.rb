class FacebooksController < ApplicationController
  before_action :set_facebook, only: [:show, :edit, :update, :destroy]

  # GET /facebooks
  # GET /facebooks.json
  def index
    @facebooks = Facebook.all
  end

  # GET /facebooks/1
  # GET /facebooks/1.json
  def show
  end

  # GET /facebooks/new
  def new
    @facebook = Facebook.new
  end

  # GET /facebooks/1/edit
  def edit
  end

  # POST /facebooks
  # POST /facebooks.json
  def create
    @facebook = Facebook.new(facebook_params)

    respond_to do |format|
      if @facebook.save
        format.html { redirect_to @facebook, notice: 'Facebook was successfully created.' }
        format.json { render :show, status: :created, location: @facebook }
      else
        format.html { render :new }
        format.json { render json: @facebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facebooks/1
  # PATCH/PUT /facebooks/1.json
  def update
    respond_to do |format|
      if @facebook.update(facebook_params)
        format.html { redirect_to @facebook, notice: 'Facebook was successfully updated.' }
        format.json { render :show, status: :ok, location: @facebook }
      else
        format.html { render :edit }
        format.json { render json: @facebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facebooks/1
  # DELETE /facebooks/1.json
  def destroy
    @facebook.destroy
    respond_to do |format|
      format.html { redirect_to facebooks_url, notice: 'Facebook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facebook
      @facebook = Facebook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facebook_params
      params.require(:facebook).permit(:email, :senha)
    end
end
