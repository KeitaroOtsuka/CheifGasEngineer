class CategoryQuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
  end

  def show_houki_otsu
    @questions = Question.where(exam_id: 1).or(Question.where(exam_id: 4)).order("RANDOM()").limit(16)
  end

  def show_houki_kou
    @questions = Question.where(exam_id: 7).or(Question.where(exam_id: 10)).order("RANDOM()").limit(16)
  end

  def show_kiso_otsu
    @questions = Question.where(exam_id: 2).or(Question.where(exam_id: 5)).order("RANDOM()").limit(10)
  end

  def show_kiso_kou
    @questions = Question.where(exam_id: 8).or(Question.where(exam_id: 11)).order("RANDOM()").limit(10)
  end

  def show_gijutsu_otsu
    @questions = Question.where(exam_id: 3).or(Question.where(exam_id: 6)).order("RANDOM()").limit(20)
  end

  def show_gijutsu_kou
    @questions = Question.where(exam_id: 9).or(Question.where(exam_id: 12)).order("RANDOM()").limit(20)
  end
end
