class FoodItem < ApplicationRecord
  belongs_to :section
  def image_url_or_default
    if image_url.present?
      image_url
    else
     "http://loremflickr.com/320/240/#{name.gsub(' ', '+')}"
    end
  end
end
