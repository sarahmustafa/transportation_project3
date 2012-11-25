Given /^an initial business$/ do
   @Sarah = FactoryGirl.create(:customer, :first_name => "Sarah")
  @zuhair = FactoryGirl.create(:customer)
   @haya = FactoryGirl.create(:customer, :first_name => "Haya")
end

Given /^i am on the 'new customer' page$/ do
  visit new_customer_path
end

When /^i enter "(.*?)" for "(.*?)"$/ do |arg1, arg2|
  fill_in arg2, :with => arg1
end

When /^i click button "(.*?)"$/ do |arg1|
  click_button arg1  
end

Then /^i should see "(.*?)"$/ do |arg1|
  page.should have_content arg1
end

Given /^I am on the 'customers' page$/ do
  visit customers_path
end

Then /^in the "(.*?)", I should see "(.*?)"$/ do |arg1, arg2|
  page.should have_css(tag, :text => value)
end

Then /^in the "(.*?)", I should see a link to "(.*?)"$/ do |arg1, arg2|
  page.should have_css(tag, :text => value)
end


# Update Customer

When /^I follow the "(.*?)" link for "(.*?)"$/ do |link, cell_value|
  find(:xpath, "//tr[contains(.,'#{cell_value}')]").click_link link
end

When /^I change the email address "(.*?)" to "(.*?)"$/ do |oldmail, newmail|
  fill_in "email", :with => newmail
end

When /^I click the button "(.*?)"$/ do |buttonname|
  click_button buttonname  
end

Then /^in the "(.*?)" I should see "(.*?)"$/ do |arg1, arg2|
  page.should have_css(arg1, :text => arg2)
end
