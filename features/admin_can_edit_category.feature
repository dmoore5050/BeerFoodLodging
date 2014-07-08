Feature: Admin can edit category
  In order to blog on BFL
  As an admin
  I want to be able to edit a category

  Background:
    Given the category 'Dinosaurs'
      And I am logged in as admin
      And I am on the homepage
      And I click 'Admin Panel'
      And I click 'Categories'

  Scenario: Category is pre-existing
    Then I should see 'Dinosaurs'

  @javascript
  Scenario: Happy edit path
    When I press 'Edit'
      And I fill in 'Dinosaurs!' for 'Name'
      And I press 'Update Category'
    Then I should see 'Category updated!'
      And I should see 'Dinosaurs!'

  @javascript
  Scenario: Ensure record is updated in db
    When I press 'Edit'
      And I fill in 'Dinosaurs!' for 'Name'
      And I press 'Update Category'
      And I refresh '/categories'
    Then I should see 'Dinosaurs!'

  @javascript
  Scenario: Cancel edit modal
    When I press 'Edit'
      And I press 'Cancel'
    Then I should not see 'Edit Category Name:'
