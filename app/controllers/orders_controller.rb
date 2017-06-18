class OrdersController < ApplicationController
  def index
  end

  def new
    @food_item = FoodItem.find(params[:food])
  end

  def create
    @order = params.permit([:food, :name, :phone, :address])
    @food_item = FoodItem.find(params[:food])
    @delivery = 20000
    @total = @food_item.price + @delivery
    @order_time = Time.now.strftime("%A, %B %d %Y, %H:%M")
    render :thanks
  end

end
