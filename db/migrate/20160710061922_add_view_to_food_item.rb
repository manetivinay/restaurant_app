class AddViewToFoodItem < ActiveRecord::Migration[5.0]
  def change
    add_column :food_items, :view, :integer, default: 0
  end
end
