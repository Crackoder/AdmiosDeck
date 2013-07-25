When(/^I check "([^\"]*)"$/) do |field|
  check(field) 
end

Given(/^I am on (.+)$/) do |page_name|
  visit path_to(page_name)
end

When(/^I go to (.+)$/) do |page_name|
  visit path_to(page_name)
end

Then(/^I should see "(.*?)"$/) do |text|
	page.should have_content(text)
end

When (/^I fill in "([^\"]*)" with "([^\"]*)"$/) do |field, value|
  fill_in(field, :with => value) 
end

When (/^I click the button "([^\"]*)"$/) do |button|
  click_button(button)
end

When (/^I click the link "([^\"]*)"$/) do |link|
  click_link(link)
end