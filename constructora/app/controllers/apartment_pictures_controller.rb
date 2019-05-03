class ApartmentPicturesController < ApplicationController
  layout "applicationintranet"
  before_action :set_apartment_picture, only: [:show, :edit, :update, :destroy]

  # GET /apartment_pictures
  # GET /apartment_pictures.json
  def index
    @apartment_pictures = ApartmentPicture.all
  end

  # GET /apartment_pictures/1
  # GET /apartment_pictures/1.json
  def show
  end

  # GET /apartment_pictures/new
  def new
    @apartment_picture = ApartmentPicture.new
    @apartment_picture.IsActive = true
  end

  # GET /apartment_pictures/1/edit
  def edit
  end

  # POST /apartment_pictures
  # POST /apartment_pictures.json
  def create
    @apartment_picture = ApartmentPicture.new(apartment_picture_params)

    respond_to do |format|
      if @apartment_picture.save
        format.html { redirect_to @apartment_picture, notice: 'Imagen creada exitosamente.' }
        format.json { render :show, status: :created, location: @apartment_picture }
      else
        format.html { render :new }
        format.json { render json: @apartment_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartment_pictures/1
  # PATCH/PUT /apartment_pictures/1.json
  def update
    respond_to do |format|
      if @apartment_picture.update(apartment_picture_params)
        format.html { redirect_to @apartment_picture, notice: 'Imagen actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @apartment_picture }
      else
        format.html { render :edit }
        format.json { render json: @apartment_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartment_pictures/1
  # DELETE /apartment_pictures/1.json
  def destroy
    @apartment_picture.destroy
    respond_to do |format|
        if session[:s_project_apartment_id]
          format.html { redirect_to project_apartment_path(session[:s_project_apartment_id]), notice: 'Imagen eliminada exitosamente.' }
        else 
          format.html { redirect_to apartment_pictures_url, notice: 'Imagen eliminada exitosamente.' }
        end
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment_picture
      @apartment_picture = ApartmentPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apartment_picture_params
      params.require(:apartment_picture).permit(:project_apartment_id, :Picture, :Description, :IsActive)
    end
end
