class Exam < ApplicationRecord
  belongs_to :category
  belongs_to :year

  validates :exam_id, presence: true
  validates :title, presence: true
end
