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
    item_length = params[:item_name].length
    location_length = params[:location_field].length
    category_length = item_params[:item_category_id].length
    @test1 = item_length
    @test2 = location_length
    @test3 = category_length
    item_key = false
    location = false
    category = false
    if item_length > 0
      item_key = true
    end
    if location_length > 0
      location = true
    end
    if category_length > 0
      category = true
    end
    # item_name? = if_empty(params[:item_name])
    # location? = if_empty(params[:location])
    # category? = if_empty(params[:item_category_id])
    after_location = []
    Item.reindex
    #full query
    if(item_key && category && location)
      @results = Item.search(params[:item_name], where: {item_category_id: item_params[:item_category_id]})
      @results.each do |item|
        if item.user.user_location == params[:location_field]
          after_location.push(item)
        end
      end
      @results = after_location
    ##partial query
    elsif(category && location)
      @results = Item.search(where: {item_category_id: item_params[:item_category_id]})
      @results.each do |item|
        if item.user.user_location == params[:location_field]
          after_location.push(item)
        end
      end
      @results = after_location
    elsif(category && item_key)
      @results = Item.search(params[:item_name], where: {item_category_id: item_params[:item_category_id]})
    elsif(item_key && location)
      @results = Item.search(params[:item_name])
      @results.each do |item|
        if item.user.user_location == params[:location_field]
          after_location.push(item)
        end
      end
      @results = after_location
    elsif(item_key)
      @results = Item.search(params[:item_name])
    elsif(location)
      @results = Item.all
      @results.each do |item|
        if item.user.user_location == params[:location_field]
          after_location.push(item)
        end
      end
      @results = after_location
    elsif(category)
      @results = Item.where(item_category_id: item_params[:item_category_id])
    else
      redirect_to '/'
    end
  end

  def fresh
    @results = Item.all.last(9)
  end
  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id])
    @watch_item = WatchItem.new
    @watch_item.item = @item
    if user_signed_in?
      watchlist = WatchItem.search( where: {item_id: @item.id, watchlist_id: current_user.watchlist.id})
      @watchlisted = watchlist.length
      @watchlist_item = watchlist[0]
    else
      @watchlisted = 0
    end
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
        # Tell the UserMailer to send a welcome email after save
        UserMailer.with(email: "siapnostaudinger@gmail.com").welcome_email.deliver_now
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
