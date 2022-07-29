class QuestionsController < ApplicationController
  require 'csv'

  def new
    @question = Question.new
    @questions = Question.all
    respond_to do |format|
      format.html
      format.csv do |csv|
        send_posts_csv(@questions)
      end
    end
  end

  private
  def send_posts_csv(questions)
    bom = "\uFEFF"
    csv_data = CSV.generate(bom) do |csv|
      column_names = %w(id 本文 答え 補足説明1 補足説明2 補足説明3 補足説明4 補足説明5 サブ サブ2 サブ3 サブ4 サブ5 サブ4_2 )
      csv << column_names
      questions.each do |question|
        column_values = [
          question.exam_id,
          question.sentence,
          question.answer,
          question.supplement1,
          question.supplement2,
          question.supplement3,
          question.supplement4,
          question.supplement5,
          question.sub_sentence,
          question.sub_sentence2,
          question.sub_sentence3,
          question.sub_sentence4,
          question.sub_sentence5,
          question.sub_sentence4_2,
        ]
        csv << column_values
      end
    end
    send_data(csv_data, filename: "問題一覧.csv")
  end
end
