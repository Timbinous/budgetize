namespace :test_data do
  task :seed => [:environment] do
    group = Group.create!(name: 'Test')
    User.create!(name: 'Tim', email: 'tim@example.com', password: '123123123', group: group)
    User.create!(name: 'Test', email: 'test@example.com', password: '123123123', group: group)
    boa = Account.create!(group: group, name: 'BOA', account_type: :checking)
    etrade = Account.create!(group: group, name: 'ETrade', account_type: :money_market)
    Account.create!(group: group, name: 'AMEX', account_type: :credit_card)
    Fund.create!(group: group, account: etrade, name: 'Christmas', description: 'Money we want to save for christmas presents', goal_amount: 1000, goal_date: Date.new(Date.today.year, 11, 15), recurring_interval: :yearly)
    Fund.create!(group: group, account: etrade, name: 'Boat', description: 'Get a sweet boat', goal_amount: 10000)
    food = Fund.create!(group: group, account: etrade, name: 'Food', description: 'Food for the month', goal_amount: 1000, recurring_interval: :monthly)
    Transaction.create!(group: group, account: boa, amount: 2000, description: 'Paid', transaction_type: :income)
    Transaction.create!(group: group, account: boa, fund: food, amount: 300, transaction_type: :transfer)
  end
end
