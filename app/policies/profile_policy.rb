class ProfilePolicy < ApplicationPolicy
    attr_reader :user, :profile
  
    def initialize(user, profile)
      @user = user
      @profile = profile
    end
  
    def update?
      profile.user_id == @user.id
         
    end
  
     def edit?
          update?
      end
    
    
      def create?
          new?
      end
  
      def new?
     end
  
        
      def destroy?
        #  current_user.try(:admin?)
      end
  end
    
  