class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger
  before_action :require_login, only: [ :page ]
  add_flash_types :success, :info, :warning, :danger

  private
  def not_authenticated
    redirect_to main_app.login_path, alert: 'ログインをしてください'
  end
end
