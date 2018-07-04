require 'rails_helper'

RSpec.describe "accounts/new", type: :view do
  before(:each) do
    assign(:account, Account.new(
      :group => nil,
      :user => nil,
      :name => "MyString",
      :account_type => 1,
      :reserve => "9.99"
    ))
  end

  it "renders new account form" do
    render

    assert_select "form[action=?][method=?]", accounts_path, "post" do

      assert_select "input[name=?]", "account[group_id]"

      assert_select "input[name=?]", "account[user_id]"

      assert_select "input[name=?]", "account[name]"

      assert_select "input[name=?]", "account[account_type]"

      assert_select "input[name=?]", "account[reserve]"
    end
  end
end
