class HomePageController < ApplicationController
  def index
  end

  private
  def set_current_tab
    @current_tab = 'home'
  end
 
end
