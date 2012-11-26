When /^I go to the home page$/ do
visit root_path
end

Then /^I should not see "(.*?)"$/ do |arg1|
  page.should_not have_content 'arg1'
end

Then /^I should see "(.*?)" in the "(.*?)"$/ do |arg1, arg2|
  page.should have_selector(arg2, :text => arg1)
end

Given /^I am on the home page$/ do
  visit root_path
end

When /^I follow the "(.*?)" link$/ do |arg1|
  click_link arg1
end
