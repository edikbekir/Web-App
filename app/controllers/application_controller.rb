class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def current_admin_user
    current_user.admin? ? current_user : nil if current_user.present?
  end

  def access_denied(exception)
    redirect_to root_path, alert: exception.message
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,:last_name])
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
