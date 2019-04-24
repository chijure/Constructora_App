class ProjectApTypePricesController < ApplicationController
  layout "applicationintranet"
  before_action :set_project_ap_type_price, only: [:show, :edit, :update, :destroy]

  # GET /project_ap_type_prices
  # GET /project_ap_type_prices.json
  def index
    @project_ap_type_prices = ProjectApTypePrice.all
  end

  # GET /project_ap_type_prices/1
  # GET /project_ap_type_prices/1.json
  def show
  end

  # GET /project_ap_type_prices/new
  def new
    @project_ap_type_price = ProjectApTypePrice.new
    @project_ap_type_price.IsActive = true
  end

  # GET /project_ap_type_prices/1/edit
  def edit
  end

  # POST /project_ap_type_prices
  # POST /project_ap_type_prices.json
  def create
    @project_ap_type_price = ProjectApTypePrice.new(project_ap_type_price_params)

    respond_to do |format|
      if @project_ap_type_price.save
        format.html { redirect_to @project_ap_type_price, notice: 'Project ap type price was successfully created.' }
        format.json { render :show, status: :created, location: @project_ap_type_price }
      else
        format.html { render :new }
        format.json { render json: @project_ap_type_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_ap_type_prices/1
  # PATCH/PUT /project_ap_type_prices/1.json
  def update
    respond_to do |format|
      if @project_ap_type_price.update(project_ap_type_price_params)
        format.html { redirect_to @project_ap_type_price, notice: 'Project ap type price was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_ap_type_price }
      else
        format.html { render :edit }
        format.json { render json: @project_ap_type_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_ap_type_prices/1
  # DELETE /project_ap_type_prices/1.json
  def destroy
    @project_ap_type_price.destroy
    respond_to do |format|
      format.html { redirect_to project_ap_type_prices_url, notice: 'Project ap type price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_ap_type_price
      @project_ap_type_price = ProjectApTypePrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_ap_type_price_params
      params.require(:project_ap_type_price).permit(:project_apartment_type_id, :RegisterDate, :ValidFor, :PercentageDiscount, :Floor, :Price, :IsActive)
    end
end
