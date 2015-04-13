require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :firstname => "MyString",
      :lastname => "MyString",
      :password => "MyString",
      :email_id => "MyString",
      :phone => ""
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_firstname[name=?]", "user[firstname]"

      assert_select "input#user_lastname[name=?]", "user[lastname]"

      assert_select "input#user_password[name=?]", "user[password]"

      assert_select "input#user_email_id[name=?]", "user[email_id]"

      assert_select "input#user_phone[name=?]", "user[phone]"
    end
  end
end
