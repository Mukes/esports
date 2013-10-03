class SubchurchesController < ApplicationController
  http_basic_authenticate_with name: "Mukes", password: "mukes", except: [:index, :show]
  before_action :set_subchurch, only: [:show, :edit, :update, :destroy]

  # GET /subchurches
  # GET /subchurches.json
  def index
    @subchurches = Subchurch.all
  end

  # GET /subchurches/1
  # GET /subchurches/1.json
  def show
  end

  # GET /subchurches/new
  def new
    @subchurch = Subchurch.new
  end

  # GET /subchurches/1/edit
  def edit
  end

  # POST /subchurches
  # POST /subchurches.json
  def create
    @subchurch = Subchurch.new(subchurch_params)

    respond_to do |format|
      if @subchurch.save
        format.html { redirect_to @subchurch, notice: 'Subchurch was successfully created.' }
        format.json { render action: 'show', status: :created, location: @subchurch }
      else
        format.html { render action: 'new' }
        format.json { render json: @subchurch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subchurches/1
  # PATCH/PUT /subchurches/1.json
  def update
    respond_to do |format|
      if @subchurch.update(subchurch_params)
        format.html { redirect_to @subchurch, notice: 'Subchurch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @subchurch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subchurches/1
  # DELETE /subchurches/1.json
  def destroy
    @subchurch.destroy
    respond_to do |format|
      format.html { redirect_to subchurches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subchurch
      @subchurch = Subchurch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subchurch_params
      params.require(:subchurch).permit(:subchurch_name, :subchurch_address, :subchurch_phone_no, :id_no)
    end
end
