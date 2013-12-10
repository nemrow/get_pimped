class RotationsController < ApplicationController
  def index
    p params
    @school = School.find(params[:school_id])
    @rotations = @school.rotations.all
  end

  def new
    @school = School.find(params[:school_id])
    @rotation = Rotation.new
  end

  def destroy
  end

  def update
  end

  def create
    p params
    rotation = Rotation.create(params[:rotation])
    school = School.find(params[:school_id])
    school.rotations << rotation
    redirect_to school_rotations_path(school)
  end
end
