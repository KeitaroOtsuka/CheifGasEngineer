class ResultsController < ApplicationController
  def index

  end
  def create
    @result = Result.create(
      user_id: current_user.id,
      question_id: question
    )
  end
end
