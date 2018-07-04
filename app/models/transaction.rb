class Transaction < ApplicationRecord
  belongs_to :fund, optional: true
  belongs_to :account, optional: true
  belongs_to :group

  enum transaction_type: [:income, :payment, :transfer]
end
