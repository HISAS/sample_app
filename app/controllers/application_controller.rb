class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  # include SessionsHelper
  #
  # private
  #
  #   # ユーザーのログインを確認する
  #   def logged_in_user
  #     unless logged_in?
  #       store_location
  #       flash[:danger] = t('please_log_in')
  #       redirect_to login_url
  #     end
  #   end
  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
end
