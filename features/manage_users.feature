Feature: Manage User
  In order to make the application
  As a user
  I want to create and manage accounts
  
  Scenario: Account creation page
    Given I am on the homepage
    When I go to the sign up page
    Then I should see "Username"
    And I should see "Password"

  Scenario: Delete Account
    Given I log in with valid credentials
    When I click the link "Manage Account"
    Then I click the link "Delete account"
    And I fill in "password" with "123456"
    And I click the button "Delete"
    Then I should see "Your account has been deleted"