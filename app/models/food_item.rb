class FoodItem < ApplicationRecord

  has_many :orders, dependent: :destroy

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

  def self.by_section(section)
    # SELECT * FROM food_items WHERE food_items.section = '#{section}'
    where(section: section)
  end

  def self.search(params)
    items = all
    # search by name
    if params[:search].present?
      items = where("lower(name) LIKE ?", "%#{params[:search]}%".downcase)
    end

    section = ''
    if params[:section].present?
      items = where(section: params[:section])
      section = params[:section]
    end

    sort_by_alphabet = params['a']
    sort_by_price = params['p']
    sort_by_most_viewed = params['v']

    if sort_by_alphabet.present?
      if sort_by_alphabet.eql? 'a-z'
        if params[:section].present?
          items = where(section: section).order(name: :asc)
        else
          items = order(name: :asc)
        end
      elsif sort_by_alphabet.eql? 'z-a'
        if params[:section].present?
          items = where(section: section).order(name: :desc)
        else
          items = order(name: :desc)
        end
      end
    end

    if sort_by_price.present?
      if sort_by_price.eql? 'low-to-high'
        if params[:section].present?
          items = where(section: section).order(price: :asc)
        else
          items = order(price: :asc)
        end
      elsif sort_by_price.eql? 'high-to-low'
        if params[:section].present?
          items = where(section: section).order(price: :desc)
        else
          items = order(price: :desc)
        end
      end
    end

    if sort_by_most_viewed.present?
      if params[:section].present?
        items = where(section: section).order(view: :desc)
      else
        items = order(view: :desc)
      end
    end

    return items
  end

  def add_view
    self.view = self.view + 1
    self.save
  end
end
