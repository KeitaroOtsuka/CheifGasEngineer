class Year < ApplicationRecord
  has_many :exams
  has_many :categories, through: :exams
  validates :body, presence: true
end
