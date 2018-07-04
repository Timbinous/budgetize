require 'rails_helper'

RSpec.describe "funds/show", type: :view do
  before(:each) do
    @fund = assign(:fund, Fund.create!(
      :account => nil,
      :group => nil,
      :goal_amount => "9.99",
      :recurring_interval => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
  end
end
