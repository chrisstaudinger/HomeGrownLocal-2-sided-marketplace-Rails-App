class WelcomeController < ApplicationController
  def index
    @results = Item.last(6)
  end
end
