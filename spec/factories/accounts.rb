FactoryBot.define do
  factory :account do
    association :group
    trait :populated do
      name          { Faker::Bank.name }
      account_type  { Account.account_types.keys.sample }
      reserve       { Faker::Number.number(4) }
    end
  end
end
