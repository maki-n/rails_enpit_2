class WordbooksController < ApplicationController
  before_action :set_wordbook, only: [:show, :edit, :update, :destroy]

  # GET /wordbooks
  # GET /wordbooks.json
  def index
  # @wordbooks = Wordbook.all
    @wordbooks = Wordbook.search(params[:search])
  end
 
  # GET /wordbooks/1
  # GET /wordbooks/1.json
  def show
  end

  # GET /wordbooks/new
  def new
    @wordbook = Wordbook.new
  end

  # GET /wordbooks/1/edit
  def edit
  end

  # POST /wordbooks
  # POST /wordbooks.json
  def create
    @wordbook = Wordbook.new(wordbook_params)

    respond_to do |format|
      if @wordbook.save
        format.html { redirect_to @wordbook, notice: 'Wordbook was successfully created.' }
        format.json { render :show, status: :created, location: @wordbook }
      else
        format.html { render :new }
        format.json { render json: @wordbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wordbooks/1
  # PATCH/PUT /wordbooks/1.json
  def update
    respond_to do |format|
      if @wordbook.update(wordbook_params)
        format.html { redirect_to @wordbook, notice: 'Wordbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @wordbook }
      else
        format.html { render :edit }
        format.json { render json: @wordbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wordbooks/1
  # DELETE /wordbooks/1.json
  def destroy
    @wordbook.destroy
    respond_to do |format|
      format.html { redirect_to wordbooks_url, notice: 'Wordbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wordbook
      @wordbook = Wordbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wordbook_params
      params.require(:wordbook).permit(:japanese, :english)
    end
end
