class ChargesController < ApplicationController
    def new
    end
    
    def create
      # Amount in cents
      @item = Item.find(params[:item])
      @amount_cents = convert_price_to_cents(@item.price)
      @dollar_amount = '%.2f' % (@amount_cents / 100) 
    
      customer = Stripe::Customer.create({
        email: params[:stripeEmail],
        source: params[:stripeToken],
      })
    
      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: @amount_cents,
        description: 'Rails Stripe customer',
        currency: 'aud',
      })

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end

    private
    def convert_price_to_cents(price)
      price.to_i * 100
    end
  end