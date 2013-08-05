Given(/^I have Twitter user "(.*?)" for User "(.*?)" created$/) do |twitter, user|
    if TwitterAccount.find_by_username(twitter) == nil
      t = TwitterAccount.create({:username => twitter })
      t.user_id = User.find_by_username(user).id
      t.save()
    end
end
