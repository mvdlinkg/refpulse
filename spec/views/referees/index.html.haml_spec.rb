require 'spec_helper'

describe "referees/index" do
  before(:each) do
    assign(:referees, [
      stub_model(Referee,
        :name => "Name",
        :age => 1,
        :nationality => "Nationality",
        :rate => 1.5,
        :trend => 1.5
      ),
      stub_model(Referee,
        :name => "Name",
        :age => 1,
        :nationality => "Nationality",
        :rate => 1.5,
        :trend => 1.5
      )
    ])
  end

  it "renders a list of referees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nationality".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
