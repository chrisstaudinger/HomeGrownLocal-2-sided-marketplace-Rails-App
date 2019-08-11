class WelcomeController < ApplicationController
  def index
    @items = Item.all
    @results = []
    @items.each_with_index do |item, index|
      if (index % 2 == 0)
        @results << item
        if @results.length >= 6
          break
        end
      end
    end
  end

  def about_us
  end
end
