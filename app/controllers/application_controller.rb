class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_current_tab
  before_action :detect_user_agent
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up)  { |u| u.permit(  :email, :password, :password_confirmation, roles: [] ) }
  end

  def detect_user_agent
    user_agent = request.env['HTTP_USER_AGENT']
    if user_agent =~ /chrome/i
      @user_agent = "chrome"
    elsif user_agent =~ /firefox/i
      @user_agent = "firefox"
    else
      @user_agent = "other"
    end
  end
end
