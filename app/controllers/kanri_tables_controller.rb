class KanriTablesController < ApplicationController
  before_action :set_kanri_table, only: [:show, :edit, :update, :destroy]

  # GET /kanri_tables
  # GET /kanri_tables.json
  def index
    @kanri_tables = KanriTable.all
  end

  # GET /kanri_tables/1
  # GET /kanri_tables/1.json
  def show
  end

  # GET /kanri_tables/new
  def new
    @kanri_table = KanriTable.new
  end

  # GET /kanri_tables/1/edit
  def edit
  end

  # POST /kanri_tables
  # POST /kanri_tables.json
  def create
    @kanri_table = KanriTable.new(kanri_table_params)

    respond_to do |format|
      if @kanri_table.save
        format.html { redirect_to @kanri_table, notice: 'Kanri table was successfully created.' }
        format.json { render :show, status: :created, location: @kanri_table }
      else
        format.html { render :new }
        format.json { render json: @kanri_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kanri_tables/1
  # PATCH/PUT /kanri_tables/1.json
  def update
    respond_to do |format|
      if @kanri_table.update(kanri_table_params)
        format.html { redirect_to @kanri_table, notice: 'Kanri table was successfully updated.' }
        format.json { render :show, status: :ok, location: @kanri_table }
      else
        format.html { render :edit }
        format.json { render json: @kanri_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kanri_tables/1
  # DELETE /kanri_tables/1.json
  def destroy
    @kanri_table.destroy
    respond_to do |format|
      format.html { redirect_to kanri_tables_url, notice: 'Kanri table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kanri_table
      @kanri_table = KanriTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kanri_table_params
      params.require(:kanri_table).permit(:user_id, :password, :user_name, :mail_address, :TEL)
    end
end
