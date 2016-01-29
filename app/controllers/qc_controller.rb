class QcController < FrontendController
  def index
    @qc = SiteConfig.first.qc
  end

private
    def set_current_tab
    @current_tab = 'qc'
  end
end
