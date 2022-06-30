class ResultChoicesController < ApplicationController
  def create
    @result_choice = ResultChoice.new(params[
        result_id: @result.id,
        choice_id: choice.id
      ]
    )
    if @result_choice.results.questikon_id.answer == @result_choice.choice.body
      return true
    else
      return false
    end
  end
end
