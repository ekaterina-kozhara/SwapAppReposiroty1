class ServiceImagesController < ApplicationController
  before_action :set_service_image, only: [:show, :edit, :update, :destroy]

  # GET /service_images
  # GET /service_images.json
  def index
    @service_images = ServiceImage.all
  end

  # GET /service_images/1
  # GET /service_images/1.json
  def show
  end

  # GET /service_images/new
  def new
    @service_image = ServiceImage.new
  end

  # GET /service_images/1/edit
  def edit
  end

  # POST /service_images
  # POST /service_images.json
  def create
    @service_image = ServiceImage.new(service_image_params)

    respond_to do |format|
      if @service_image.save
        format.html { redirect_to @service_image, notice: 'Service image was successfully created.' }
        format.json { render :show, status: :created, location: @service_image }
      else
        format.html { render :new }
        format.json { render json: @service_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_images/1
  # PATCH/PUT /service_images/1.json
  def update
    respond_to do |format|
      if @service_image.update(service_image_params)
        format.html { redirect_to @service_image, notice: 'Service image was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_image }
      else
        format.html { render :edit }
        format.json { render json: @service_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_images/1
  # DELETE /service_images/1.json
  def destroy
    @service_image.destroy
    respond_to do |format|
      format.html { redirect_to service_images_url, notice: 'Service image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_image
      @service_image = ServiceImage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_image_params
      params.require(:service_image).permit(:service_id, :image)
    end
end
