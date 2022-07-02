class ResultsController < ApplicationController
  def your_choice
    @result_choice = Result.find(id: params[:id])
    @result_choice.choices << current_user.choices.body
    redirect_to result_result_choices_path
  end
end
