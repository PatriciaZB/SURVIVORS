class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all

    if params[:query].present?
      sql_query = "name ILIKE :query OR address ILIKE :query"
      @activities = Activity.where(sql_query, query: "%#{params[:query]}%")
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

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :address, :start_at, :end_at, :image, :category, :presence)
  end
end
