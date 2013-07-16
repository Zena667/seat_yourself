class RestaurantsController < ApplicationController
before_filter :check_owner, only: [:owner]

  def index
    @restaurants = Restaurant.all
    @cuisine = Cuisine.all
    respond_to do |format|
      format.html
      format.json { render json: @restaurants.as_json( :include => :cuisine ) }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @day = Day.find_by_restaurant_id_and_day_and_month_and_year(@restaurant.id, Time.now.strftime("%d").to_i, Time.now.strftime("%m").to_i, Time.now.strftime("%Y").to_i)
  end

  def owner 
    @day = Time.now.strftime("%d").to_i
    @month = Time.now.strftime("%m").to_i
    @year = Time.now.strftime("%Y").to_i
    @restaurant = Restaurant.find_by_id(current_user.owned_restaurant_id)
    

  end

private

  def check_owner
      redirect_to(root_path) unless current_user.owner?
  end

end
