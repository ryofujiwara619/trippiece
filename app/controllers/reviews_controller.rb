class ReviewsController < ApplicationController
before_action :userProject
  def new
    @user = User.find(params[:user_id])
    @review = Review.new
  end

  def create
    @user = User.find(params[:user_id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:rate, :review).merge(name: current_user.name, user_id: @user.id)
  end

  def userProject
    if user_signed_in?
      @user_projects = Project.where(planner_id: current_user.id)
    end
  end
end
