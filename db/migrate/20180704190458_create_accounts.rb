class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.references :group, foreign_key: true
      t.string :name
      t.integer :account_type
      t.decimal :reserve

      t.timestamps
    end
  end
end
