Feature: customer
In order to get a service
As an customer
I want to do basic functionalities, list, create, update, and delete customer information

Background:
	Given an initial business
				
Scenario: valid_new_customer
	Given i am on the 'new customer' page
	#When i enter "1" for "Customer ID"
	And i enter "Sarah" for "First Name"
	And i enter "mustafa" for "Last Name"
	And i enter "PO BOX 24866" for "Address"
	And i enter "doha" for "City"
	And i enter "smustafa@qatar.cmu.edu" for "Email"
	And i enter "+97444991457" for "Telephone Number"
	And i click button "Create"
	Then i should see "Customer was successfully created."
	
	#Scenario: list customers
	#	Given I am on the 'customers' page
	#	Then in the "title", I should see "Listing Customers"
	#	And in the "th", I should see "Customer id"
	#	And in the "th", I should see "Customer Name"
	#	And in the "th", I should see "Telephone Number"
	#	And in the "th", I should see "Email"	
	#	And in the "td", I should see "Sarah, Mustafa"
	#	And in the "td", I should see "jdan@gmail.com"
	#	And in the "td", I should see "97444991456"
	#	And in the "body", I should see a link to "New Customer"
		
		Scenario: Update customers
		Given I am on the 'customers' page
		When I follow the "Edit" link for "Mustafa, Sarah"
		And I change the email address "jdan@gmail.com" to "joey@me.com"
		And I click the button "Update"
		Then in the "p#notice" I should see "Customer was successfully updated."
		
		Scenario: Delete customer
		Given I am on the 'customers' page
		When I follow the "Destroy" link for "Mustafa, Sarah"
		Then I should not see "Mustafa, Sarah"
