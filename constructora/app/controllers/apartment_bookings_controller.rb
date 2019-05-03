class ApartmentBookingsController < ApplicationController
  layout "applicationintranet"
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
    @apartment_booking.IsActive = true
  end

  # GET /apartment_bookings/newfromquotation/1
  def newfromquotation
    @apartment_booking = ApartmentBooking.new
    @apartment_booking.IsActive = true

    quotation = Quotation.find(params[:id])

      if quotation.Status != 0
        respond_to do |format|
          format.html { redirect_to quotations_url, notice: 'La cotización ya tiene una reserva asociada o esta rechazada.' }
          format.json { head :no_content }
        end
      else

        quotation.Status = 1
        quotation.save

        @apartment_booking.quotation_id = quotation.id
        @apartment_booking.client_id = quotation.client_id

        render "apartment_bookings/new"
      end
  end  

  # GET /apartment_bookings/1/edit
  def edit
  end

  # POST /apartment_bookings
  # POST /apartment_bookings.json
  def create
    @apartment_booking = ApartmentBooking.new(apartment_booking_params)
    #@apartment_booking.IdApartmentBooking = SecureRandom.uuid
    
    respond_to do |format|
      if @apartment_booking.save

        if @apartment_booking.quotation_id != nil
          project_apartment_id = Quotation.joins(:request_quotation).select("quotations.id as q_id, request_quotations.project_apartment_id as rq_project_apartment_id").where("q_id = " + @apartment_booking.quotation_id.to_s).collect {|e| [e.rq_project_apartment_id]}[0]

          projectapartment = ProjectApartment.find(project_apartment_id)[0];
          projectapartment.Status = 1
          projectapartment.save
        end
                
        format.html { redirect_to @apartment_booking, notice: 'Reserva creada exitosamente.' }
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
        format.html { redirect_to @apartment_booking, notice: 'Reserva actualizada exitosamente.' }
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
    
    quotation = Quotation.find(@apartment_booking.quotation_id)
    quotation.Status = 0
    quotation.save

    @apartment_booking.destroy
    respond_to do |format|
      format.html { redirect_to apartment_bookings_url, notice: 'Reserva eliminada exitosamente.' }
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
      params.require(:apartment_booking).permit(:quotation_id, :client_id, :bank_id, :BookingDate, :BookPrice, :VoucherNumber, :IsActive)
    end
end
