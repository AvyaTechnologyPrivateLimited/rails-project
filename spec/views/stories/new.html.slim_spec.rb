require 'rails_helper'

RSpec.describe "stories/new", type: :view do
  before(:each) do
    assign(:story, Story.new(
      :index => "MyString",
      :view => "MyString",
      :create => "MyString",
      :new => "MyString",
      :edit => "MyString",
      :delete => "MyString",
      :show => "MyString"
    ))
  end

  it "renders new story form" do
    render

    assert_select "form[action=?][method=?]", stories_path, "post" do

      assert_select "input#story_index[name=?]", "story[index]"

      assert_select "input#story_view[name=?]", "story[view]"

      assert_select "input#story_create[name=?]", "story[create]"

      assert_select "input#story_new[name=?]", "story[new]"

      assert_select "input#story_edit[name=?]", "story[edit]"

      assert_select "input#story_delete[name=?]", "story[delete]"

      assert_select "input#story_show[name=?]", "story[show]"
    end
  end
end
