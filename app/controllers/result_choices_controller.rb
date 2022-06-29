class ResultChoicesController < ApplicationController
  def create
    @result_choice = ResultChoice.new(params[
        result_id: @result.id,
        choice_id: choice.id
      ]
    )
    if @result_choice.result_id

    end
  end
end
