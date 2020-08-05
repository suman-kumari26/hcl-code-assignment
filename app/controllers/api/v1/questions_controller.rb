class Api::V1::QuestionsController < ApplicationController
	before_action :set_question, only: [:show, :update, :destroy]

	rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def index
    questions = Question.includes(:role, :mapping).all
    render json: questions, status: 200
	end

  def show
    render json: @question, status: 200
	end

  def create
    question = Question.new(questions_param)

		if question.save
    	render json: question, status: 200
		else
			render json: question.errors.full_messages, status: 403
		end
	end

  def update
		if @question.update(questions_param)
    	render json: @question, status: 200
		else
			render json: @question.errors.full_messages, status: 403
		end
	end

  def destroy
    render json: @question, status: 200 if @question.destroy!
	end

	private

	def set_question
		@question = Question.find(params[:id])
	end

	def questions_param
		params.require(:question).permit!
	end

  def record_not_found
    render json: { message: 'Record Not Found!'}, status: 404
  end
end
