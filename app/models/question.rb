class Question < ApplicationRecord
  belongs_to :exam
  has_many :choices, dependent: :destroy

  has_many :results, dependent: :destroy
  has_many :users, through: :results, dependent: :destroy

  has_many :question_quizes, dependent: :destroy
  has_many :quizes, through: :question_quizes, dependent: :destroy
end
