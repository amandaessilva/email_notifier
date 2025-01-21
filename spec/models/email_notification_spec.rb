require 'rails_helper'

RSpec.describe EmailNotification, type: :model do
  it "é válido com email e mensagem" do
    email_notification = build(:email_notification)
    expect(email_notification).to be_valid
  end

  it "é inválido sem email" do
    email_notification = build(:email_notification, email: nil)
    expect(email_notification).not_to be_valid
  end

  it "é inválido sem mensagem" do
    email_notification = build(:email_notification, message: nil)
    expect(email_notification).not_to be_valid
  end
end
