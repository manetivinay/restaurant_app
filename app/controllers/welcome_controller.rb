class WelcomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
    @food_items = FoodItem.search(params)
  end
end
