class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [ :show]

  def index
    @restaurants = Restaurant.all
  end

  def show

  end

  def new
    @restaurant = Restaurant.new
    raise
  end

  def create
    @restaurant = Restaurant.new(params)
    @restaurant.save!
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
