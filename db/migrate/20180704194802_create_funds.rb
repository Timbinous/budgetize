class CreateFunds < ActiveRecord::Migration[5.2]
  def change
    create_table :funds do |t|
      t.references :account, foreign_key: true
      t.references :group, foreign_key: true
      t.string :name
      t.text :description
      t.decimal :goal_amount
      t.date :goal_date
      t.integer :recurring_interval

      t.timestamps
    end
  end
end
