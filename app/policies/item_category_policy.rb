class ItemCategoryPolicy < ApplicationPolicy
  attr_reader :user, :category

  def initialize(user, category)
    @user = user
    @category = category
  end

  def update?
    @user.role == "admin"
    # current_user.try(:admin?)
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  
    def create?
      new?
  end

  def new?
      @user.role == "admin"
      # current_user.try(:admin?)
  end

     def edit?
      @user.role == "admin"
      # current_user.try(:admin?)
  end

  def destroy?
      @user.role == "admin"
      # current_user.try(:admin?)
  end

  def show?
    true 
  end
end