Feature: User can use about menu
  In order to learn about BFL
  As a user
  I want to be able to view the about page

  Background:
    Given the user 'bob' logs in with password 'password1'
      And I am on the homepage
      And I hover over 'About'

  @javascript
  Scenario: View About page
    When I click 'About BFL'
    Then I should see 'About BeerFoodLodging'
      And I should see 'info@beerfoodlodging.com'

  @javascript
  Scenario: View FAQs
    When I click 'FAQs'
    Then I should see 'Frequently Asked Questions'

  @wip
  @javascript
  Scenario: View FAQ Answer
    When I click 'FAQs'
      And I click the header 'question1'
    Then I should see 'answer1'

  @javascript
  Scenario: View Subscription Levels
    When I click 'Subscription'
    Then I should see 'Premium'
      And I should see 'Custom Itinerary'

  @wip
  @javascript
  Scenario: Subscribe to BFL
    When I click 'Subscription Info'
      And I press 'Upgrade to Premium'
    Then I should see 'Paypal page'

  @javascript
  Scenario: Email site owner
    When I click 'About BFL'
      And I click 'Contact us'
      And I fill in 'Praise' for 'Reason'
      And I fill in 'Wow!' for 'Title'
      And I fill in 'What a great site!' for 'Message'
      And I press 'Submit'
    Then I should see 'Message sent!'
      And I should see 'Welcome to BFL!'


