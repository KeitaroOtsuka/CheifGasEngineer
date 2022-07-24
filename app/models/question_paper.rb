class QuestionPaper < ApplicationRecord
  belongs_to :paper
  belongs_to :question
end
