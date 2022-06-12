class GroupUsersController < ApplicationController
  private

  def add_user
    @group = Group.find(params[:group_id])
    user = User.find(params[:user_id])
    @group.users << user
    redirect_to group_path, notice: "ユーザーを追加しました。"
  end
end
