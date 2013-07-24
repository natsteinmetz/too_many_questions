class AnswersController < ApplicationController
	before_filter :find_question
	before_filter :find_answer, :only => [:show, :edit, :update, :destroy]

	def new 
		@answer = @question.answers.build
	end
	def create
		@answer = @question.answers.build(params[:answer])
		if @answer.save
			flash[:notice] = "Answer has been created."
			redirect_to [@question, @answer]
		else
			flash[:alert] = "Answer has not been created."
			render :action => "new"
		end
	end
	def show
	end
	def edit
	end
	def update 
	end
	def destroy
	end

private
	def find_question
		@question = Question.find(params[:question_id])
	end
	def find_answer
		@answer = @question.answers.find(params[:id])
	end
end
