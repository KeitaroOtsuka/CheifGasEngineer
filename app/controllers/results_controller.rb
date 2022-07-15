class ResultsController < ApplicationController
  def create
    @result = current_user.results.build(question_id: params[:question_id])
    @result.save
    if params[:choice_number].to_i == Question.find(params[:question_id]).answer
      @judge = true
    else
      @judge = false
    end
    @result_choice = @result.result_choices.build(result_id: @result.id, choice_id: params[:choice_id], judge: @judge)
    @result_choice.save
  end
end
