Given /^i am on the 'new order' page$/ do
  visit new_order_path
  end

When /^i select "(.*?)" for "(.*?)"$/ do |arg1, arg2|
  select arg1, :from => arg2
end

Given /^I am on the 'orders' page$/ do
  visit orders_path
end
