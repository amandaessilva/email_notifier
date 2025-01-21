class EmailSenderJob < ApplicationJob
  queue_as :default

  def perform(email_notification_id)
    email_notification = EmailNotification.find(email_notification_id)

    mg_client = Mailgun::Client.new(ENV["MAILGUN_API_KEY"])
    message_params = {
      from: "no-reply@meusite.com",
      to: email_notification.email,
      subject: "Notificação do sistema",
      text: email_notification.message
    }

    mg_client.send_message("sandbox.mailgun.org", message_params)

    email_notification.update(status: "Sent")
  end
end
