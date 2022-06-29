class ResultsController < ApplicationController
  def create
    @result = Result.new(params[
      user_id: current_user.id,
      question_id: question.id
    ])
    if @result.save
      redirect_to result_choices_path, method: :post
    end
  end
end
