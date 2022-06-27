class Result < ApplicationRecord
  belongs_to :user
  belongs_to :question

  has_many result_choices, dependent: :destroy
  has_many choices, through: :result_choices, dependent: :destroy
end
