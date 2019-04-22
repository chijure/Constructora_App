class ApartmentBookingsController < ApplicationController
  before_action :set_apartment_booking, only: [:show, :edit, :update, :destroy]

  # GET /apartment_bookings
  # GET /apartment_bookings.json
  def index
    @apartment_bookings = ApartmentBooking.all
  end

  # GET /apartment_bookings/1
  # GET /apartment_bookings/1.json
  def show
  end

  # GET /apartment_bookings/new
  def new
    @apartment_booking = ApartmentBooking.new
  end

  # GET /apartment_bookings/1/edit
  def edit
  end

  # POST /apartment_bookings
  # POST /apartment_bookings.json
  def create
    @apartment_booking = ApartmentBooking.new(apartment_booking_params)

    respond_to do |format|
      if @apartment_booking.save
        format.html { redirect_to @apartment_booking, notice: 'Apartment booking was successfully created.' }
        format.json { render :show, status: :created, location: @apartment_booking }
      else
        format.html { render :new }
        format.json { render json: @apartment_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartment_bookings/1
  # PATCH/PUT /apartment_bookings/1.json
  def update
    respond_to do |format|
      if @apartment_booking.update(apartment_booking_params)
        format.html { redirect_to @apartment_booking, notice: 'Apartment booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @apartment_booking }
      else
        format.html { render :edit }
        format.json { render json: @apartment_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartment_bookings/1
  # DELETE /apartment_bookings/1.json
  def destroy
    @apartment_booking.destroy
    respond_to do |format|
      format.html { redirect_to apartment_bookings_url, notice: 'Apartment booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment_booking
      @apartment_booking = ApartmentBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apartment_booking_params
      params.require(:apartment_booking).permit(:IdApartmentBooking, :IdQuotation, :IdClient, :IdBank, :BookingDate, :BookPrice, :VoucherNumber, :IsActive)
    end
end
