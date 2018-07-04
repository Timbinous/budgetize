json.extract! transaction, :id, :fund_id, :account_id, :amount, :description, :transaction_date, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
