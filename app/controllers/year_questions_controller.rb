class YearQuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    show_questions = Question.find(params[:exam_id]).all
    if show_questions.exam_id == 1 || 2 || 3 ?
      a = Question.where(exam_id: 1).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 2).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 3).order("RANDOM()").limit(20)
    elsif show_questions.exam_id == 4 || 5 || 6 ?
      a = Question.where(exam_id: 4).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 5).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 6).order("RANDOM()").limit(20)
    elsif show_questions.exam_id == 7 || 8 || 9 ?
      a = Question.where(exam_id: 7).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 8).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 9).order("RANDOM()").limit(20)
    else
      a = Question.where(exam_id: 10).order("RANDOM()").limit(16)
      b = Question.where(exam_id: 11).order("RANDOM()").limit(10)
      c = Question.where(exam_id: 12).order("RANDOM()").limit(20)
    end
    @questions = a + b + c
  end
  
  def show_reiwa2_otsu
    Question.joins.where(year_id: 1,exam_type: :otsu)
    a = Question.where(exam_id: 1).order("RANDOM()").limit(16)
    b = Question.where(exam_id: 2).order("RANDOM()").limit(10)
    c = Question.where(exam_id: 3).order("RANDOM()").limit(20)
    @questions = a + b + c
  end

  def show_reiwa3_otsu
    a = Question.where(exam_id: 4).order("RANDOM()").limit(16)
    b = Question.where(exam_id: 5).order("RANDOM()").limit(10)
    c = Question.where(exam_id: 6).order("RANDOM()").limit(20)
    @questions = a + b + c
  end

  def show_reiwa2_kou
    a = Question.where(exam_id: 7).order("RANDOM()").limit(16)
    b = Question.where(exam_id: 8).order("RANDOM()").limit(10)
    c = Question.where(exam_id: 9).order("RANDOM()").limit(20)
    @questions = a + b + c
  end

  def show_reiwa3_kou
    a = Question.where(exam_id: 10).order("RANDOM()").limit(16)
    b = Question.where(exam_id: 11).order("RANDOM()").limit(10)
    c = Question.where(exam_id: 12).order("RANDOM()").limit(20)
    @questions = a + b + c
    # binding.pry
  end
end
