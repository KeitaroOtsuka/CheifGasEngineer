class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end
  def categorize1
    @question = Question.exams.find(params[:year_id])
  end

  def categorize2
    @question = Question.exams.find(params[:category_id])
  end
end
