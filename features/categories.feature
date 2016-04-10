Feature: Manage categories
  As a blog administrator
  In order to group the blog entries by themes
  I want to be able to add and edit categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create a new category
    Given I am on the new category page
    When I fill in "category_name" with "Foobar"
    And I press "Save"
    Then I should see "Foobar"
