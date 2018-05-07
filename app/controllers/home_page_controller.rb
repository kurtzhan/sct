class HomePageController < FrontendController
  def index
      @categories = Category.all
  end

  def test
    render :text => "ok, kurt"
  end
  private
  def set_current_tab
    @current_tab = 'home'
  end
 
end
