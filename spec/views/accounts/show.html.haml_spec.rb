require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) do
    @account = assign(:account, create(:account, :populated))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(Regexp.escape @account.name)
    expect(rendered).to match(@account.account_type)
    expect(rendered).to match(@account.reserve.to_s)
  end
end
