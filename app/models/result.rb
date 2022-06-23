class Result < ApplicationRecord
  belongs_to :user
  belongs_to :choice

  has_many :result_questions, dependent: :destroy
  has_many :questions, through: :group_users, dependent: :destroy
end
