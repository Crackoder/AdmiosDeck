Feature: Manage Sessions
  In order to have access to the site
  As a user
  I want to log in and log out

  Scenario: User Login
  	Given I have user "Ivan" with password "123456" created
  	When I go to the login page
  	And I fill in "username" with "Ivan"
  	And I fill in "password" with "123456"
  	When I click the button "Log in"
  	Then I should see "Log out"

  Scenario: User Logout
    Given I log in with valid credentials
    When I click the link "Log out"
    Then I should see "Sign up or log in"

  Scenario: Access Restrictions
  	Given I'm not loged in
  	When I go to the dasboard page
  	Then I should see "First login to access this page"