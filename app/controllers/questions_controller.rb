class QuestionsController < ApplicationController
  def categorize1
    @questions = Question.all
  end

  def categorize2
    @questions = Question.all
  end

  def show_year
    @question = Question.exams.find(params[:year_id])
  end

  def show_category
    @question = Question.exams.find(params[:category_id])
  end
end
