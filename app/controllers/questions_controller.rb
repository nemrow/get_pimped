class QuestionsController < ApplicationController
  def index
    @doctor = Doctor.find(params[:doctor_id])
    @questions = @doctor.questions.includes(:answers)
  end

  def new
    @doctor = Doctor.find(params[:doctor_id])
    @question = Question.new
    @answer = Answer.new
  end

  def create
    p params
    doctor = Doctor.find(params[:doctor_id])
    question = Question.create(params[:question])
    answer = Answer.create(params[:answer])
    doctor.questions << question
    question.answers << answer
    redirect_to doctor_questions_path(doctor)
  end
end
