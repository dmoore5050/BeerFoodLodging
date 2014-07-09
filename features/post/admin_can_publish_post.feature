Feature: Admin can publish post
  In order to blog on BFL
  As an admin
  I want to be able to publish a post

  Background:
    Given a 'Post' with the 'title, body, category_id' 'Radishes!, They're delicious!, 5'
      And I am logged in as admin
      And I am on the homepage
      And I click 'Admin Panel'
      And I click 'Posts'

  Scenario: Post should be unpublished on creation
    Then there should be '1' 'post'
      And I should see 'Publish Now'

  @javascript
  Scenario: Happy publish path
    When I press 'Publish Now'
    Then I should see 'Post updated!'
      And I should see 'Unpublish'

  @javascript
  Scenario: Happy unpublish path
    When I press 'Publish Now'
      And I press 'Unpublish'
    Then I should see 'Publish Now'
