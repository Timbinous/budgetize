FactoryBot.define do
  factory :account do
    association :group
    trait :populated do
      name          { Faker::Bank.name }
      account_type  [:checking, :money_market, :credit_card].sample
      reserve       { Faker::Number.number(4) }
    end
  end
end
