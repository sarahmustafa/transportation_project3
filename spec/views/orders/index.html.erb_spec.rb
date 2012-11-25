require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :customer_id => 1,
        :vehicle_id => 2,
        :pickup_address => "Pickup Address",
        :destination => "Destination",
        :number_of_passengers => 3,
        :driver => false
      ),
      stub_model(Order,
        :customer_id => 1,
        :vehicle_id => 2,
        :pickup_address => "Pickup Address",
        :destination => "Destination",
        :number_of_passengers => 3,
        :driver => false
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Pickup Address".to_s, :count => 2
    assert_select "tr>td", :text => "Destination".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
