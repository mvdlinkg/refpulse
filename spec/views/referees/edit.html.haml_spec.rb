require 'spec_helper'

describe "referees/edit" do
  before(:each) do
    @referee = assign(:referee, stub_model(Referee,
      :name => "MyString",
      :age => 1,
      :nationality => "MyString",
      :rate => 1.5,
      :trend => 1.5
    ))
  end

  it "renders the edit referee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => referees_path(@referee), :method => "post" do
      assert_select "input#referee_name", :name => "referee[name]"
      assert_select "input#referee_age", :name => "referee[age]"
      assert_select "input#referee_nationality", :name => "referee[nationality]"
      assert_select "input#referee_rate", :name => "referee[rate]"
      assert_select "input#referee_trend", :name => "referee[trend]"
    end
  end
end
