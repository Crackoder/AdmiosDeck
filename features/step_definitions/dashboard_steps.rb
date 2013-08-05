When(/^an account that User "(.*?)" follows make a tweet$/) do |user|
  Pusher[user].trigger("new_tweet", { message: "Test tweet"})
  sleep 2
end