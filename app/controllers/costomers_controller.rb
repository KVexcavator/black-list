class CostomersController < ApplicationController
  before_action :set_costomer, only: [:show, :edit, :update, :destroy]

  # GET /costomers whitelist
  # GET /costomers.json
  def index
    @costomers = Costomer.frends
  end
  
  # GET /costomers blacklist
  def black
    @costomers = Costomer.refused
  end

  # GET /costomers/1
  # GET /costomers/1.json
  def show
  end

  # GET /costomers/new
  def new
    @costomer = Costomer.new
  end

  # GET /costomers/1/edit
  def edit
  end

  # POST /costomers
  # POST /costomers.json
  def create
    @costomer = Costomer.new(costomer_params)

    respond_to do |format|
      if @costomer.save
        format.html { redirect_to @costomer, notice: 'Costomer was successfully created.' }
        format.json { render :show, status: :created, location: @costomer }
      else
        format.html { render :new }
        format.json { render json: @costomer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costomers/1
  # PATCH/PUT /costomers/1.json
  def update
    respond_to do |format|
      if @costomer.update(costomer_params)
        format.html { redirect_to @costomer, notice: 'Costomer was successfully updated.' }
        format.json { render :show, status: :ok, location: @costomer }
      else
        format.html { render :edit }
        format.json { render json: @costomer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costomers/1
  # DELETE /costomers/1.json
  def destroy
    @costomer.destroy
    respond_to do |format|
      format.html { redirect_to costomers_url, notice: 'Costomer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costomer
      @costomer = Costomer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def costomer_params
      params.require(:costomer).permit(:name, :phone, :discription, :blacklist)
    end
end
