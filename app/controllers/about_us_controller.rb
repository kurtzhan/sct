class AboutUsController < FrontendController
  def index
    @about_us = SiteConfig.find_by(:language_id => @language_id).about_us
  end

private
  def set_current_tab
    @current_tab = 'about'
  end
end
