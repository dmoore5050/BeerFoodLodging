Feature: Admin can edit post
  In order to blog on BFL
  As an admin
  I want to be able to edit a post

  Background:
    Given a 'Post' with the 'title, body, category_id' 'Radishes!, They're delicious!, 5'
      And I am logged in as admin
      And I am on the homepage
      And I click 'Admin Panel'
      And I click 'Posts'
      And I press 'Edit'

  @javascript
  Scenario: Happy edit path
    When I fill in 'Radishes...' for 'Title'
      And I press 'Update Post'
    Then I should see 'Post updated!'
      And I should see 'Radishes...'
      And there should be '1' 'post'

  @javascript
  Scenario: Ensure record is updated in db
    When I fill in 'Radishes...' for 'Title'
      And I press 'Update Post'
      And I refresh '/posts'
    Then I should see 'Radishes...'
      And there should be '1' 'post'

  @javascript
  Scenario: Cancel edit modal
    When I press 'Cancel'
    Then I should not see 'Title:'

  @javascript
  Scenario: Name is required and cannot be blank
    When I fill in '' for 'Title'
      And I press 'Update Post'
    Then I should not see 'Post updated!'
      And the input should be required
