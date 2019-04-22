class ApartmentTypePricesController < ApplicationController
  before_action :set_apartment_type_price, only: [:show, :edit, :update, :destroy]

  # GET /apartment_type_prices
  # GET /apartment_type_prices.json
  def index
    @apartment_type_prices = ApartmentTypePrice.all
  end

  # GET /apartment_type_prices/1
  # GET /apartment_type_prices/1.json
  def show
  end

  # GET /apartment_type_prices/new
  def new
    @apartment_type_price = ApartmentTypePrice.new
  end

  # GET /apartment_type_prices/1/edit
  def edit
  end

  # POST /apartment_type_prices
  # POST /apartment_type_prices.json
  def create
    @apartment_type_price = ApartmentTypePrice.new(apartment_type_price_params)
    #@apartment_type_price.IdApartmentTypePrice = SecureRandom.uuid
    
    respond_to do |format|
      if @apartment_type_price.save
        format.html { redirect_to @apartment_type_price, notice: 'Apartment type price was successfully created.' }
        format.json { render :show, status: :created, location: @apartment_type_price }
      else
        format.html { render :new }
        format.json { render json: @apartment_type_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartment_type_prices/1
  # PATCH/PUT /apartment_type_prices/1.json
  def update
    respond_to do |format|
      if @apartment_type_price.update(apartment_type_price_params)
        format.html { redirect_to @apartment_type_price, notice: 'Apartment type price was successfully updated.' }
        format.json { render :show, status: :ok, location: @apartment_type_price }
      else
        format.html { render :edit }
        format.json { render json: @apartment_type_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartment_type_prices/1
  # DELETE /apartment_type_prices/1.json
  def destroy
    @apartment_type_price.destroy
    respond_to do |format|
      format.html { redirect_to apartment_type_prices_url, notice: 'Apartment type price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment_type_price
      @apartment_type_price = ApartmentTypePrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apartment_type_price_params
      params.require(:apartment_type_price).permit(:apartment_type_id, :RegisterDate, :ValidFor, :PercentajeDiscount, :Floor, :FinalPrice, :IsActive)
    end
end
