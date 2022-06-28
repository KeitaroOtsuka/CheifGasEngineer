class QuestionsController < ApplicationController
  def categorize1
    @questions = Question.all
  end

  def categorize2
    @questions = Question.all
  end
  
  def show_reiwa2_otsu
    @question = Question.all.includes(exam_id: 1 || 2 || 3 )
  end

  def show_reiwa2_kou
    @question = Question.all.where(exam_id: 7 || 8 || 9)
  end

  def show_reiwa3_otsu
    @question = Question.all.where(exam_id: 4 || 5 || 6)
  end

  def show_reiwa3_kou
    @question = Question.all.where(exam_id: 10 || 11 || 12)
  end

  def show_houki_otsu
    @question = Question.all.where(exam_id: 1 || 4)
  end

  def show_houki_kou
    @question = Question.all.where(exam_id: 7 || 10)
  end

  def show_kiso_otsu
    @question = Question.all.where(exam_id: 2 || 5)
  end

  def show_kiso_kou
    @question = Question.all.where(exam_id: 8 || 11)
  end

  def show_gijutsu_otsu
    @question = Question.all.where(exam_id: 3 || 6)
  end

  def show_gijutsu_kou
    @question = Question.all.where(exam_id: 9 || 12)
  end
end
