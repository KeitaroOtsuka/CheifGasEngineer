class ResultChoice < ApplicationRecord
  belongs_to :result
  belongs_to :choice

  validates :judge, presence: true
end
