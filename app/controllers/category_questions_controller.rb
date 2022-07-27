class CategoryQuestionsController < ApplicationController
  def index
    @questions = Question.all
  end
end
