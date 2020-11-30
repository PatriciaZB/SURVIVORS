require "date"
class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present? && params[:starts_at].present?
      search_date = params[:starts_at]
      sql_query = "start_at >= :date AND name ILIKE :query OR address ILIKE :query"
      @activities = Activity.where(sql_query, date: "%#{search_date}%", query: "%#{params[:query]}%").order('start_at ASC')
    elsif params[:query].present?
      sql_query = "name ILIKE :query OR address ILIKE :query"
      @activities = Activity.where(sql_query, query: "%#{params[:query]}%")
    elsif params[:starts_at].present?
      search_date = params[:starts_at]
      sql_query = "start_at >= :date"
      @activities = Activity.where(sql_query, date: "%#{search_date}%").order('start_at ASC')
    else
      @activities = Activity.all.order('start_at ASC')
    end
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { activity: activity })
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

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update(activity_params)
    redirect_to activity_path(@activity)
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to dashboard_path, notice: 'The Activity was successfully deleted.'
  end

  # authentication

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :address, :start_at, :end_at, :image, :category, :presence)
  end
end
