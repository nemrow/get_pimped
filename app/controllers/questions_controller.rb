class QuestionsController < ApplicationController
  def index
    @doctor = Doctor.find(params[:doctor_id])
    @questions = @doctor.questions
  end

  def new
  end
end
