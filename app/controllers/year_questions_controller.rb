class YearQuestionsController < ApplicationController
  def index
    @questions = Question.all
    unless logged_in?
      current_user = 10001
    end
  end
end
