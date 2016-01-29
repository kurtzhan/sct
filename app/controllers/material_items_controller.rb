class MaterialItemsController < FrontendController
  before_action :set_material_item, only: [:show, :edit, :update, :destroy]

  # GET /material_items
  # GET /material_items.json
  def index
    @material_items = MaterialItem.all
  end

  # GET /material_items/1
  # GET /material_items/1.json
  def show
  end

  # GET /material_items/new
  def new
    @material_item = MaterialItem.new
  end

  # GET /material_items/1/edit
  def edit
  end

  # POST /material_items
  # POST /material_items.json
  def create
    @material_item = MaterialItem.new(material_item_params)

    respond_to do |format|
      if @material_item.save
        format.html { redirect_to @material_item, notice: 'Material item was successfully created.' }
        format.json { render :show, status: :created, location: @material_item }
      else
        format.html { render :new }
        format.json { render json: @material_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_items/1
  # PATCH/PUT /material_items/1.json
  def update
    respond_to do |format|
      if @material_item.update(material_item_params)
        format.html { redirect_to @material_item, notice: 'Material item was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_item }
      else
        format.html { render :edit }
        format.json { render json: @material_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_items/1
  # DELETE /material_items/1.json
  def destroy
    @material_item.destroy
    respond_to do |format|
      format.html { redirect_to material_items_url, notice: 'Material item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_item
      @material_item = MaterialItem.find_by_slug(params[:id])
      raise if params[:material_id] != @material_item.material.slug
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_item_params
      params.require(:material_item).permit(:name, :material_id, :description)
    end
end
