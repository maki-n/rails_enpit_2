class HanabisController < ApplicationController
  before_action :set_hanabi, only: [:show, :edit, :update, :destroy]

  # GET /hanabis
  # GET /hanabis.json
  def index
    @hanabis = Hanabi.all
  end

  # GET /hanabis/1
  # GET /hanabis/1.json
  def show
  end

  # GET /hanabis/new
  def new
    @hanabi = Hanabi.new
  end

  # GET /hanabis/1/edit
  def edit
  end

  # POST /hanabis
  # POST /hanabis.json
  def create
    @hanabi = Hanabi.new(hanabi_params)

    respond_to do |format|
      if @hanabi.save
        format.html { redirect_to @hanabi, notice: 'Hanabi was successfully created.' }
        format.json { render :show, status: :created, location: @hanabi }
      else
        format.html { render :new }
        format.json { render json: @hanabi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hanabis/1
  # PATCH/PUT /hanabis/1.json
  def update
    respond_to do |format|
      if @hanabi.update(hanabi_params)
        format.html { redirect_to @hanabi, notice: 'Hanabi was successfully updated.' }
        format.json { render :show, status: :ok, location: @hanabi }
      else
        format.html { render :edit }
        format.json { render json: @hanabi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hanabis/1
  # DELETE /hanabis/1.json
  def destroy
    @hanabi.destroy
    respond_to do |format|
      format.html { redirect_to hanabis_url, notice: 'Hanabi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hanabi
      @hanabi = Hanabi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hanabi_params
      params.require(:hanabi).permit(:name, :data)
    end
end
