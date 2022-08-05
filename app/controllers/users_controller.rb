class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  before_action :set_users, only: %i[show edit update]
  load_and_authorize_resource

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @user.update(user_update_params)
      redirect_to user_path(@user), success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :edit
    end
  end

  def result
    @user = User.find(params[:id])
    if  Paper.exists?(user_id: @user.id)
      @paper = Paper.where(user_id: @user.id).order(id: "DESC").limit(1)
    else
      flash[:danger] = "試験結果が存在しません。"
      redirect_back fallback_location: root_path
    end
    # binding.pry
  end

  private
  def set_users
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :last_name, :first_name, :certification)
  end
  
  def user_update_params
    params.require(:user).permit(:email, :first_name, :last_name,  :avatar, :avatar_cache)
  end
end