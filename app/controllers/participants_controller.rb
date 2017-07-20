class ParticipantsController < ApplicationController
before_action :authenticate_user!
before_action :userProject
  def new
    @project = Project.find(project_params)
    @participant = Participant.new
  end

  def create
    @project = Project.find(project_params)
    @participant = Participant.new(participant_params)
    if @participant.save
      flash[:notice] = "企画への申し込みが成功しました"
      redirect_to root_path
    else
      flash[:alert] = "企画の申し込みに失敗しました"
      render :new
    end
  end

  private
  def project_params
    params.require(:project_id)
  end

  def participant_params
    params.require(:participant).permit(:name, :birthday, :address, :tellnumber, :email).merge(project_id: @project.id)
  end

  def userProject
    if user_signed_in?
      @user_projects = Project.where(planner_id: current_user.id)
    end
  end
end
