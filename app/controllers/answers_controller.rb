class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.user = current_user
    @question = Question.find(params[:question_id])
    @answer.question = @question
    if @answer.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to question_path(@question), notice: 'Your answer was deleted.'
  end

  private

  def answer_params
    params.require(:answer).permit(:answer)
  end
end
