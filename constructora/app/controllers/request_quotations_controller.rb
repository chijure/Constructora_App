class RequestQuotationsController < ApplicationController
  layout "applicationintranet"
  before_action :set_request_quotation, only: [:show, :edit, :update, :destroy]

  # GET /request_quotations
  # GET /request_quotations.json
  def index
    @request_quotations = RequestQuotation.all
  end

  # GET /request_quotations/1
  # GET /request_quotations/1.json
  def show
  end

  # GET /request_quotations/new
  def new
    @request_quotation = RequestQuotation.new
  end

  # GET /request_quotations/1/edit
  def edit
  end

  # POST /request_quotations
  # POST /request_quotations.json
  def create
    @request_quotation = RequestQuotation.new(request_quotation_params)
    #@request_quotation.IdRequestQuotation = SecureRandom.uuid

    if @request_quotation.user_id == nil
      result = RequestQuotation.select('COUNT(*) as total, user_id').group('user_id').order('total asc')
      if result.length == 0
        @request_quotation.user_id = User.all.order(:Name)[0].id
      else
        @request_quotation.user_id = result[0].user_id
      end
    end

    respond_to do |format|
      if @request_quotation.save
        format.html { redirect_to @request_quotation, notice: 'Request quotation was successfully created.' }
        format.json { render :show, status: :created, location: @request_quotation }
      else
        format.html { render :new }
        format.json { render json: @request_quotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_quotations/1
  # PATCH/PUT /request_quotations/1.json
  def update
    puts 'ESTADOS INICIO'
    puts @request_quotation.Status 
    puts request_quotation_params[:Status]
    puts 'ESTADOS FIN'
    respond_to do |format|

      if @request_quotation.Status.to_s != request_quotation_params[:Status].to_s
        format.html { render :edit }
        @valerror = 'No se puede cambiar el estado a una solicitud ya cotizada.'
        #format.json { render json: 'No se puede cambiar de estado a una solicitud cotizada.', status: :unprocessable_entity }
        #format.html { redirect_to @request_quotation, notice: 'No se puede cambiar de estado a una solicitud cotizada.' }
        #format.json { render :show, status: :unprocessable_entity }
      elsif @request_quotation.update(request_quotation_params)
        puts 'DOS'
        format.html { redirect_to @request_quotation, notice: 'Request quotation was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_quotation }
      else
        puts 'TRES'
        format.html { render :edit }
        format.json { render json: @request_quotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_quotations/1
  # DELETE /request_quotations/1.json
  def destroy
    @request_quotation.destroy
    respond_to do |format|
      format.html { redirect_to request_quotations_url, notice: 'Request quotation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_quotation
      @request_quotation = RequestQuotation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_quotation_params
      params.require(:request_quotation).permit(:project_id, :user_id, :project_apartment_id, :IdentityNumber, :Name, :LastName, :Mail, :Phone, :RequestDate, :Status)
    end
end
