class Choice < ApplicationRecord
  belongs_to :question
  has_many :results, dependent: :destroy
  has_many :users, through: :results, dependent: :destroy
end
