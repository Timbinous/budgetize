FactoryBot.define do
  factory :user do
    association :group
    email       { Faker::Internet.email }
    password    { Faker::Internet.password(8) }
  end
end
