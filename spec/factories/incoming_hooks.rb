FactoryGirl.define do
  factory :incoming_hook do
    sequence(:name) { |n| "Web hook #{n}"}
    webhook_url { Faker::Internet.url }
    sequence(:username) { |n| "Incoming Hooker #{n}" }
    channel "#general"
  end
end
