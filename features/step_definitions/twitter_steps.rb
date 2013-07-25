Given(/^I have Twitter user "(.*?)" with password "(.*?)" created$/) do |username, password|
	step "I log in with valid credentials"
    step "I click the link \"Manage Account\""
    step "I click the link \"Your Twitter Accounts\""
    step "I click the link \"New Twitter account\""
    step "I fill in \"twitter_account_username\" with \"Tweet\""
    step "I fill in \"twitter_account_password\" with \"123456\""
    step "I click the button \"Create Twitter account\""
end
