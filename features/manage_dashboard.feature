Feature: Manage Dashboard
  In order to check the tweets
  As a user
  I want them to apear in the dashboard

  @javascript
  Scenario: Tweet received
    Given I log in with valid credentials
    And I have Twitter user "TestTweet" for User "Ivan" created
    When an account that User "Ivan" follows make a tweet
    Then I should see "Test tweet"

  @javascript
  Scenario: Tweet not for me
    Given I log in with valid credentials
    And I have Twitter user "TestTweet" for User "Ivan" created
    When an account that User "Peter" follows make a tweet
    Then I should not see "Test tweet"