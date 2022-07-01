class ResultChoicesController < ApplicationController
  def create
    result = current_user.result_choices.build(result_params)
    if result.choices.body == current_user.questions.answer
      result.body = true
      :render partial: 'form', locals: { question: @question }
    else
      result.body = false
      :render partial: 'form', locals: { question: @question }
    end
  end

  private
  def result_params
    params.require(:result_choices).merge(user_id: current_user.id, result_id: params[:result_id])
  end
end
