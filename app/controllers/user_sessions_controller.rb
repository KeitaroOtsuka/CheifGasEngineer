class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new; end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to root_path, success: t('.success')
      flash.now[:danger] = t('.fail')
    else
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path, success: t('.success')
  end

  def guest_login
    @guest_user = User.create(
    id: 9999,
    first_name: 'ゲスト',
    email: SecureRandom.alphanumeric(10) + "@email.com",
    password: 'password',
    password_confirmation: 'password'
    )
    auto_login(@guest_user)
    redirect_to categorize1_question_path(@guest_user), success: 'ゲストとしてログインしました'
  end
end