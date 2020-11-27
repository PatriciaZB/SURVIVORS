class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @activity = Activity.find(params[:activity_id])
    @booking.activity = @activity
    if @booking.save
      flash[:notice] = "Booking confirmed!"
      redirect_to dashboard_path
    else
      if @booking.errors.any?
        flash[:notice] = "You can't book an activity that you booked already"
      end
      render "activities/show"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path, notice: 'Your booking was successfully deleted.'
  end
end
