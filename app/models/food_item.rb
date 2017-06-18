class FoodItem < ApplicationRecord
  belongs_to :section
  def image_url_or_default
    if image_url.present?
      image_url
    else
     "http://loremflickr.com/320/240/#{name.gsub(' ', '+')}"
    end
  end

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end

  def self.order_or_default(column, direction)
    order(column.present? ? "#{column} #{direction}" : "name asc")
  end
end
