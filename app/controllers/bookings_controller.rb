class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @activity = Activity.find(params[:activity_id])
    @booking.activity = @activity
    if @booking.save!
      redirect_to dashboard_path
    else
      render "activities/show"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end
end
