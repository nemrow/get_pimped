class DoctorsController < ApplicationController
  def index
    @team = Team.find(params[:team_id])
    @doctors = @team.doctors
  end

  def new
    @doctor = Doctor.new
    @team = Team.find(params[:team_id])
  end

  def create
    doctor = Doctor.create(params[:doctor])
    team = Team.find(params[:team_id])
    team.doctors << doctor
    redirect_to team_doctors_path(team)
  end
end
