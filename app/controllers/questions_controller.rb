class QuestionsController < ApplicationController
  def categorize1
    @questions = Question.all
  end

  def categorize2
    @questions = Question.all
  end
  
  def show_reiwa2_otsu
    @question = Question.where(exam_id: 1).or(Question.where(exam_id: 2)).or(Question.where(exam_id: 3))
  end

  def show_reiwa3_otsu
    @question = Question.where(exam_id: 4).or(Question.where(exam_id: 5)).or(Question.where(exam_id: 6))
  end

  def show_reiwa2_kou
    @question = Question.where(exam_id: 7).or(Question.where(exam_id: 8)).or(Question.where(exam_id: 9))
  end

  def show_reiwa3_kou
    @question = Question.where(exam_id: 10).or(Question.where(exam_id: 11)).or(Question.where(exam_id: 12))
  end

  def show_houki_otsu
    @question = Question.where(exam_id: 1).or(Question.where(exam_id: 4))
  end

  def show_houki_kou
    @question = Question.where(exam_id: 7).or(Question.where(exam_id: 10))
  end

  def show_kiso_otsu
    @question = Question.where(exam_id: 2).or(Question.where(exam_id: 5))
  end

  def show_kiso_kou
    @question = Question.where(exam_id: 8).or(Question.where(exam_id: 11))
  end

  def show_gijutsu_otsu
    @question = Question.where(exam_id: 3).or(Question.where(exam_id: 6))
  end

  def show_gijutsu_kou
    @question = Question.where(exam_id: 9).or(Question.where(exam_id: 12))
  end
end
