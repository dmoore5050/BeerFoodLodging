Feature: User can create post
  In order to blog on BFL
  As an admin
  I want to be able to create a post

  Background:
    Given I am logged in as admin
      And I am on the homepage
      And I click 'Admin Panel'
      And I click 'Create Post'

  Scenario: Happy create path
    When I fill in 'All your beers are belong to me' for 'Title'
      And I fill in 'Nom Nom Glug Glug yall' for 'Body'
      And I fill in 'Nomming and Glugging' for 'Category'
      And I press 'Create'
    Then I should see 'Your post has been created!'
      And I should see 'Welcome to BFL!'

  @javascript
  Scenario: No title
    When I fill in 'Nom Nom Glug Glug yall' for 'Body'
      And I fill in 'Nomming and Glugging' for 'Category'
      And I press 'Create'
    Then I should see 'Your post must have a title'
      And I should see 'A title is required'

  @javascript
  Scenario: No body
    When I fill in 'All your beers are belong to me' for 'Title'
      And I fill in 'Nomming and Glugging' for 'Category'
      And I press 'Create'
    Then I should see 'Your post must have content'
      And I should see 'A title is required'

  @javascript
  Scenario: No category
    When I fill in 'All your beers are belong to me' for 'Title'
      And I fill in 'Nom Nom Glug Glug yall' for 'Body'
      And I press 'Create'
    Then I should see 'Your post must have a category'
      And I should see 'A title is required'
