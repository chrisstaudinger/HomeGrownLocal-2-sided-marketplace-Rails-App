class ItemreviewPolicy < ApplicationPolicy
    attr_reader :user, :review
  
    
  
    def initialize(user, id)
      @user = user
      @item = id
    end
  
     
    def update?
      @item.reviewer_id != @user.id
      
    end
  
    
      def create?
          new?
      end
  
      def new?
          @item.reviewer_id != item.user_id
      end
  
      def edit?
          update?
      end
  
      def destroy?
          @user.role == 'admin'
      end
  end

  class NilClassPolicy < ApplicationPolicy
    class Scope < Scope
      def resolve
        raise Pundit::NotDefinedError, "Cannot scope NilClass"
      end
  end
  