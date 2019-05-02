class ProjectApartmentsController < ApplicationController
  layout "applicationintranet"
  before_action :set_project_apartment, only: [:show, :edit, :update, :destroy]

  # GET /project_apartments
  # GET /project_apartments.json
  def index
    @project_apartments = ProjectApartment.all
  end

  # GET /project_apartments/1
  # GET /project_apartments/1.json
  def show
  end

  # GET /project_apartments/new
  def new
    @project_apartment = ProjectApartment.new
  end

  # GET /project_apartments/1/edit
  def edit
  end

  # POST /project_apartments
  # POST /project_apartments.json
  def create
    @project_apartment = ProjectApartment.new(project_apartment_params)

    respond_to do |format|
      if @project_apartment.save
        format.html { redirect_to @project_apartment, notice: 'Project apartment was successfully created.' }
        format.json { render :show, status: :created, location: @project_apartment }
      else
        format.html { render :new }
        format.json { render json: @project_apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_apartments/1
  # PATCH/PUT /project_apartments/1.json
  def update
    respond_to do |format|
      if @project_apartment.update(project_apartment_params)
        #puts 'AQUI ESTA EL SEGUNDO ID'
        #puts @project_idDD
        #puts params
        format.html { redirect_to @project_apartment, notice: 'Project apartment was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_apartment }
      else
        format.html { render :edit }
        format.json { render json: @project_apartment.errors, status: :unprocessable_entity }
      end

    end
  end

  # DELETE /project_apartments/1
  # DELETE /project_apartments/1.json
  def destroy
    @project_apartment.destroy
    respond_to do |format|
      format.html { redirect_to project_apartments_url, notice: 'Project apartment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_apartment
      @project_apartment = ProjectApartment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_apartment_params
      params.require(:project_apartment).permit(:project_id, :project_apartment_type_id, :Number, :Description, :Picture, :Status)
    end
end
