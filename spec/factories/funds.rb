FactoryBot.define do
  factory :fund do
    association :group
    association :account
  end
end
