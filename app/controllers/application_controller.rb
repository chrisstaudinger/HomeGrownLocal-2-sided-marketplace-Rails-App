class ApplicationController < ActionController::Base
    include Pundit
    
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    
    private
    def user_not_authorized(exception)
        flash[:alert] = "You are not authorized to perform this action."
        redirect_to(request.referrer || root_path)
        
        flash[:error] = t "#{policy_name}.#{exception.query}", scope: "pundit", default: :default
        redirect_to(request.referrer || root_path)
    end
end

  
