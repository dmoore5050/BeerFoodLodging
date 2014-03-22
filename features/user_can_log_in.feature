Feature: User can log in and log out
  In order to save my projects
  As a user
  I want to be able to log in and log out

  Scenario: Happy Email Path
    Given the user 'bob'/'bob@example.com' with password of 'password1'
    When I go to the homepage
      And I click 'Log in'
      And I fill in 'bob@example.com' for 'Login'
      And I fill in 'password1' for 'Password'
      And I press 'Sign in'
    Then I should see 'You are now logged in.'
      And I should see a 'Log out' button

  Scenario: Happy Username Path
    Given the user 'bob'/'bob@example.com' with password of 'password1'
    When I go to the homepage
      And I click 'Log in'
      And I fill in 'bob' for 'Login'
      And I fill in 'password1' for 'Password'
      And I press 'Sign in'
    Then I should see 'You are now logged in.'
      And I should see a 'Log out' button

  Scenario: Wrong Password
    Given the user 'bob'/'bob@example.com' with password of 'password1'
    When I go to the homepage
      And I click 'Log in'
      And I fill in 'bob@example.com' for 'Login'
      And I fill in 'wrong password' for 'Password'
      And I press 'Sign in'
    Then I should see 'Your login or password is incorrect. Please try again.'

  Scenario: Wrong Email
    Given the user 'bob'/'bob@example.com' with password of 'password1'
    When I go to the homepage
      And I click 'Log in'
      And I fill in 'betty@example.com' for 'Login'
      And I fill in 'password1' for 'Password'
      And I press 'Sign in'
    Then I should see 'Your login or password is incorrect. Please try again.'

  Scenario: Logout
    Given the user 'bob'/'bob@example.com' with password of 'password1'
    When I go to the homepage
      And I click 'Log in'
      And I fill in 'bob' for 'Login'
      And I fill in 'password1' for 'Password'
      And I press 'Sign in'
      And I press 'Log out'
    Then I should see 'You are now logged out.'
      And I should see a 'Log in' button