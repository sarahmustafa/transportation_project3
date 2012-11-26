Feature: customer
In order to get a service
As an customer
I want to do basic functionalities, list, create, update, and delete customer information

				
Scenario: valid_new_order
	Given i am on the 'new order' page
	When i enter "1" for "Customer"
	And i enter "1" for "Vehicle"
	And i select "11" for "order_order_time_4i"
	And i select "30" for "order_order_time_5i"
	And i select "2012" for "order_order_date_1i"
	And i select "November" for "order_order_date_2i"
	And i select "1" for "order_order_date_3i"
	And i select "12" for "order_pickup_time_4i"
	And i select "30" for "order_pickup_time_5i"
	And i select "2012" for "order_pickup_date_1i"
	And i select "November" for "order_pickup_date_2i"
	And i select "1" for "order_pickup_date_3i"
	And i enter "here" for "Pickup address"
	And i enter "there" for "Destination"
	And i enter "2" for "Number of passengers"
	And i click button "Create Order"
	Then i should see "Order was successfully created."
	
	Scenario: list orders
	Given I am on the 'orders' page
	Then in the "title", I should see "Listing orders"
	And in the "th", I should see "Customer"
	And in the "th", I should see "Vehicle"
	And in the "th", I should see "Order time"
	And in the "th", I should see "Order date"
	And in the "th", I should see "Pickup date"
	And in the "th", I should see "Pickup time"
	And in the "body", I should see a link to "New Order"