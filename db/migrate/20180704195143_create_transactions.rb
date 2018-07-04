class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :fund, foreign_key: true
      t.references :account, foreign_key: true
      t.references :group, foreign_key: true
      t.decimal :amount
      t.string :description
      t.datetime :transaction_date
      t.integer :transaction_type

      t.timestamps
    end
  end
end
