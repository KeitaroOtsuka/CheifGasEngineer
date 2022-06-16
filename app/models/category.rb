class Category < ApplicationRecord
  validates :body, presence: true
end
