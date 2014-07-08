Feature: Admin can delete category
  In order to blog on BFL
  As an admin
  I want to be able to delete a category

  Background:
    Given the category 'Dinosaurs'
      And I am logged in as admin
      And I am on the homepage
      And I click 'Admin Panel'
      And I click 'Categories'

  Scenario: Category is pre-existing
    Then I should see '1' categories

  Scenario: Happy deletion path
    When I press 'Delete'
    Then I should see '0' categories
      And I should see 'Category deleted!'

  Scenario: Ensure record is removed from db
    When I press 'Delete'
      And I refresh '/categories'
    Then I should see '0' categories

