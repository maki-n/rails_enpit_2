class JankenResultsController < ApplicationController
  before_action :set_janken_result, only: [:show, :edit, :update, :destroy]

  # GET /janken_results
  # GET /janken_results.json
  def index
    @janken_results = JankenResult.all
  end

  # GET /janken_results/1
  # GET /janken_results/1.json
  def show
  end

  # GET /janken_results/new
  def new
    @janken_result = JankenResult.new
  end

  # GET /janken_results/1/edit
  def edit
  end

  # POST /janken_results
  # POST /janken_results.json
  def create
    @janken_result = JankenResult.new(janken_result_params)

    respond_to do |format|
      if @janken_result.save
        format.html { redirect_to @janken_result, notice: 'Janken result was successfully created.' }
        format.json { render :show, status: :created, location: @janken_result }
      else
        format.html { render :new }
        format.json { render json: @janken_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /janken_results/1
  # PATCH/PUT /janken_results/1.json
  def update
    respond_to do |format|
      if @janken_result.update(janken_result_params)
        format.html { redirect_to @janken_result, notice: 'Janken result was successfully updated.' }
        format.json { render :show, status: :ok, location: @janken_result }
      else
        format.html { render :edit }
        format.json { render json: @janken_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /janken_results/1
  # DELETE /janken_results/1.json
  def destroy
    @janken_result.destroy
    respond_to do |format|
      format.html { redirect_to janken_results_url, notice: 'Janken result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_janken_result
      @janken_result = JankenResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def janken_result_params
      params.require(:janken_result).permit(:your_hand, :result)
    end
end
