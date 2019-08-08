class WelcomeController < ApplicationController
  def index
    @fresh_items = Item.last(6)
    
    @donation_amount_cents = 500
    @donation_amount_dollars = @donation_amount_cents / 100
    @donation_amount_dollars_display = "$#{sprintf('%.2f', @donation_amount_dollars)}"
  end
end
