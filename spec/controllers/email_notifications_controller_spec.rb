require 'rails_helper'

RSpec.describe EmailNotificationsController, type: :controller do
  describe "POST #create" do
    it "cria uma nova notificação de email e agenda um job" do
      expect {
        post :create, params: { email: "test@example.com", message: "Hello!" }
      }.to change(EmailNotification, :count).by(1)

      expect(EmailSenderJob).to have_been_enqueued
      expect(response).to redirect_to(email_notifications_path)
    end
  end

  describe "GET #index" do
    it "retorna sucesso e renderiza a página" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
