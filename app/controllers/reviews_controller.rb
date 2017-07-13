class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @user = User.find(params[:id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:name, :rate, :review).merge(user_id: @user.id)
  end
end
