require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :customer_id => 1,
      :vehicle_id => 1,
      :pickup_address => "MyString",
      :destination => "MyString",
      :number_of_passengers => 1,
      :driver => false
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path, :method => "post" do
      assert_select "input#order_customer_id", :name => "order[customer_id]"
      assert_select "input#order_vehicle_id", :name => "order[vehicle_id]"
      assert_select "input#order_pickup_address", :name => "order[pickup_address]"
      assert_select "input#order_destination", :name => "order[destination]"
      assert_select "input#order_number_of_passengers", :name => "order[number_of_passengers]"
      assert_select "input#order_driver", :name => "order[driver]"
    end
  end
end
