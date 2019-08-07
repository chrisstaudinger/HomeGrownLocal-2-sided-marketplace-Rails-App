


class ItemPolicy < ApplicationPolicy
    
  attr_reader :user, :item
  
  def initialize(user, item)
    @user = user
    @item = item
    
  end

 
  
  def update?
    @item.user_id == @user.id
   
  end
  
  def create?
  end

  def new?

  end

  def edit?
    @item.user_id == @user.id
  end

  def destroy?
    @item.user_id == @user.id
  end

end

