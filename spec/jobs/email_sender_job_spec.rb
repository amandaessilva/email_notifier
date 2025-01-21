require 'rails_helper'

RSpec.describe EmailSenderJob, type: :job do
  let(:email_notification) { create(:email_notification) }

  it "adiciona um job na fila" do
    expect {
      EmailSenderJob.perform_later(email_notification.id)
    }.to have_enqueued_job(EmailSenderJob)
  end

  it "executa o job corretamente" do
    allow_any_instance_of(Mailgun::Client).to receive(:send_message).and_return(true)

    expect {
      EmailSenderJob.perform_now(email_notification.id)
    }.to change { email_notification.reload.status }.from("Pending").to("Sent")
  end
end
