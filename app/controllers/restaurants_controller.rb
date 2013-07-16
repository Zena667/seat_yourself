class RestaurantsController < ApplicationController
before_filter :check_owner, only: [:owner]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @day = Day.find_by_restaurant_id_and_day_and_month_and_year(@restaurant.id, Time.now.strftime("%d").to_i, Time.now.strftime("%m").to_i, Time.now.strftime("%Y").to_i)
  end

  def owner 
    @current_day = Day.find_by_day_and_month_and_year(Time.now.strftime("%d").to_i, Time.now.strftime("%m").to_i, Time.now.strftime("%Y").to_i)
    @day = Time.now.strftime("%d").to_i
    @month = Time.now.strftime("%m").to_i
    @year = Time.now.strftime("%Y").to_i
    @restaurant = Restaurant.find_by_id(current_user.owned_restaurant_id)
    @days_reservations = @restaurant.reservations.find_all_by_day_id(@current_day.id)
  end

private

  def check_owner
      redirect_to(root_path) unless current_user.owner?
  end

end
