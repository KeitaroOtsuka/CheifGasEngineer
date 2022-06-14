class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  before_action :set_users, only: %i[show edit update]

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
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private
  def set_users
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :last_name, :first_name)
  end
  def user_update_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end
end