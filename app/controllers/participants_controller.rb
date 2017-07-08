class ParticipantsController < ApplicationController
before_action :authenticate_user!
  def new
    @project = Project.find(project_params)
    @participant = Participant.new
  end

  def create
    @project = Project.find(project_params)
    @participant = Participant.new(participant_params)
    if @participant.save
      redirect_to root_path
    else
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
end
