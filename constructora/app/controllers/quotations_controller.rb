class QuotationsController < ApplicationController
  layout "applicationintranet"
  before_action :set_quotation, only: [:show, :edit, :update, :destroy]

  # GET /quotations
  # GET /quotations.json
  def index
    @quotations = Quotation.all
  end

  # GET /quotations/1
  # GET /quotations/1.json
  def show
  end

  # GET /quotations/new
  def new
    @quotation = Quotation.new
    @quotation.Status = 0
  end

  # GET /quotations/newfromrequest/1
  def newfromrequest
    @quotation = Quotation.new
    @quotation.Status = 0
    
    begin
      #Setting up client
      request_quotation = RequestQuotation.find(params[:id])

      if request_quotation.Status != 0
        respond_to do |format|
          format.html { redirect_to request_quotations_url, notice: 'La solicitud ya tiene una cotización o esta rechazada.' }
          format.json { head :no_content }
        end
      else
        
        @quotation.request_quotation_id = request_quotation.id

        client = Client.find_by IdentityNumber: request_quotation.IdentityNumber
        if client == nil
          client = Client.new
          client.IdentityNumber = request_quotation.IdentityNumber
          client.Name = request_quotation.Name
          client.LastName = request_quotation.LastName
          client.Mail = request_quotation.Mail
          client.Phone = request_quotation.Phone
          client.IsActive = true
          client.save
        end
        
        @quotation.client_id = client.id

        #query_apartment_type = ProjectApartment.joins(project_apartment_type: :project_ap_type_price).select('project_apartments.id as pa_id, project_apartment_type.Area as pat_Area, project_apartment_type.Floor as pat_Floor, project_ap_type_prices.PercentajeDiscount as patp_PercentajeDiscount, project_ap_type_prices.Price as patp_Price').where('pa_id = ' + request_quotation.project_apartment_id.to_s)[0]
        
        #Computing Apartment Price
        ap_discount = 0
        query_apartment = ProjectApartment.joins(:project, :project_apartment_type).select('projects.price as p_Price, project_apartments.id as pa_id, project_apartment_types.id as pat_project_apartment_type_id, project_apartment_types.Area as pat_Area, project_apartment_types.Floor as pat_Floor').where('pa_id = ' + request_quotation.project_apartment_id.to_s)[0]
        query_apartment_discount = ProjectApTypePrice.where('IsActive = 1 and project_apartment_type_id = ' + query_apartment.pat_project_apartment_type_id.to_s)        
        query_apartment_discount.count
        
        ap_price = query_apartment.p_Price * query_apartment.pat_Area
        if query_apartment_discount.count > 0
          ap_discount = (ap_price / 100) * query_apartment_discount[0].PercentageDiscount
        end

        ap_floor_discount = (ap_price / 100) * (query_apartment.pat_Floor - 1)

        @quotation.Price = ap_price - ap_discount - ap_floor_discount

        render "quotations/new"
      end

    rescue ActiveRecord::RecordNotFound => e
      request_quotation = nil
    end    
  end

  # GET /quotations/1/edit
  def edit
  end

  # POST /quotations
  # POST /quotations.json
  def create
    @quotation = Quotation.new(quotation_params)

    if @quotation.request_quotation_id != nil
      request_quotation = RequestQuotation.find(@quotation.request_quotation_id)
      request_quotation.Status = 1
      request_quotation.save
    end

    #@quotation.IdQuotation = SecureRandom.uuid

    respond_to do |format|
      if @quotation.save
        format.html { redirect_to @quotation, notice: 'Quotation was successfully created.' }
        format.json { render :show, status: :created, location: @quotation }
      else
        format.html { render :new }
        format.json { render json: @quotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotations/1
  # PATCH/PUT /quotations/1.json
  def update
    respond_to do |format|
      if @quotation.update(quotation_params)
        format.html { redirect_to @quotation, notice: 'Quotation was successfully updated.' }
        format.json { render :show, status: :ok, location: @quotation }
      else
        format.html { render :edit }
        format.json { render json: @quotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotations/1
  # DELETE /quotations/1.json
  def destroy

    request_quotation = RequestQuotation.find(@quotation.request_quotation_id)
    request_quotation.Status = 0
    request_quotation.save

    @quotation.destroy

    respond_to do |format|
      format.html { redirect_to quotations_url, notice: 'Quotation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quotation
      @quotation = Quotation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quotation_params
      params.require(:quotation).permit(:request_quotation_id, :client_id, :QuotationDate, :Price, :ValidFor, :Status)
    end
end
