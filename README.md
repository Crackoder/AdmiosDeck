# Rails Admios Training application

This is my application for the Admios training "Rails Practice Application" module

Setup commands

- Make sure all gems are installed

```sh
bundle install
```

- Setup the database

```sh
bundle exec rake db:migrate
```

- Start the twitter fetcher script

```sh
rails runner script/twitter_fetcher.rb start
```

- Run the rails server in a second Terminal instance

```sh
rails s
```