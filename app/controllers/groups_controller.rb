class GroupsController < ApplicationController
  before_action :set_params, only: [:edit, :update, :destroy]
  def index
    @groups = Group.all.order(created_at: :desc)
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

  private
  def group_params
    params.require(:group).permit(:name, {:user_ids => []})
  end
  
  def set_params
    @group = Group.find(params[:id])
  end
end
