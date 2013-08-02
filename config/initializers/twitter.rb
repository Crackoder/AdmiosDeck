Twitter.configure do |config|
  config.consumer_key = '4BVPG1sdLDjBWAX4RgrsQ'
  config.consumer_secret = 'B7U6rtxB6YBAYdsMALvufSxjQ7VtjGFTV8woIfLa7XI'
  config.oauth_token = '67990701-Jtb9zumpvNxGxkbTgF8ZlylPl8ePqWkO1mTZqLX2r'
  config.oauth_token_secret = 'kwpGh8BOfLLuHtL7Qgjuuo2jqKkxp4CT0Ewm8Y8bk'
end

TweetStream.configure do |config|
  config.consumer_key       = '4BVPG1sdLDjBWAX4RgrsQ'
  config.consumer_secret    = 'B7U6rtxB6YBAYdsMALvufSxjQ7VtjGFTV8woIfLa7XI'
  config.oauth_token        = '67990701-Jtb9zumpvNxGxkbTgF8ZlylPl8ePqWkO1mTZqLX2r'
  config.oauth_token_secret = 'kwpGh8BOfLLuHtL7Qgjuuo2jqKkxp4CT0Ewm8Y8bk'
  config.auth_method        = :oauth
end