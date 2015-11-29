class HomePageController < FrontendController
  def index
      @categories = Category.all
  end

  private
  def set_current_tab
    @current_tab = 'home'
  end
 
end
