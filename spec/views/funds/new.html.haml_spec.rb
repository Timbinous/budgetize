require 'rails_helper'

RSpec.describe "funds/new", type: :view do
  before(:each) do
    assign(:fund, build(:fund))
  end

  it "renders new fund form" do
    render

    assert_select "form[action=?][method=?]", funds_path, "post" do
      assert_select "input[name=?]", "fund[name]"
      assert_select "select[name=?]", "fund[account_id]"
      assert_select "input[name=?]", "fund[description]"
      assert_select "input[name=?]", "fund[goal_amount]"
      assert_select "input[name=?]", "fund[goal_date]"
      assert_select "input[name=?]", "fund[recurring_interval]"
    end
  end
end
