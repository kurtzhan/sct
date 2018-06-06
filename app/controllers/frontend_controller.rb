class FrontendController < ApplicationController
  include SimpleCaptcha::ControllerHelpers
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
#  before_action :set_current_tab
  before_action :detect_user_agent
  before_action :set_meta_content
  before_action :load_flash_pictures

  def index
      @categories = Category.all
  end

  protected
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
  
  def set_meta_content
    site_config = SiteConfig.where(:language_id => @language_id).first
    @title = site_config.title
    @meta_keywords = site_config.meta_keywords
    @meta_description = site_config.meta_description
  end

  def load_flash_pictures
    @flash_pictures = FlashPicture.order("ordinal")
  end
end
