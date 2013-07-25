Feature: Manage User
  In order to make the application
  As a user
  I want to create and manage accounts
  
  Scenario: Account creation page
    Given I am on the homepage
    When I go to the sign up page
    Then I should see "Username"
    And I should see "Password"

    