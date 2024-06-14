class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :nickname, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :nickname, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
  end

  def after_sign_up_path_for(resource)
    rooms_path # サインアップ後のリダイレクト先を設定
  end

  def after_sign_in_path_for(resource)
    rooms_path # ログイン後のリダイレクト先を設定
  end
  
  
end
