class WelcomeController < ApplicationController
  def index
    @fresh_items = Item.last(6);
  end
end
