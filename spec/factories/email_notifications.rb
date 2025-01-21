FactoryBot.define do
  factory :email_notification do
    email { Faker::Internet.email }
    message { Faker::Lorem.sentence }
    status { "Pending" }
  end
end
