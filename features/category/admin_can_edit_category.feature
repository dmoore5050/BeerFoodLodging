Feature: Admin can edit category
  In order to blog on BFL
  As an admin
  I want to be able to edit a category

  Background:
    Given a 'Category' with the 'name' 'Dinosaurs'
      And I am logged in as admin
      And I am on the homepage
      And I click 'Admin Panel'
      And I click 'Categories'
      And I press 'Edit'

  @javascript
  Scenario: Happy edit path
    When I fill in 'Dinosaurs!' for 'category_name'
      And I press 'Change Name'
    Then I should see 'Category updated!'
      And I should see 'Dinosaurs!'
      And there should be '1' 'category'

  @javascript
  Scenario: Ensure record is updated in db
    When I fill in 'Dinosaurs!' for 'category_name'
      And I press 'Change Name'
      And I refresh '/categories'
    Then I should see 'Dinosaurs!'
      And there should be '1' 'category'

  @javascript
  Scenario: Cancel edit modal
    When I press 'Cancel'
    Then I should not see 'Edit Category Name:'

  @javascript
  Scenario: Name is required and cannot be blank
    When I fill in '' for 'category_name'
      And I press 'Change Name'
    Then I should not see 'Category updated!'
      And the input should be required
