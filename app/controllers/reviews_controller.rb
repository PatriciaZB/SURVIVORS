class ReviewsController < ApplicationController
  def new
    @activity = Activity.find(params[:activity_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @activity = Activity.find(params[:activity_id])
    @review.activity = @activity
    if @review.save
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
