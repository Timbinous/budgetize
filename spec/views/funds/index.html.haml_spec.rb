require 'rails_helper'

RSpec.describe "funds/index", type: :view do
  before(:each) do
    assign(:funds, [
      Fund.create!(
        :account => nil,
        :group => nil,
        :goal_amount => "9.99",
        :recurring_interval => 2
      ),
      Fund.create!(
        :account => nil,
        :group => nil,
        :goal_amount => "9.99",
        :recurring_interval => 2
      )
    ])
  end

  it "renders a list of funds" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
