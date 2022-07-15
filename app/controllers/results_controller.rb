class ResultsController < ApplicationController
  def new
    @result = Result.new
  end
  
  def create
    @result = Result.new
    @result.assign_attributes(result_form_params)
    if @result.save
      # 成功・失敗の処理
    end
  end

  private
  def result_form_params
    params.require(:message_form).permit(:body, pictures_attributes: [:picture]).merge(user_id: current_user)
  end
end
