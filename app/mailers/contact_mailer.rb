class ContactMailer < ApplicationMailer
  default from: 'notification@example.com'

  def message_email(message)
    @message = message
    mail(to: "sales@sinobronze.com", subject: "Someone just send a message to sinobronze")
  end
end
