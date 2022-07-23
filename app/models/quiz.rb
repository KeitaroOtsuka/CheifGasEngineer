class Quiz < ApplicationRecord
  belongs_to :user

  has_many :question_quizes, dependent: :destroy
  has_many :questions, through: :question_quizes, dependent: :destroy
end
