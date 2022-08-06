class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger
  before_action :require_login, only: [ :page ]
  add_flash_types :success, :info, :warning, :danger

  private
  def not_authenticated
    redirect_to main_app.login_path, danger: 'ログインをしてください'
  end

  rescue_from CanCan::AccessDenied do |_exception|
    flash[:danger] = '画面を閲覧する権限がありません。'
    redirect_to root_path
  end
end
