class QuestionsController < ApplicationController
  def categorize1
    @questions = Question.all
  end

  def categorize2
    @questions = Question.all
  end
  
  def show_reiwa2_otsu
    a = Question.where(exam_id: 1).limit(16)
    b = Question.where(exam_id: 2).limit(10)
    c = Question.where(exam_id: 3).limit(20)
    @question = a + b + c
  end

  def show_reiwa3_otsu
    a = Question.where(exam_id: 4).limit(16)
    b = Question.where(exam_id: 5).limit(10)
    c = Question.where(exam_id: 6).limit(20)
    @question = a + b + c
  end

  def show_reiwa2_kou
    a = Question.where(exam_id: 7).limit(16)
    b = Question.where(exam_id: 8).limit(10)
    c = Question.where(exam_id: 9).limit(20)
    @question = a + b + c
  end

  def show_reiwa3_kou
    a = Question.where(exam_id: 10).limit(16)
    b = Question.where(exam_id: 11).limit(10)
    c = Question.where(exam_id: 12).limit(20)
    @question = a + b + c
    # binding.pry
  end

  def show_houki_otsu
    @question = Question.where(exam_id: 1).or(Question.where(exam_id: 4)).order("RANDOM()").limit(16)
  end

  def show_houki_kou
    @question = Question.where(exam_id: 7).or(Question.where(exam_id: 10)).order("RANDOM()").limit(16)
  end

  def show_kiso_otsu
    @question = Question.where(exam_id: 2).or(Question.where(exam_id: 5)).order("RANDOM()").limit(10)
  end

  def show_kiso_kou
    @question = Question.where(exam_id: 8).or(Question.where(exam_id: 11)).order("RANDOM()").limit(10)
  end

  def show_gijutsu_otsu
    @question = Question.where(exam_id: 3).or(Question.where(exam_id: 6)).order("RANDOM()").limit(20)
  end

  def show_gijutsu_kou
    @question = Question.where(exam_id: 9).or(Question.where(exam_id: 12)).order("RANDOM()").limit(20)
  end
end
