class ResultQuestion < ApplicationRecord
  belongs_to :result
  belongs_to :question

  validates :judge, presence: true 
  validates :judge, inclusion: { in: [true, false] }
end
