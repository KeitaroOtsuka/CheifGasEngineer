class QuestionPapersController < ApplicationController
  def update
    @question_paper = QuestionPaper.find(params[:question_paper_id])
    @question = Question.find(params[:question_id])
    if params[:choice_number].to_i == @question.answer
      @judge = true
    else
      @judge = false
    end
    @question_paper.update(choice_number: params[:choice_number], judge: @judge)
    redirect_to paper_path(@question_paper.paper_id)
    # binding.pry
  end
end
