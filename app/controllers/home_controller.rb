class HomeController < ApplicationController
  def menu
    @sections = Section.all
    if params[:section].present?
      @food_items = FoodItem.where(section_id: params[:section].to_i)
    elsif params[:search].present?
      @food_items = FoodItem.search(params[:search])
    else
      @food_items = FoodItem.all
    end
    @food_items = @food_items.order_or_default(params[:sort_column], params[:sort_direction])
  end

  def contact_us
  end

  private 
end
