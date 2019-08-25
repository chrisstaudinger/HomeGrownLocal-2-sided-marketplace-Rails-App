class WatchlistsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_watchlist, only: [:show, :edit, :update, :destroy]

  # GET /watchlists
  # GET /watchlists.json
  def index
    @watchlists = Watchlist.all
  end

  # GET /watchlists/1
  # GET /watchlists/1.json
  def show
    WatchItem.reindex
    watch_items = WatchItem.search(where: {watchlist_id: current_user.watchlist.id})
    @results = []
    watch_items.each do |item|
      @results.push item.item
    end
  end

  # GET /watchlists/new
  def new
    @watchlist = Watchlist.new
  end

  # GET /watchlists/1/edit
  def edit
  end

  # POST /watchlists
  # POST /watchlists.json
  def create
    @watchlist = Watchlist.new
    @watchlist.user = current_user
    respond_to do |format|
      if @watchlist.save!
        format.html { redirect_to "/watchlists/#{@watchlist.id}"}
        format.json { render :show, status: :created, location: @watchlist }
      else
        format.html { render :new }
        format.json { render json: @watchlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /watchlists/1
  # PATCH/PUT /watchlists/1.json
  def update
    authorize @watchlist
    authorize @watchitem
    respond_to do |format|
      if @watchlist.update(watchlist_params)
        format.html { redirect_to @watchlist, notice: 'Watchlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @watchlist }
      else
        format.html { render :edit }
        format.json { render json: @watchlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watchlists/1
  # DELETE /watchlists/1.json
  def destroy
    authorize @watchlist
    authorize @watchitem
    @watchlist.destroy
    respond_to do |format|
      format.html { redirect_to watchlists_url, notice: 'Watchlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watchlist
      @watchlist = Watchlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def watchlist_params
      params.require(:watchlist).permit(:user_id)
    end
end
