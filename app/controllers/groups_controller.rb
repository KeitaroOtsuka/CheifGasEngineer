class GroupsController < ApplicationController
  before_action :set_params, only: [:edit, :update, :destroy, :withdrawal]
  before_action :set_q, onlt: [:index, :search]
  def index
    @groups = Group.all.order(created_at: :desc).page(params[:page])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.owner_id = current_user.id
    @group.users << current_user
    if @group.save
      # binding.pry
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
    if @group.update(group_params)
      redirect_to groups_path
    else
      render :edit
    end
  end

  def destroy
    @group.destroy!
    redirect_to groups_path
  end

  def join
    @group = Group.find_by(id: params[:id])
    if !@group.users.include?(current_user)
      @group.users << current_user
      redirect_to group_path
    end
  end

  def withdrawal
    @group.users.delete(current_user)
    redirect_to groups_path
  end

  def withdrawal_member
    @group.users.delete(user)
    redirect_to group_path(@group)
  end

  def search
    @results = @q.result
  end

  private
  def group_params
    params.require(:group).permit(:name, {:user_ids => []}, :avatar, :avatar_cache)
  end
  
  def set_params
    @group = Group.find(params[:id])
  end

  def set_q
    @q = Group.ransack(params[:q])
  end
end
