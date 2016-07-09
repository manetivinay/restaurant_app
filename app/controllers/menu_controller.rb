class MenuController < ApplicationController
  def index
    @sections = %w(Lunch Drinks Cookies)
    @food_items = FoodItem.by_section(params[:section])
  end
end
