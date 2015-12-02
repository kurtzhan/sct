class CategoryPicturesController < ApplicationController
  before_action :set_category_picture, only: [:show, :edit, :update, :destroy]

  # GET /category_pictures
  # GET /category_pictures.json
  def index
    @category_pictures = CategoryPicture.all
  end

  # GET /category_pictures/1
  # GET /category_pictures/1.json
  def show
  end

  # GET /category_pictures/new
  def new
    @category_picture = CategoryPicture.new
  end

  # GET /category_pictures/1/edit
  def edit
  end

  # POST /category_pictures
  # POST /category_pictures.json
  def create
    @category_picture = CategoryPicture.new(category_picture_params)

    respond_to do |format|
      if @category_picture.save
        format.html { redirect_to @category_picture, notice: 'Category picture was successfully created.' }
        format.json { render :show, status: :created, location: @category_picture }
      else
        format.html { render :new }
        format.json { render json: @category_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_pictures/1
  # PATCH/PUT /category_pictures/1.json
  def update
    respond_to do |format|
      if @category_picture.update(category_picture_params)
        format.html { redirect_to @category_picture, notice: 'Category picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_picture }
      else
        format.html { render :edit }
        format.json { render json: @category_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_pictures/1
  # DELETE /category_pictures/1.json
  def destroy
    @category_picture.destroy
    respond_to do |format|
      format.html { redirect_to category_pictures_url, notice: 'Category picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_picture
      @category_picture = CategoryPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_picture_params
      params.require(:category_picture).permit(:category_id, :picture_id)
    end
end
