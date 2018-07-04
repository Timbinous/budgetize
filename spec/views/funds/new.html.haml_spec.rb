require 'rails_helper'

RSpec.describe "funds/new", type: :view do
  before(:each) do
    assign(:fund, Fund.new(
      :account => nil,
      :group => nil,
      :goal_amount => "9.99",
      :recurring_interval => 1
    ))
  end

  it "renders new fund form" do
    render

    assert_select "form[action=?][method=?]", funds_path, "post" do

      assert_select "input[name=?]", "fund[account_id]"

      assert_select "input[name=?]", "fund[group_id]"

      assert_select "input[name=?]", "fund[goal_amount]"

      assert_select "input[name=?]", "fund[recurring_interval]"
    end
  end
end
