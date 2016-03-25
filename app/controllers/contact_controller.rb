class ContactController < FrontendController
  def index
    if request.post?
      if simple_captcha_valid?
        #Message.create(:email => params[:email], :body => params[:body])
        params.permit!
        m = Message.new params[:message]
        m.save!
        @flash_message = "Your message has been sent successfully, we'll contact you soon. Thank you!"
        @succeed = true
      else
        @flash_message = "Please type the correct image code"
        @succeed = false
      end
    end
  end

private
    def set_current_tab
    @current_tab = 'contact'
  end
end
