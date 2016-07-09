class FoodItem < ApplicationRecord
  validates :name,
            presence: true

  validates :description,
            presence: true

  validates :price,
            presence: true

  validates :section,
            presence: true

  validates :image_url,
            presence: true
end
