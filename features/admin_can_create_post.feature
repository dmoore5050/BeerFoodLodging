Feature: User can create post
  In order to blog on BFL
  As an admin
  I want to be able to create a post

  Background:
    Given the category 'Nomming and Glugging'
      And I am logged in as admin
      And I am on the homepage
      And I click 'Admin Panel'
      And I click 'Posts'
      And I click 'New Post'

  Scenario: Happy create path
    When I fill in 'All your beers are belong to me' for 'Title'
      And I fill in 'Nom Nom Glug Glug yall' for 'Body'
      And I choose 'Nomming and Glugging' from 'Category'
      And I press 'Create Post'
    Then I should see 'Post created!'
      And I should see 'Posts:'

  @javascript
  Scenario: No title
    When I fill in 'Nom Nom Glug Glug yall' for 'Body'
      And I choose 'Nomming and Glugging' from 'Category'
      And I press 'Create Post'
    Then I should not see 'Posts:'
      And I should see 'New Post:'

  @javascript
  Scenario: No body
    When I fill in 'All your beers are belong to me' for 'Title'
      And I choose 'Nomming and Glugging' from 'Category'
      And I press 'Create Post'
    Then I should not see 'Posts:'
      And I should see 'New Post:'

  @javascript
  Scenario: No category
    When I fill in 'All your beers are belong to me' for 'Title'
      And I fill in 'Nom Nom Glug Glug yall' for 'Body'
      And I press 'Create Post'
    Then I should not see 'Posts:'
      And I should see 'New Post:'
