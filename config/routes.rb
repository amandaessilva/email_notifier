Rails.application.routes.draw do
  require "sidekiq/web"
  mount Sidekiq::Web => "/sidekiq"

  resources :email_notifications, only: [ :index, :create ]
  root "email_notifications#index"
end
