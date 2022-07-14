class QuestionsController < ApplicationController
  def categorize1
    @questions = Question.all
  end

  def categorize2
    @questions = Question.all
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

  def result
    @result = current_user.results.build(question_id: params[:question_id])
    if @result.save
      @result_choice = @result.result_choices.build(result_id: @result.id, choice_id: params[:choice_id])
      @result_choice.save
    end
    redirect_to root_path
  end
end
