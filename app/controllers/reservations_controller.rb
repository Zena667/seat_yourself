class ReservationsController < ApplicationController
before_filter :signed_in_user
def create

  @reservation = current_user.reservations.build(party_size: params[:party_size],
    day_id: params[:day_id],
    restaurant_id: params[:restaurant_id],
    hour_id: params[:hour_id].strip.gsub(' ', '-').in_numbers)

      if Point.find_all_by_user_id_and_restaurant_id(current_user.id, params[:restaurant_id]).count == 1
        @point = Point.find_by_user_id_and_restaurant_id(current_user.id, params[:restaurant_id])
        @point.earned += 100
      else 
        @point = current_user.points.build(restaurant_id: params[:restaurant_id], earned: 100, spent: 0)
      end
  
      if @reservation.save && @point.save
        redirect_to root_path, :notice => "Thanks for reserving with dinefy."
      else
        render "new"
      end
end

def destroy
end

end