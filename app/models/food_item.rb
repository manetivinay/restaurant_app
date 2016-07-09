class FoodItem < ApplicationRecord
  validates :name,
            presence: true

  validates :description,
            presence: true

  validates :price,
            presence: true

  validates :section,
            presence: true
  def image_url_or_default
    if image_url.present?
      image_url
    else
      "http://loremflickr.com/320/240/#{CGI.escape name}"
    end
  end
end
