class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @user = User.find(@project.planner_id)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      Planner.create(user_id: current_user.id, project_id: @project.id)
      redirect_to root_path
    else
      redirect_to new_project_path
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      Planner.create(user_id: current_user.id, project_id: @project.id)
      redirect_to root_path
    else
      redirect_to eidt_project_path(@project.id)
    end
  end

  private
  def project_params
    params.require(:project).permit(:title, :image, :introduction, :destination, :departure_date, :finish_date).merge(planner_id: current_user.id)
  end
end
