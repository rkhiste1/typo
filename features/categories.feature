Feature: Manage categories
  As a blog administrator
  In order to group the blog entries by themes
  I want to be able to add and edit categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully access category
    When I follow "Categories"
    Then I should see "Categories"
    Then I should see "Title"
    
  Scenario: Successfully create a new category
    Given I am on the new category page
    When I fill in "category_name" with "Category1"
    When I fill in "category_keywords" with "cat1"
    When I fill in "Description" with "category1"
    And I press "Save"
    Then I should see "Category1"
    Then I should see "cat1"
    Then I should see "Category1"
    
Scenario: Successfully edit an existing category
    Given I am on the new category page
    And I follow "Edit"
    When I fill in "category_name" with "Category1"
    When I fill in "category_keywords" with "cat1"
    When I fill in "Description" with "category1"
    And I press "Save"
    Then I should see "Category1"
    Then I should see "cat1"
    Then I should see "Category1"
