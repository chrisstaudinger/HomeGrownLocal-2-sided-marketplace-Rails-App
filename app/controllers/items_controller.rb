class ItemsController < ApplicationController
  
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  protect_from_forgery prepend: true

  before_action :set_item, only: [:show, :edit, :update, :destroy]
  

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  def search
    params.permit(:location_field, :item_name, :item_category_id)
    @test1 = params[:item_name]
    @test2 = params[:location_field]
    @test3 = item_params[:item_category_id]
    Item.reindex
    @result = Item.search(params[:item_name], where: {item_category_id: item_params[:item_category_id]})
    @after_location = []
    @result.each do |item|
      if item.user.location.suburb == params[:location_field]
        @after_location.push(item)
      end
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id])
  end

  # GET /items/new
  def new
    @item = Item.new
    @user = current_user
    
    @measurement_options = []
    Measurement.all.each do |measurement|
      @measurement_options << measurement.unit
    end

    @category_options = []
    ItemCategory.all.each do |category|
      @category_options << category.name
    end
  end

  # GET /items/1/edit
  def edit
    authorize @item
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    authorize @item
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    authorize @item
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:item_category_id, :user_id, :name, :description, :measurement_id, :price, :quantity, :image)
    end
end
