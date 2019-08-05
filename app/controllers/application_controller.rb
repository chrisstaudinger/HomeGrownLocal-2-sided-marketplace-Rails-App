# class ApplicationController < ActionController::Base
    class ApplicationController < ActionController::Base
        # before_action :authenticate_user!
        # # , only: [:new, :create, :edit, :update, :destroy]

        # protect_from_forgery prepend: true

        include Pundit
        
        
        
        # after_action :verify_authorized, except: :index
        # after_action :verify_policy_scoped, only: :index
        
        rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
        
        
        private
        def user_not_authorized(exception)
            flash[:alert] = "You are not authorized to perform this action."
            redirect_to(request.referrer || root_path)
         
            flash[:error] = t "#{policy_name}.#{exception.query}", scope: "pundit", default: :default
            redirect_to(request.referrer || root_path)
        end
       
    end

# end

  