FactoryBot.define do
  factory :fund do
    association :group
    association :account

    trait :populated do
      name                  { Faker::Bank.name }
      description           { Faker::Lorem.sentence }
      goal_amount           { Faker::Number.number(4) }
      goal_date             { Faker::Date.forward }
      recurring_interval    { Fund.recurring_intervals.keys.sample }
      association           :account, :populated
    end
  end
end
