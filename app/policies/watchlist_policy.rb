class WatchlistsPolicy < ApplicationPolicy
    attr_reader :user, :item_id
  
    # before_action :authenticate_user!
    #   include Pundit
    #   protect_from_forgery
  
    def initialize(user, item_id)
      @user = user
      @item = item_id
    end
  
     
    def update?
      @item.user_id != @user.id
    end
  
    
      def create?
          new?
      end
  
      def new?
          @item.user_id != @user.id
      end
  
         def edit?
          update?
      end
  
      def destroy?
          @user.role == 'admin'
      end
  end