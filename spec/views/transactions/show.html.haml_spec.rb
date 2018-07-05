require 'rails_helper'

RSpec.describe "transactions/show", type: :view do
  before(:each) do
    @transaction = assign(:transaction, create(:transaction, :populated))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(Regexp.escape @transaction.fund.name)
    expect(rendered).to match(Regexp.escape @transaction.account.name)
    expect(rendered).to match(@transaction.amount.to_s)
    expect(rendered).to match(Regexp.escape @transaction.description)
    expect(rendered).to match(@transaction.transaction_date)
    expect(rendered).to match(@transaction.transaction_type)
  end
end
