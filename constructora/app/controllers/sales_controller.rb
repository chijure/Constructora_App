class SalesController < ApplicationController
  layout "applicationintranet"
  before_action :set_sale, only: [:show, :edit, :update, :destroy]

  # GET /sales
  # GET /sales.json
  def index
    @sales = Sale.all
  end

  # GET /sales/1
  # GET /sales/1.json
  def show
  end

  # GET /sales/new
  def new
    @sale = Sale.new
  end

  # GET /apartment_bookings/newfromquotation/1
  def newfromquotation
    @sale = Sale.new

#    query = ApartmentBooking.joins(quotation: :request_quotation).select("apartment_bookings.id as ab_id, apartment_bookings.bank_id as ab_bank_id, request_quotations.project_apartment_id as rq_project_apartment_id").where("ab_id = " + params[:id].to_s)
#    @sale.project_apartment_id = query[0].rq_project_apartment_id
#    @sale.apartment_booking_id = query[0].ab_id
#    @sale.bank_id = query[0].ab_bank_id
    query = Quotation.joins(:request_quotation).select('quotations.id as q_id, quotations.Price as q_Price, request_quotations.project_apartment_id as rq_project_apartment_id').where("q_id = " + params[:id].to_s)[0]


    querybooking = ApartmentBooking.where('quotation_id = ' + query.q_id.to_s)

    valuetodiscount = 0
    querybooking.each do |bookingitem|
      valuetodiscount = valuetodiscount + bookingitem.BookPrice
    end

    @sale.project_apartment_id = query.rq_project_apartment_id
    @sale.quotation_id = query.q_id
    @sale.CashAmount = query.q_Price - valuetodiscount

    #puts 'PRECIO'
    #puts query.q_Price
    #puts valuetodiscount
    #puts @pendingtopay

    render "sales/new"
  end  

  # GET /sales/1/edit
  def edit
  end

  # POST /sales
  # POST /sales.json
  def create
    @sale = Sale.new(sale_params)
    @sale.IsActive = true

    respond_to do |format|
      if @sale.save

        if @sale.project_apartment_id != nil
          projectapartment = ProjectApartment.find(@sale.project_apartment_id)

          projectapartment.Status = 2
          projectapartment.save
        end


        format.html { redirect_to @sale, notice: 'Sale was successfully created.' }
        format.json { render :show, status: :created, location: @sale }
      else
        format.html { render :new }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to @sale, notice: 'Sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale }
      else
        format.html { render :edit }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_params
      params.require(:sale).permit(:project_apartment_id, :quotation_id, :bank_id, :SaleDate, :PaymentType, :CashAmount, :FinancedAmount, :Voucher, :IsActive)
    end
end