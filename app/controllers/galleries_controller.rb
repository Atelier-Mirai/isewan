class GalleriesController < ApplicationController
  before_action :set_gallery, only: %i[ show edit update destroy ]

  # GET /galleries or /galleries.json
  def index
    @type = params[:type].capitalize

    @galleries = Gallery.where(type: @type).displayed

    @gallery = @type.to_s.constantize.new
  end

  # GET /galleries/new
  def new
    @gallery = Gallery.new
  end

  # POST /galleries or /galleries.json
  def create
    klass = params[:type].capitalize.to_s.constantize
    @gallery = klass.new(gallery_params)

    if @gallery.save
      redirect_to polymorphic_path([@gallery.class]), notice: "Gallery was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /galleries/1 or /galleries/1.json
  def update
    if @gallery.update(gallery_params)
      redirect_to polymorphic_path([@gallery.class]), notice: "Gallery was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /galleries/1 or /galleries/1.json
  def destroy
    klass = @gallery.class
    @gallery.destroy
    redirect_to polymorphic_path([klass]), notice: "Gallery was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gallery_params
      params.require(params[:type]).permit(:type, :title, :url, :display, :image)
    end
end
