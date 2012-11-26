Given /^an initial business setup$/ do
  @Nissan = FactoryGirl.create(:vehicle)
  @Toyota = FactoryGirl.create(:vehicle, :make => "Toyota")
end

Given /^I am on the 'new vehicle' page$/ do
  visit new_vehicle_path
end

When /^I type "(.*?)" for "(.*?)"$/ do |arg1, arg2|
  fill_in arg2, :with => arg1
end

When /^I click on the button "(.*?)"$/ do |arg1|
  click_button arg1  
end

Given /^I am on the 'vehicles' page$/ do
  visit vehicles_path
end

Then /^in the page "(.*?)", I should see "(.*?)"$/ do |tag, value|
  page.should have_css(tag, :text => value)
end
