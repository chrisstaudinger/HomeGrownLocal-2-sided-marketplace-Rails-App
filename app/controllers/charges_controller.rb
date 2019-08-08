class ChargesController < ApplicationController
    # before_action :charge_params, only: [:create]
    def new
    end
    
    def create
      # Amount in cents
      @amount = 500
    
      customer = Stripe::Customer.create({
        email: params[:stripeEmail],
        source: params[:stripeToken],
      })
    
      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: @amount,
        description: 'Rails Stripe customer',
        currency: 'aud'
      })
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end

    # private
    # Use callbacks to share common setup or constraints between actions.
    # Never trust parameters from the scary internet, only allow the white list through.
    # def charge_params
    #   params.permit(:donation_amount)
    # end
  end