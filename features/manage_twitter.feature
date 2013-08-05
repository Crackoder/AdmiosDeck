Feature: Manage Twitter accounts
  In order to use the application
  As a user
  I want manage my twitter accounts
  
  Scenario: Twitter account creation page
    Given I log in with valid credentials
    When I click the link "Manage Account"
    Then I click the link "Your Twitter Accounts"
    And I click the link "New Twitter account"
    Then I fill in "twitter_account_username" with "Tweet"
    And I click the button "Create Twitter account"
    Then I should see "Tweet"

  Scenario: Delete Account
    Given I log in with valid credentials
    And I have Twitter user "Tweet" for User "Ivan" created
    When I go to the twitter list page
    And I should see "Tweet"
    And I click on "Actions"
    And I click the link "Delete"
    Then I should not see "Tweet"

  Scenario: Update Account
    Given I log in with valid credentials
    And I have Twitter user "Tweet" for User "Ivan" created
    When I go to the twitter list page
    And I should see "Tweet"
    And I click on "Actions"
    And I click the link "Edit"
    Then I fill in "twitter_account_username" with "New_username"
    And I click the button "Update Twitter account"
    Then I should not see "Tweet"
    And I should see "New_username"