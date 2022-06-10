class GroupsController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
  end

  def new
    @group = Group.new
  end

  def create

  end

  def show

  end

  def update

  end

  def destroy

  end
end
