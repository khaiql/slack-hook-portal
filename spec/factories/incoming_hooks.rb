FactoryGirl.define do
  factory :incoming_hook do
    sequence(:name) { |n| "Web hook #{n}"}
    webhook_url "https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX"
    message { Faker::Lorem.sentence }
    sequence(:username) { |n| "Incoming Hooker #{n}" }
    channel "#general"
  end
end
