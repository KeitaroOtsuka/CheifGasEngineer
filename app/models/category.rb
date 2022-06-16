class Category < ApplicationRecord
  has_many :exams
  has_many :years, through: :exams
  validates :body, presence: true
end
