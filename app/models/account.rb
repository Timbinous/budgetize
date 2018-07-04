class Account < ApplicationRecord
  belongs_to :group
  has_many :funds

  enum account_type: [:checking, :money_market, :credit_card]
end
