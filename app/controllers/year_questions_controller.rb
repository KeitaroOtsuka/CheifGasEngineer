class YearQuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    if params[:exam_id1].to_i == 1 && params[:exam_id2].to_i == 2 && params[:exam_id3].to_i == 3
      a = Question.where(exam_id: 1).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 2).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 3).order("RANDOM()").limit(20)
      @questions = a + b + c
    elsif params[:exam_id1].to_i == 4 && params[:exam_id2].to_i == 5 && params[:exam_id3].to_i == 6
      a = Question.where(exam_id: 4).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 5).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 6).order("RANDOM()").limit(20)
      @questions = a + b + c
    elsif params[:exam_id1].to_i == 7 && params[:exam_id2].to_i == 8 && params[:exam_id3].to_i == 9
      a = Question.where(exam_id: 7).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 8).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 9).order("RANDOM()").limit(20)
      @questions = a + b + c
    elsif params[:exam_id1].to_i == 10 && params[:exam_id2].to_i == 11 && params[:exam_id3].to_i == 12
      a = Question.where(exam_id: 10).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 11).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 12).order("RANDOM()").limit(20)
      @questions = a + b + c
    elsif params[:exam_id1].to_i == 1
      @questions = Question.where(exam_id: 1).order("RANDOM()").limit(16)
    elsif params[:exam_id1].to_i == 2
      @questions = Question.where(exam_id: 2).order("RANDOM()").limit(10)
    elsif params[:exam_id1].to_i == 3
      @questions = Question.where(exam_id: 3).order("RANDOM()").limit(20)
    elsif params[:exam_id1].to_i == 4
      @questions = Question.where(exam_id: 4).order("RANDOM()").limit(16)
    elsif params[:exam_id1].to_i == 5
      @questions = Question.where(exam_id: 5).order("RANDOM()").limit(10)
    elsif params[:exam_id1].to_i == 6
      @questions = Question.where(exam_id: 6).order("RANDOM()").limit(20)
    elsif params[:exam_id1].to_i == 7
      @questions = Question.where(exam_id: 7).order("RANDOM()").limit(16)
    elsif params[:exam_id1].to_i == 8
      @questions = Question.where(exam_id: 8).order("RANDOM()").limit(10)
    elsif params[:exam_id1].to_i == 9
      @questions = Question.where(exam_id: 9).order("RANDOM()").limit(20)
    elsif params[:exam_id1].to_i == 10
      @questions = Question.where(exam_id: 10).order("RANDOM()").limit(16)
    elsif params[:exam_id1].to_i == 11
      @questions = Question.where(exam_id: 11).order("RANDOM()").limit(10)
    elsif params[:exam_id1].to_i == 12
      @questions = Question.where(exam_id: 12).order("RANDOM()").limit(20)
    end
  end
end
