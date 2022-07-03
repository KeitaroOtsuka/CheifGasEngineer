class Group < ApplicationRecord
  mount_uploader :avatar, GroupImageUploader

  has_many :group_users, dependent: :destroy
  has_many :users, through: :group_users, dependent: :destroy

  validates :name, presence: true, length: { maximum: 255 }, uniqueness: true
  validates :owner_id, presence: true
end
