FactoryBot.define do
  factory :transaction do
    association :fund
    association :account
    association :group
  end
end
