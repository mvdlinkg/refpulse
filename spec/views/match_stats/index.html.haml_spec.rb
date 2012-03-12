require 'spec_helper'

describe "match_stats/index" do
  before(:each) do
    assign(:match_stats, [
      stub_model(MatchStat,
        :match_id => 1,
        :foulLocal => 1,
        :foulVisitor => 1,
        :offsideLocal => 1,
        :offsideVisitor => 1,
        :yellowLocal => 1,
        :yellowVisitor => 1,
        :redLocal => 1,
        :redVisitor => 1,
        :penaltiesVisitor => 1,
        :penaltiesLocal => 1
      ),
      stub_model(MatchStat,
        :match_id => 1,
        :foulLocal => 1,
        :foulVisitor => 1,
        :offsideLocal => 1,
        :offsideVisitor => 1,
        :yellowLocal => 1,
        :yellowVisitor => 1,
        :redLocal => 1,
        :redVisitor => 1,
        :penaltiesVisitor => 1,
        :penaltiesLocal => 1
      )
    ])
  end

  it "renders a list of match_stats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
