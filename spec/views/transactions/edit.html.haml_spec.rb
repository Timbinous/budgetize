require 'rails_helper'

RSpec.describe "transactions/edit", type: :view do
  before(:each) do
    @transaction = assign(:transaction, create(:transaction, :populated))
  end

  it "renders the edit transaction form" do
    render
    assert_select "form[action=?][method=?]", transaction_path(@transaction), "post" do
      assert_select "select[name=?]", "transaction[fund_id]"
      assert_select "select[name=?]", "transaction[account_id]"
      assert_select "input[name=?]", "transaction[amount]"
      assert_select "input[name=?]", "transaction[description]"
      assert_select "input[name=?]", "transaction[transaction_date]"
      assert_select "select[name=?]", "transaction[transaction_type]"
    end
  end
end
