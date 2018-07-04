require 'rails_helper'

RSpec.describe "accounts/index", type: :view do
  before(:each) do
    assign(:accounts, [
      Account.create!(
        :group => nil,
        :user => nil,
        :name => "Name",
        :account_type => 2,
        :reserve => "9.99"
      ),
      Account.create!(
        :group => nil,
        :user => nil,
        :name => "Name",
        :account_type => 2,
        :reserve => "9.99"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
