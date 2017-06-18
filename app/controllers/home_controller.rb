class HomeController < ApplicationController
  def menu
    @sections = Section.all
    if params[:section].present?
      @foodItems = FoodItem.where(section_id: params[:section].to_i)
    else
      @foodItems = FoodItem.all
    end
    if params[:sort_column].present?
      @foodItems = @foodItems.order("#{params[:sort_column]} #{params[:sort_direction]}")
    end
  end

  def contact_us
  end
end
