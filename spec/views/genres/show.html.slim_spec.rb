require 'rails_helper'

RSpec.describe "genres/show", type: :view do
  before(:each) do
    @genre = assign(:genre, Genre.create!(
      :index => "Index",
      :view => "View",
      :create => "Create",
      :new => "New",
      :edit => "Edit",
      :delete => "Delete",
      :show => "Show"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Index/)
    expect(rendered).to match(/View/)
    expect(rendered).to match(/Create/)
    expect(rendered).to match(/New/)
    expect(rendered).to match(/Edit/)
    expect(rendered).to match(/Delete/)
    expect(rendered).to match(/Show/)
  end
end
