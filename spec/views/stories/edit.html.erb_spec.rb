require 'spec_helper'

describe "stories/edit" do
  before(:each) do
    @story = assign(:story, stub_model(Story,
      :story => "MyText",
      :type => ""
    ))
  end

  it "renders the edit story form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stories_path(@story), :method => "post" do
      assert_select "textarea#story_story", :name => "story[story]"
      assert_select "input#story_type", :name => "story[type]"
    end
  end
end
