Feature: Admin can create category
  In order to blog on BFL
  As an admin
  I want to be able to create a category

  Background:
    Given I am logged in as admin
      And I am on the homepage
      And I click 'Admin Panel'
      And I click 'Categories'
      And I click 'Add Category'

  @javascript
  Scenario: Happy creation path
    When I fill in 'Dinosaurs' for '(Separate by commas)'
      And I press 'Create'
    Then I should see 'Categories created!'
      And I should see 'Dinosaurs'

  @javascript
  Scenario: Admin can create multiple categories
    When I fill in 'Dinosaurs, small mammals' for '(Separate by commas)'
      And I press 'Create'
    Then I should see 'Categories created!'
      And I should see 'Dinosaurs'
      And I should see 'Small Mammals'

  @javascript
  Scenario: Category creation filters out non-unique categories
    When I fill in 'dinosaurs, dinosaurs' for '(Separate by commas)'
      And I press 'Create'
    Then I should see 'Categories created!'
      And there should be '1' 'category'

  @javascript
  Scenario: Duplicate filtering is case/whitespace insensitive
    When I fill in 'Dinosaurs, dinosaurs,dinosaurs, Dinosaurs ' for '(Separate by commas)'
      And I press 'Create'
    Then I should see 'Categories created!'
      And there should be '1' 'category'
