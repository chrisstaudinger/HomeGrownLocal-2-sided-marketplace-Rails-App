class RequestPolicy < ApplicationPolicy
  attr_reader :item, :request

  def initialize(item, request)
    @item = item
    @request = request
  end

  def edit?
     true
  end

  def update?
    true
    respond_to do |format|
    if @request.update(request_params)
      format.html { redirect_to @request, notice: 'Item was successfully updated.' }
      format.json { render :show, status: :ok, location: @request }
    else
      format.html { render :edit }
      format.json { render json: @request.errors, status: :unprocessable_entity }
    end
  end
  
  def create?
    new?
  end

  def new?
    true
  end

  def destroy?
    true
  end
end