Feature: Admin can view messages
  In order to respond to users
  As an admin
  I want to be able to view, read, and delete messages

  Background:
    Given I am logged in as admin

  Scenario: No unread messages
    When I am on the homepage
    Then I should see 'No unread messages'

  Scenario: Existing unread messages
    Given 3 unread messages
    When I am on the homepage
    Then I should see '3 unread messages'

  Scenario: Existing read messages
    Given 2 unread messages
      And 1 read message
    When I am on the homepage
    Then I should see '2 unread messages'

  Scenario: View list of unread messages
    Given 3 unread messages
    When I am on the homepage
      And I click '3 unread messages'
    Then I should see 'Messages'
      And I should see 'title1'
      And I should see 'title3'

  Scenario: Delete unread message
    Given 1 unread message
    When I am on the homepage
      And I click '1 unread messages'
      And I press 'Delete'
    Then I should see 'No unread messages'
      And I should not see 'title1'

  Scenario: Read unread message
    Given 1 unread message
    When I am on the homepage
      And I click '1 unread messages'
      And I press 'Open'

