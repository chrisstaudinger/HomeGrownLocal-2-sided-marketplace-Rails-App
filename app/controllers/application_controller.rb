class ApplicationController < ActionController::Base
    include Pundit
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :user_location)}

            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:user_location, :email, :password, :current_password)}
        end

    private
    def user_not_authorized(exception)
        flash[:alert] = "You are not authorized to perform this action."
        redirect_to(request.referrer || root_path)
        
        flash[:error] = t "#{policy_name}.#{exception.query}", scope: "pundit", default: :default
        redirect_to(request.referrer || root_path)
    end
end