require 'rails_helper'

RSpec.describe "accounts/index", type: :view do
  before(:each) do
    @accounts = create_list(:account, 4, :populated)
    assign(:accounts, @accounts)
  end

  it "renders a list of accounts" do
    render
    @accounts.each do |account|
      expect(rendered).to match(Regexp.escape account.name)
      expect(rendered).to match(account.account_type)
      expect(rendered).to match(account.reserve.to_s)
    end
  end
end
