class QuestionsController < ApplicationController
  def index
    if params[:title].present?
      @questions = Question.where("title ILIKE :title", title: "%#{params[:title]}%")
    else
      @questions = Question.all
    end
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user
    if @question.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def destroy
    @question = Question.find(params[:id])
    if @question.user == current_user
      @question.destroy
      redirect_to questions_path, notice: 'Your question was successfully deleted.'
    else
      redirect_to question_path(@question), notice: "You can't delete this question"
    end
  end

  private

  def question_params
    params.require(:question).permit(:question, :title)
  end
end
