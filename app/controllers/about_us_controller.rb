class AboutUsController < FrontendController
  def index
    @about_us = SiteConfig.first.about_us
  end

private
  def set_current_tab
    @current_tab = 'about'
  end
end
