class YearQuestionsController < ApplicationController
  def index
    @questions = Question.all
  end
end
