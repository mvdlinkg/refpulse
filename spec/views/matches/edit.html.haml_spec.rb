require 'spec_helper'

describe "matches/edit" do
  before(:each) do
    @match = assign(:match, stub_model(Match,
      :visitor_id => 1,
      :local_id => 1,
      :referee_id => 1,
      :stadium => "MyString"
    ))
  end

  it "renders the edit match form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => matches_path(@match), :method => "post" do
      assert_select "input#match_visitor_id", :name => "match[visitor_id]"
      assert_select "input#match_local_id", :name => "match[local_id]"
      assert_select "input#match_referee_id", :name => "match[referee_id]"
      assert_select "input#match_stadium", :name => "match[stadium]"
    end
  end
end
