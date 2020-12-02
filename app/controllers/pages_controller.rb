class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about_us, :help]

  def home
  end

  def dashboard
    @activities = Activity.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end
end
