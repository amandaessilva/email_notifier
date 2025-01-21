class EmailNotificationsController < ApplicationController
  def index
    @notifications = EmailNotification.all
  end

  def create
    notification = EmailNotification.create!(
      email: params[:email],
      message: params[:message],
      status: "Pending"
    )

    EmailSenderJob.perform_later(notification.id)

    redirect_to email_notifications_path, notice: "Email agendado com sucesso!"
  end
end
