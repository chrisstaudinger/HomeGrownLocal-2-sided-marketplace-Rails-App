class RolePolicy < ApplicationPolicy
  attr_reader :user, :role

  def initialize(user, role)
    @user = user
    @role = role
  end

  def update?
    @user.role == 'admin'
  #   current_user.try(:admin?)  
  end

  def edit?
    update?
  end

  def create?
    new?
  end

  def new?
    @user.role == 'admin'
    #   current_user.try(:admin?)
  end

      
  def destroy?
    @user.role == 'admin'
    #   current_user.try(:admin?)
  end
end