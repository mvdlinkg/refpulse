require 'spec_helper'

describe "votes/new" do
  before(:each) do
    assign(:vote, stub_model(Vote,
      :referee_id => 1,
      :match_id => 1,
      :user_id => 1,
      :comment => "MyString",
      :rate => 1.5
    ).as_new_record)
  end

  it "renders new vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => votes_path, :method => "post" do
      assert_select "input#vote_referee_id", :name => "vote[referee_id]"
      assert_select "input#vote_match_id", :name => "vote[match_id]"
      assert_select "input#vote_user_id", :name => "vote[user_id]"
      assert_select "input#vote_comment", :name => "vote[comment]"
      assert_select "input#vote_rate", :name => "vote[rate]"
    end
  end
end
