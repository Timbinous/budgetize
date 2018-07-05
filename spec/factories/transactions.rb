FactoryBot.define do
  factory :transaction do
    association :fund
    association :account
    association :group
    trait :populated do
      amount                { Faker::Number.number(4) }
      description           { Faker::Lorem.sentence }
      transaction_date      { Faker::Date.backward }
      transaction_type      { Transaction.transaction_types.keys.sample }
      association           :fund, :populated
      association           :account, :populated
    end
  end
end
