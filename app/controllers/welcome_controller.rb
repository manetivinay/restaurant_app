class WelcomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
    @food_items = FoodItem.search(params)
  end
  def show
    @food_item = FoodItem.find(params[:id])
  end
end
