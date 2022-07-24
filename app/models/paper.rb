class Paper < ApplicationRecord
  belongs_to :user

  has_many :question_papers, dependent: :destroy
  has_many :questions, through: :question_papers, dependent: :destroy
end
