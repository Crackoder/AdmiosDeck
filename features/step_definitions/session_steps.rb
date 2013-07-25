Given(/^I log in with valid credentials$/) do
  step "I have user \"Ivan\" with password \"123456\" created"
  step "I go to the login page"
  step "I fill in \"username\" with \"Ivan\""
  step "I fill in \"password\" with \"123456\""
  step "I click the button \"Log in\""
end

Given(/^I'm not loged in$/) do
  visit logout_path
end