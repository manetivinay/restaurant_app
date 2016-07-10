class MenuController < ApplicationController
  def index
    @sections = %w(Lunch Drinks Cookies Breakfast Dinner)
    @food_items = FoodItem.by_section(params[:section])
    @food_item.add_view
  end
end
