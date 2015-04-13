require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :firstname => "Firstname",
        :lastname => "Lastname",
        :password => "Password",
        :email_id => "Email",
        :phone => ""
      ),
      User.create!(
        :firstname => "Firstname",
        :lastname => "Lastname",
        :password => "Password",
        :email_id => "Email",
        :phone => ""
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
