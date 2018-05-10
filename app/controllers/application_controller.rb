class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  def default_url_options(options={})
    { :locale => I18n.locale == I18n.default_locale ? nil : I18n.locale  }
    { locale: I18n.locale }
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up)  { |u| u.permit(  :email, :password, :password_confirmation, roles: [] ) }
  end

  def set_locale
    if request.path =~ /\/admin/
      I18n.locale = I18n.default_locale
    else
      I18n.locale = params[:locale] || I18n.default_locale
    end

    @language_id = Language.find_by(:name => I18n.locale).id
  end
end
