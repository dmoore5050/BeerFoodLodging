Feature: User can log in and log out
  In order to save my projects
  As a user
  I want to be able to log in and log out

  Background:
    Given the user 'bob'/'bob@example.com' with password of 'password1'
      And I am on the homepage
      And I click 'Log in'

  Scenario: Happy Email Path
    When I fill in 'bob@example.com' for 'Login'
      And I fill in 'password1' for 'Password'
      And I press 'Sign in'
    Then I should see 'You are now logged in.'
      And I should see a 'Log out' button

  Scenario: Happy Username Path
    When I fill in 'bob' for 'Login'
      And I fill in 'password1' for 'Password'
      And I press 'Sign in'
    Then I should see 'You are now logged in.'
      And I should see a 'Log out' button

  Scenario: Wrong Password
    When I fill in 'bob@example.com' for 'Login'
      And I fill in 'wrong password' for 'Password'
      And I press 'Sign in'
    Then I should see 'Your login or password is incorrect. Please try again.'

  Scenario: Wrong Email
    When I fill in 'betty@example.com' for 'Login'
      And I fill in 'password1' for 'Password'
      And I press 'Sign in'
    Then I should see 'Your login or password is incorrect. Please try again.'

  Scenario: Logout
    When I fill in 'bob' for 'Login'
      And I fill in 'password1' for 'Password'
      And I press 'Sign in'
      And I press 'Log out'
    Then I should see 'You are now logged out.'
      And I should see 'Log in'