class UserRatingPolicy < ApplicationPolicy
    attr_reader :user, :rating
  
    before_action :authenticate_user!
      include Pundit
      protect_from_forgery
  
    def initialize(user, rating)
      @user = user
      @rating = rating
    end
  
     
    def update?
      @user.role == 'admin'
      
    end
  
    
      def create?
          new?
      end
  
      def new?
          @user.user_id != rating.reviewee_id
      end
  
      def edit?
          update?
      end
  
      def destroy?
          @user.role == 'admin'
      end
  end