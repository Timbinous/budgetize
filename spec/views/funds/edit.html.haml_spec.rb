require 'rails_helper'

RSpec.describe "funds/edit", type: :view do
  before(:each) do
    @fund = assign(:fund, Fund.create!(
      :account => nil,
      :group => nil,
      :goal_amount => "9.99",
      :recurring_interval => 1
    ))
  end

  it "renders the edit fund form" do
    render

    assert_select "form[action=?][method=?]", fund_path(@fund), "post" do

      assert_select "input[name=?]", "fund[account_id]"

      assert_select "input[name=?]", "fund[group_id]"

      assert_select "input[name=?]", "fund[goal_amount]"

      assert_select "input[name=?]", "fund[recurring_interval]"
    end
  end
end
