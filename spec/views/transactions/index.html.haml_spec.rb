require 'rails_helper'

RSpec.describe "transactions/index", type: :view do
  before(:each) do
    @transactions = create_list(:transaction, 3, :populated)
    assign(:transactions, @transactions)
  end

  it "renders a list of transactions" do
    render
    @transactions.each do |transaction|
      assert_select "tr>td", :text => transaction.fund.name
      assert_select "tr>td", :text => transaction.account.name
      assert_select "tr>td", :text => transaction.amount.to_s
      assert_select "tr>td", :text => transaction.description
      assert_select "tr>td", :text => transaction.transaction_date.to_s
      assert_select "tr>td", :text => transaction.transaction_type
    end
  end
end
