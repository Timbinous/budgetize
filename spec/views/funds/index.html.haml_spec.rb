require 'rails_helper'

RSpec.describe "funds/index", type: :view do
  before(:each) do
    @funds = create_list(:fund, 3, :populated)
    assign(:funds, @funds)
  end

  it "renders a list of funds" do
    render
    @funds.each do |fund|
      assert_select "tr>td", :text => fund.name
      assert_select "tr>td", :text => fund.account.name
      assert_select "tr>td", :text => fund.goal_amount.to_s
      assert_select "tr>td", :text => fund.goal_date.to_s
      assert_select "tr>td", :text => fund.recurring_interval
    end
  end
end
