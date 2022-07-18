class CategoryQuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    # binding.pry
    if params[:exam_id].to_i == 1
      @questions = Question.where(exam_id: 1).or(Question.where(exam_id: 4)).order("RANDOM()").limit(16)
    elsif params[:exam_id].to_i == 2
      @questions = Question.where(exam_id: 2).or(Question.where(exam_id: 5)).order("RANDOM()").limit(10)
    elsif params[:exam_id].to_i == 3
      @questions = Question.where(exam_id: 3).or(Question.where(exam_id: 6)).order("RANDOM()").limit(20)
    elsif params[:exam_id].to_i == 7
      @questions = Question.where(exam_id: 7).or(Question.where(exam_id: 10)).order("RANDOM()").limit(16)
    elsif params[:exam_id].to_i == 8
      @questions = Question.where(exam_id: 8).or(Question.where(exam_id: 11)).order("RANDOM()").limit(10)
    elsif params[:exam_id].to_i == 9
      @questions = Question.where(exam_id: 9).or(Question.where(exam_id: 12)).order("RANDOM()").limit(20)
    end
  end
end
