require 'rails_helper'

RSpec.describe "genres/index", type: :view do
  before(:each) do
    assign(:genres, [
      Genre.create!(
        :index => "Index",
        :view => "View",
        :create => "Create",
        :new => "New",
        :edit => "Edit",
        :delete => "Delete",
        :show => "Show"
      ),
      Genre.create!(
        :index => "Index",
        :view => "View",
        :create => "Create",
        :new => "New",
        :edit => "Edit",
        :delete => "Delete",
        :show => "Show"
      )
    ])
  end

  it "renders a list of genres" do
    render
    assert_select "tr>td", :text => "Index".to_s, :count => 2
    assert_select "tr>td", :text => "View".to_s, :count => 2
    assert_select "tr>td", :text => "Create".to_s, :count => 2
    assert_select "tr>td", :text => "New".to_s, :count => 2
    assert_select "tr>td", :text => "Edit".to_s, :count => 2
    assert_select "tr>td", :text => "Delete".to_s, :count => 2
    assert_select "tr>td", :text => "Show".to_s, :count => 2
  end
end
