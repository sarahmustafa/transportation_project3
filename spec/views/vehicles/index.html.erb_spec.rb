require 'spec_helper'

describe "vehicles/index" do
  before(:each) do
    assign(:vehicles, [
      stub_model(Vehicle,
        :make => "Make",
        :model => "Model",
        :color => "Color",
        :license_plate => "License Plate",
        :description => "Description"
      ),
      stub_model(Vehicle,
        :make => "Make",
        :model => "Model",
        :color => "Color",
        :license_plate => "License Plate",
        :description => "Description"
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Make".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "License Plate".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
