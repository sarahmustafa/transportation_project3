Feature: Vehicles 
In order to get a service
As a Transpo employee
I want to be able to enter, view, edit and delete information as necessary

Background:
	Given an initial business setup

Scenario: valid_new_vehicle
	Given I am on the 'new vehicle' page
	When I type "Nissan" for "Make"
	And I type "Versa Hatch 2012" for "Model"
	And I type "Red" for "Color"
	And I type "123445" for "License plate"
	And I type "Relevant details" for "Description"
	And I click on the button "Create Vehicle"
	Then i should see "Vehicle was successfully created."

Scenario: list vehicles
	Given I am on the 'vehicles' page
	Then in the page "title", I should see "Listing Vehicles"	
	And in the page "th", I should see "Make"
	And in the page "th", I should see "Model"
	And in the page "th", I should see "Color"
	And in the page "th", I should see "Description"
	And in the page "th", I should see "Image"

