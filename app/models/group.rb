class Group < ApplicationRecord
  has_many :users
  has_many :accounts
  has_many :funds
  has_many :transactions
end
