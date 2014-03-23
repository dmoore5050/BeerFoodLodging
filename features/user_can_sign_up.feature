Feature: User can sign up
  In order to save my projects
  As a user
  I want to be able to create an account

  Scenario: Happy Signup Path
    When I go to the homepage
      And I click 'Sign up'
      And I fill in 'bob@example.com' for 'Email'
      And I fill in 'bob' for 'Username'
      And I fill in 'password1' for 'user_password'
      And I fill in 'password1' for 'user_password_confirmation'
      And I press 'Sign up'
    Then I should see 'Welcome! You have signed up successfully.'
      And I should see 'Hi, bob!'
      And I should see a 'Log out' button

  @javascript
  Scenario: Missing Username
    When I go to the homepage
      And I click 'Sign up'
      And I fill in 'bob@example.com' for 'Email'
      And I fill in 'password1' for 'user_password'
      And I fill in 'password1' for 'user_password_confirmation'
      And I press 'Sign up'
    Then I should not see 'Hi, bob!'
      And I should see 'Sign up'

  Scenario: Missing Email
    When I go to the homepage
      And I click 'Sign up'
      And I fill in 'bob' for 'Username'
      And I fill in 'password1' for 'user_password'
      And I fill in 'password1' for 'user_password_confirmation'
      And I press 'Sign up'
    Then I should see 'can't be blank'
      And I should not see 'Hi, bob!'

  Scenario: Improperly Formatted Email
    When I go to the homepage
      And I click 'Sign up'
      And I fill in 'bobatexample.com' for 'Email'
      And I fill in 'bob' for 'Username'
      And I fill in 'password1' for 'user_password'
      And I fill in 'password1' for 'user_password_confirmation'
      And I press 'Sign up'
    Then I should see 'is invalid'
      And I should not see 'Hi, bob!'

  Scenario: Missing Password
    When I go to the homepage
      And I click 'Sign up'
      And I fill in 'bob@example.com' for 'Email'
      And I fill in 'bob' for 'Username'
      And I fill in 'password1' for 'user_password_confirmation'
      And I press 'Sign up'
    Then I should see 'can't be blank'
      And I should not see 'Hi, bob!'

  Scenario: Missing Password Confirmation
    When I go to the homepage
      And I click 'Sign up'
      And I fill in 'bob@example.com' for 'Email'
      And I fill in 'bob' for 'Username'
      And I fill in 'password1' for 'user_password'
      And I press 'Sign up'
    Then I should see 'doesn't match Password'
      And I should not see 'Hi, bob!'