class QuestionsController < ApplicationController
  def categorize1
    @questions = Question.all
  end

  def categorize2
    @questions = Question.all
  end

  def show_year
    @question = Question.find(params[:id])
  end

  def show_category
    @question = Question.find(params[:id])
  end
end
