Feature: Admin can delete category
  In order to blog on BFL
  As an admin
  I want to be able to delete a post

  Background:
    Given a 'Post' with the 'title, body, category_id' 'Radishes!, They're delicious!, 5'
      And I am logged in as admin
      And I am on the homepage
      And I click 'Admin Panel'
      And I click 'Posts'
      And I press 'Delete'

  Scenario: Happy deletion path
    Then there should be '0' 'posts'
      And I should see 'Post deleted!'

  Scenario: Ensure record is removed from db
    When I refresh '/posts'
    Then there should be '0' 'posts'
