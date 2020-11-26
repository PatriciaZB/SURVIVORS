class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @activity = Activity.find(params[:activity_id])
    @booking.activity = @activity
    if @activity.save
      redirect_to bookings_path
    else
      render "activities/show"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
end
