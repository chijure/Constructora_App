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
    respond_to do |format|
      if @request_quotation.update(request_quotation_params)
        format.html { redirect_to @request_quotation, notice: 'Request quotation was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_quotation }
      else
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
      params.require(:request_quotation).permit(:project_id, :user_id, :IdentityNumber, :Name, :LastName, :Mail, :Phone, :RequestDate, :Status)
    end
end
