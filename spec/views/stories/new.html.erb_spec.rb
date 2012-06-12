require 'spec_helper'

describe "stories/new" do
  before(:each) do
    assign(:story, stub_model(Story,
      :story => "MyText",
      :type => ""
    ).as_new_record)
  end

  it "renders new story form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stories_path, :method => "post" do
      assert_select "textarea#story_story", :name => "story[story]"
      assert_select "input#story_type", :name => "story[type]"
    end
  end
end
