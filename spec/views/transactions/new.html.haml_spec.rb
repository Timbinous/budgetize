require 'rails_helper'

RSpec.describe "transactions/new", type: :view do
  before(:each) do
    assign(:transaction, build(:transaction))
  end

  it "renders new transaction form" do
    render

    assert_select "form[action=?][method=?]", transactions_path, "post" do
      assert_select "select[name=?]", "transaction[fund_id]"
      assert_select "select[name=?]", "transaction[account_id]"
      assert_select "input[name=?]", "transaction[amount]"
      assert_select "input[name=?]", "transaction[description]"
      assert_select "input[name=?]", "transaction[transaction_date]"
      assert_select "select[name=?]", "transaction[transaction_type]"
    end
  end
end
