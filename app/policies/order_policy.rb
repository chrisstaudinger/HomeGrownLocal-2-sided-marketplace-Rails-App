class OrderPolicy < ApplicationPolicy
    attr_reader :user, :order
  
    
    def initialize(user, order)
      @user = user
      @order = order
    end
  
     
    def update?
      order.user_id == @user.id
          
      
    end
  
    
      def create?
          new?
      end
  
      def new?
          # @order.user_id == @user.id?
      end
  
         def edit?
          update?
      end
  
      def destroy?
          @order.user_id == @user.id
      end
  end