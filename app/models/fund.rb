class Fund < ApplicationRecord
  belongs_to :account
  belongs_to :group
  has_many :transactions

  enum recurring_interval: {daily: 10, weekly: 20, bi_weekly: 30, monthly: 40, quarterly: 50, semesterly: 60, yearly: 70}
end
