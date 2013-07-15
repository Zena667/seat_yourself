class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @day = @restaurant.days.find_by_day_and_month_and_year(Time.now.strftime("%d").to_i, Time.now.strftime("%m").to_i, Time.now.strftime("%Y").to_i)
  end

end
