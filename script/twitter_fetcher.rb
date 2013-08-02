while true
  all_accounts = TwitterAccount.find(:all)
  accounts_count = all_accounts.count()
  id_map = all_accounts.map {|account| {Twitter.user(account.username).attrs[:id] => account.user.username}}.reduce{|x, y| x.merge(y) }
  thread = Thread.new{
    puts id_map
    id_list = id_map.keys
    TweetStream::Client.new.follow(*id_list) do |status|
      name = id_map[status.user.id]
      puts "tweet for " + name
      Pusher[name].trigger("new_tweet", { message: "<strong>@#{status.user.screen_name}:</strong><br/>#{status.text}"})
    end
  }
  while TwitterAccount.find(:all).count() == accounts_count
    sleep(5)
  end
  thread.exit
  puts "New account added, restarting fetcher..."
end