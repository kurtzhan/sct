class FrontendController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :set_current_tab
  before_action :detect_user_agent
  before_action :set_meta_content

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
    @title = "Sino Bronze"
    @meta_keywords = "Sino Bronze"
    @meta_description = "Sino Bronze"
  end
end
