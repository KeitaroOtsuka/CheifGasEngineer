class ResultsController < ApplicationController
  def create
    @result = current_user.results.build(question_id: params[:question_id])
    if @result.save
      if params[:choice_number].to_i == params[:question_id].answer
        @judge = true
      else
        @judge = false
      end
      @result_choice = @result.result_choices.build(result_id: @result.id, choice_id: params[:choice_id])
      @result_choice.save
    end
  end
end
