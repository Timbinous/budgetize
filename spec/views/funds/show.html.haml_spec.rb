require 'rails_helper'

RSpec.describe "funds/show", type: :view do
  before(:each) do
    @fund = assign(:fund, create(:fund, :populated))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(Regexp.escape @fund.name)
    expect(rendered).to match(Regexp.escape @fund.account.name)
    expect(rendered).to match(Regexp.escape @fund.description)
    expect(rendered).to match(@fund.goal_amount.to_s)
    expect(rendered).to match(@fund.goal_date.to_s)
    expect(rendered).to match(@fund.recurring_interval)
  end
end
