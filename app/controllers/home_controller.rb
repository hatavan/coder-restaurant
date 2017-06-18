class HomeController < ApplicationController
  def menu
    @sections = Section.all
    if params[:section].present?
      @foodItems = FoodItem.where(section_id: params[:section].to_i)
    elsif params[:search].present?
      @foodItems = FoodItem.search(params[:search])
    else
      @foodItems = FoodItem.all
    end
    @foodItems = @foodItems.order_or_default(params[:sort_column], params[:sort_direction])
  end

  def contact_us
  end

  private 
end
