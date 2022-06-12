class GroupsController < ApplicationController
  before_action :set_params, only: [:edit, :update, :destroy]
  def index
    @groups = Group.all.order(created_at: :desc)
  end

  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groups_path
    else
      render :new
    end
  end

  def show
    @group = Group.find(params[:id])
  end

  def edit; end

  def update

  end

  def destroy
    @group.destroy!
    redirect_to groups_path
  end

  private
  def group_params
    params.require(:group).permit(:name)
  end
  
  def set_params
    @group = Group.find(params[:id])
  end
end
