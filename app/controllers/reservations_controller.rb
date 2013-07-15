class ReservationsController < ApplicationController

def create
  @reservation = Reservation.new(params[:])
      if @user.save
        redirect_to root_path, :notice => "Signed up!"
      else
        render "new"
      end
end

def destroy
end

end