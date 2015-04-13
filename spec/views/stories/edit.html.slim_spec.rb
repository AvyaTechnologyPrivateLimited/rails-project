require 'rails_helper'

RSpec.describe "stories/edit", type: :view do
  before(:each) do
    @story = assign(:story, Story.create!(
      :index => "MyString",
      :view => "MyString",
      :create => "MyString",
      :new => "MyString",
      :edit => "MyString",
      :delete => "MyString",
      :show => "MyString"
    ))
  end

  it "renders the edit story form" do
    render

    assert_select "form[action=?][method=?]", story_path(@story), "post" do

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
