json.extract! account, :id, :group_id, :user_id, :name, :account_type, :reserve, :created_at, :updated_at
json.url account_url(account, format: :json)
