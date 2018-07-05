require 'rails_helper'

RSpec.describe "funds/edit", type: :view do
  before(:each) do
    @fund = assign(:fund, create(:fund, :populated))
  end

  it "renders the edit fund form" do
    render
    assert_select "form[action=?][method=?]", fund_path(@fund), "post" do
      assert_select "input[name=?]", "fund[name]"
      assert_select "select[name=?]", "fund[account_id]"
      assert_select "input[name=?]", "fund[description]"
      assert_select "input[name=?]", "fund[goal_amount]"
      assert_select "input[name=?]", "fund[goal_date]"
      assert_select "input[name=?]", "fund[recurring_interval]"
    end
  end
end
