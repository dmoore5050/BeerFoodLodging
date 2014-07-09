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
      And I press 'Delete'

  Scenario: Happy deletion path
    Then there should be '0' 'categories'
      And I should see 'Category deleted!'

  Scenario: Ensure record is removed from db
    When I refresh '/categories'
    Then there should be '0' 'categories'

