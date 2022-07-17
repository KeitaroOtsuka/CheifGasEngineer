class YearQuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    show_questions = Question.find(exam_id: params[:exam_id]).all
    binding.pry
    if params[:exam_id] == 1 || 2 || 3 ?
      a = Question.where(exam_id: 1).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 2).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 3).order("RANDOM()").limit(20)
    elsif params[:exam_id] == 4 || 5 || 6 ?
      a = Question.where(exam_id: 4).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 5).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 6).order("RANDOM()").limit(20)
    elsif params[:exam_id] == 7 || 8 || 9 ?
      a = Question.where(exam_id: 7).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 8).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 9).order("RANDOM()").limit(20)
    elsif params[:exam_id] == 10 || 11 || 12 ?
      a = Question.where(exam_id: 10).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 11).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 12).order("RANDOM()").limit(20)
    end
    @questions = a + b + c
  end
end
