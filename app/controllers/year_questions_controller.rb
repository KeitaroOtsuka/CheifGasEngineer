class YearQuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    # binding.pry
    if params[:exam_id].to_i == 1
      a = Question.where(exam_id: 1).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 2).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 3).order("RANDOM()").limit(20)
    elsif params[:exam_id].to_i == 4
      a = Question.where(exam_id: 4).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 5).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 6).order("RANDOM()").limit(20)
    elsif params[:exam_id].to_i == 7
      a = Question.where(exam_id: 7).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 8).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 9).order("RANDOM()").limit(20)
    elsif params[:exam_id].to_i == 10
      a = Question.where(exam_id: 10).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 11).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 12).order("RANDOM()").limit(20)
    end
    @questions = a + b + c
  end
end
