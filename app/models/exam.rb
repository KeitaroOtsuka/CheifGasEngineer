class Exam < ApplicationRecord
  belongs_to :category
  belongs_to :year
  has_many :questions

  validates :title, presence: true

  enum exam_type: { otsu: 0, kou: 1 }
end
