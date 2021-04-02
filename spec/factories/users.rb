FactoryBot.define do
  factory :user do
      sequence(:email) { |n| "hiro#{n}@example.com"}
      password {"password"}
  end
end