class Question < ApplicationRecord
  belongs_to :exam
  has_many :choices, dependent: :destroy

  has_many :result_questions, dependent: :destroy
  has_many :results, through: :group_users, dependent: :destroy
end
