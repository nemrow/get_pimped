class TeamsController < ApplicationController
  def index
    @rotation = Rotation.find(params[:rotation_id])
    @teams = @rotation.teams
  end

  def new
    @team = Team.new
    @rotation = Rotation.find(params[:rotation_id])
  end

  def create
    p params
    rotation = Rotation.find(params[:rotation_id])
    team = Team.create(params[:team])
    rotation.teams << team
    redirect_to rotation_teams_path(rotation)
  end
end
