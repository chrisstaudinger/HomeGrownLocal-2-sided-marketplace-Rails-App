class WatchItemsController < ApplicationController
  
  
  before_action :set_watch_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /watch_items
  # GET /watch_items.json
  def index
    @watch_items = WatchItem.all
  end

  # GET /watch_items/1
  # GET /watch_items/1.json
  def show
  end

  # GET /watch_items/new
  def new
    @watch_item = WatchItem.new
  end

  # GET /watch_items/1/edit
  def edit
  end

  # POST /watch_items
  # POST /watch_items.json
  def create
    @watch_item = WatchItem.new(watch_item_params)
    @watch_item.watchlist = current_user.watchlist
    respond_to do |format|
      if @watch_item.save!
        format.html { redirect_to "/watchlists/#{current_user.watchlist.id}", notice: 'Watch item was successfully created.' }
        format.json { render :show, status: :created, location: @watch_item }
      else
        format.html { render :new }
        format.json { render json: @watch_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /watch_items/1
  # PATCH/PUT /watch_items/1.json
  def update
    authorize @watchlist
    authorize @watchitem
    respond_to do |format|
      if @watch_item.update(watch_item_params)
        format.html { redirect_to @watch_item, notice: 'Watch item was successfully updated.' }
        format.json { render :show, status: :ok, location: @watch_item }
      else
        format.html { render :edit }
        format.json { render json: @watch_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watch_items/1
  # DELETE /watch_items/1.json
  def destroy
    # authorize @watchlist
    # authorize @watchitem
    @watch_item.destroy
    respond_to do |format|
      format.html { redirect_to "/watchlists/#{current_user.watchlist.id}", notice: 'Watch item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watch_item
      @watch_item = WatchItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def watch_item_params
      params.require(:watch_item).permit(:item_id, :watchlist_id, :watch_item_item)
    end
end
