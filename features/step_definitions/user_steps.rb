Given(/^I have user "(.*?)" with password "(.*?)" created$/) do |username, password|
  User.create({:username => username, :password => password}) if User.find_by_username(username) == nil
end