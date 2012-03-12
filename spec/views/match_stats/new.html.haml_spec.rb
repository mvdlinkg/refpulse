require 'spec_helper'

describe "match_stats/new" do
  before(:each) do
    assign(:match_stat, stub_model(MatchStat,
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
    ).as_new_record)
  end

  it "renders new match_stat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => match_stats_path, :method => "post" do
      assert_select "input#match_stat_match_id", :name => "match_stat[match_id]"
      assert_select "input#match_stat_foulLocal", :name => "match_stat[foulLocal]"
      assert_select "input#match_stat_foulVisitor", :name => "match_stat[foulVisitor]"
      assert_select "input#match_stat_offsideLocal", :name => "match_stat[offsideLocal]"
      assert_select "input#match_stat_offsideVisitor", :name => "match_stat[offsideVisitor]"
      assert_select "input#match_stat_yellowLocal", :name => "match_stat[yellowLocal]"
      assert_select "input#match_stat_yellowVisitor", :name => "match_stat[yellowVisitor]"
      assert_select "input#match_stat_redLocal", :name => "match_stat[redLocal]"
      assert_select "input#match_stat_redVisitor", :name => "match_stat[redVisitor]"
      assert_select "input#match_stat_penaltiesVisitor", :name => "match_stat[penaltiesVisitor]"
      assert_select "input#match_stat_penaltiesLocal", :name => "match_stat[penaltiesLocal]"
    end
  end
end
