class ProjectApartmentTypesController < ApplicationController
  layout "applicationintranet"
  before_action :set_project_apartment_type, only: [:show, :edit, :update, :destroy]

  # GET /project_apartment_types
  # GET /project_apartment_types.json
  def index
    @project_apartment_types = ProjectApartmentType.all
  end

  # GET /project_apartment_types/1
  # GET /project_apartment_types/1.json
  def show
  end

  # GET /project_apartment_types/new
  def new
    @project_apartment_type = ProjectApartmentType.new
    @project_apartment_type.IsActive = true
  end

  # GET /project_apartment_types/1/edit
  def edit
  end

  # POST /project_apartment_types
  # POST /project_apartment_types.json
  def create
    @project_apartment_type = ProjectApartmentType.new(project_apartment_type_params)

    respond_to do |format|
      if @project_apartment_type.save
        format.html { redirect_to @project_apartment_type, notice: 'Project apartment type was successfully created.' }
        format.json { render :show, status: :created, location: @project_apartment_type }
      else
        format.html { render :new }
        format.json { render json: @project_apartment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_apartment_types/1
  # PATCH/PUT /project_apartment_types/1.json
  def update
    respond_to do |format|
      if @project_apartment_type.update(project_apartment_type_params)
        format.html { redirect_to @project_apartment_type, notice: 'Project apartment type was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_apartment_type }
      else
        format.html { render :edit }
        format.json { render json: @project_apartment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_apartment_types/1
  # DELETE /project_apartment_types/1.json
  def destroy
    @project_apartment_type.destroy
    respond_to do |format|
      format.html { redirect_to project_apartment_types_url, notice: 'Project apartment type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_apartment_type
      @project_apartment_type = ProjectApartmentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_apartment_type_params
      params.require(:project_apartment_type).permit(:project_id, :apartment_type_id, :Area, :Floor, :Quantity, :IsActive)
    end
end
