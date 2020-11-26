class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all

    if params[:category].present?
      # sql_query = "name ILIKE :query OR address ILIKE :query OR start_at ILIKE :query OR start_at ILIKE :category"
      # @activities = Activity.where(:category "%#{params[:category]}%")
    else
      @activities = Activity.all
    end

    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude
      }
    end
  end

  def show
    @activity = Activity.find(params[:id])
    @review = Review.new
    @booking = Booking.new
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  # updated
  # delete
  # authorizations

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :address, :start_at, :end_at, :image, :category, :presence)
  end
end
