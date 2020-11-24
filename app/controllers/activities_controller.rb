class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    # if params[:query].present?
    #   # sql_query = " ILIKE :query OR city ILIKE :query"
    #   @activities = Activity.where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @activities = Activity.all
    # end
  end
end
