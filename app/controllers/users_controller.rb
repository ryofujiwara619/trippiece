class UsersController < ApplicationController
before_action :userProject
  def show
    @user = User.find(params[:id])
    @projects = @user.projects
    if @user.reviews.present?
      @reviews = @user.reviews
      @rate = @reviews.average(:rate).round(1)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "プロフィールを更新しました"
       redirect_to root_path
    else
      flash[:alert] = "プロフィールを更新に失敗しました"
       render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :selfintroduction, :image)
  end

  def userProject
    if user_signed_in?
      @user_projects = Project.where(planner_id: current_user.id)
    end
  end
end
