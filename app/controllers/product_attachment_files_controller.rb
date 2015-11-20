class ProductAttachmentFilesController < ApplicationController
  before_action :set_product_attachment_file, only: [:show, :edit, :update, :destroy]

  # GET /product_attachment_files
  # GET /product_attachment_files.json
  def index
    @product_attachment_files = ProductAttachmentFile.all
  end

  # GET /product_attachment_files/1
  # GET /product_attachment_files/1.json
  def show
  end

  # GET /product_attachment_files/new
  def new
    @product_attachment_file = ProductAttachmentFile.new
  end

  # GET /product_attachment_files/1/edit
  def edit
  end

  # POST /product_attachment_files
  # POST /product_attachment_files.json
  def create
    @product_attachment_file = ProductAttachmentFile.new(product_attachment_file_params)

    respond_to do |format|
      if @product_attachment_file.save
        format.html { redirect_to @product_attachment_file, notice: 'Product attachment file was successfully created.' }
        format.json { render :show, status: :created, location: @product_attachment_file }
      else
        format.html { render :new }
        format.json { render json: @product_attachment_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_attachment_files/1
  # PATCH/PUT /product_attachment_files/1.json
  def update
    respond_to do |format|
      if @product_attachment_file.update(product_attachment_file_params)
        format.html { redirect_to @product_attachment_file, notice: 'Product attachment file was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_attachment_file }
      else
        format.html { render :edit }
        format.json { render json: @product_attachment_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_attachment_files/1
  # DELETE /product_attachment_files/1.json
  def destroy
    @product_attachment_file.destroy
    respond_to do |format|
      format.html { redirect_to product_attachment_files_url, notice: 'Product attachment file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_attachment_file
      @product_attachment_file = ProductAttachmentFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_attachment_file_params
      params.require(:product_attachment_file).permit(:product_id, :attachment_file_id)
    end
end
