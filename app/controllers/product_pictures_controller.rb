class ProductPicturesController < ApplicationController
  before_action :set_product_picture, only: [:show, :edit, :update, :destroy]

  # GET /product_pictures
  # GET /product_pictures.json
  def index
    @product_pictures = ProductPicture.all
  end

  # GET /product_pictures/1
  # GET /product_pictures/1.json
  def show
  end

  # GET /product_pictures/new
  def new
    @product_picture = ProductPicture.new
  end

  # GET /product_pictures/1/edit
  def edit
  end

  # POST /product_pictures
  # POST /product_pictures.json
  def create
    @product_picture = ProductPicture.new(product_picture_params)

    respond_to do |format|
      if @product_picture.save
        format.html { redirect_to @product_picture, notice: 'Product picture was successfully created.' }
        format.json { render :show, status: :created, location: @product_picture }
      else
        format.html { render :new }
        format.json { render json: @product_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_pictures/1
  # PATCH/PUT /product_pictures/1.json
  def update
    respond_to do |format|
      if @product_picture.update(product_picture_params)
        format.html { redirect_to @product_picture, notice: 'Product picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_picture }
      else
        format.html { render :edit }
        format.json { render json: @product_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_pictures/1
  # DELETE /product_pictures/1.json
  def destroy
    @product_picture.destroy
    respond_to do |format|
      format.html { redirect_to product_pictures_url, notice: 'Product picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_picture
      @product_picture = ProductPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_picture_params
      params.require(:product_picture).permit(:product_id, :picture_id)
    end
end
