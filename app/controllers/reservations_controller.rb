class ReservationsController < ApplicationController

def create



  @reservation = current_user.reservations.build(party_size: params[:party_size],
    day_id: params[:day_id],
    restaurant_id: params[:restaurant_id],
    hour_id: params[:hour_id].strip.gsub(' ', '-').in_numbers)

  # party_size
  # restaurant_id
  #   t.integer  "day_id"
  #   t.integer  "hour_id"
  #   t.integer  "user_id"






  
      if @reservation.save
        redirect_to root_path, :notice => "Thanks for reserving with dinefy."
      else
        render "new"
      end
end

def destroy
end

end