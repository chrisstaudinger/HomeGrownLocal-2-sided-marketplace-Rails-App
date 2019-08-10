class ApplicationController < ActionController::Base

    before_action :set_donation_amount

    def set_donation_amount
        @donation_amount_cents = 500
        @donation_amount_dollars = @donation_amount_cents / 100
        @donation_amount_dollars_display = "$#{sprintf('%.2f', @donation_amount_dollars)}"
    end

    
    include Pundit
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :user_location)}

            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :user_location, :email, :password, :current_password)}
        end

    private
    def user_not_authorized(exception)
        flash[:alert] = "You are not authorized to perform this action."
        redirect_to(request.referrer || root_path)
        
        flash[:error] = t "#{policy_name}.#{exception.query}", scope: "pundit", default: :default
        redirect_to(request.referrer || root_path)
    end
end