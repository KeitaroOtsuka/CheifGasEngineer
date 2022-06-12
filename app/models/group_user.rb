class GroupUser < ApplicationRecord
  belongs_to :user
  belongs_to :group
  def own?(object)
    group_id == object.GroupUsers.user_id
  end
end
