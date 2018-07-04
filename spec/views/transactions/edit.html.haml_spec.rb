require 'rails_helper'

RSpec.describe "transactions/edit", type: :view do
  before(:each) do
    @transaction = assign(:transaction, Transaction.create!(
      :fund => nil,
      :account => nil,
      :amount => "9.99",
      :description => "MyString"
    ))
  end

  it "renders the edit transaction form" do
    render

    assert_select "form[action=?][method=?]", transaction_path(@transaction), "post" do

      assert_select "input[name=?]", "transaction[fund_id]"

      assert_select "input[name=?]", "transaction[account_id]"

      assert_select "input[name=?]", "transaction[amount]"

      assert_select "input[name=?]", "transaction[description]"
    end
  end
end
