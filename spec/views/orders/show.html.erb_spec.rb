require 'spec_helper'

describe "orders/show" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :customer_id => 1,
      :vehicle_id => 2,
      :pickup_address => "Pickup Address",
      :destination => "Destination",
      :number_of_passengers => 3,
      :driver => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Pickup Address/)
    rendered.should match(/Destination/)
    rendered.should match(/3/)
    rendered.should match(/false/)
  end
end
