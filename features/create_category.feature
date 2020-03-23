Feature: Write Articles
  As a blog administrator
  In order to keep my blog articles well-organized
  I want to be able to add and edit categories.

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create a new category
    Given I am on the categories page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "something1, something2"
    And I fill in "category_description" with "placeholder description for testing"
    And I press "Save"
    Then I should see "Foobar"
    And I should see "placeholder description for testing"
    And I should see "something1, something2"
    
  Scenario: Successfully edit an existing category
    Given I am on the categories page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "something1, something2"
    And I fill in "category_description" with "placeholder description for testing"
    And I press "Save"
    When I follow "Foobar"
    When I fill in "category_name" with "Fobbar_edited"
    And I fill in "category_keywords" with "something1_edited, something2_edited"
    And I fill in "category_description" with "edited placeholder description for testing"
    And I press "Save"
    Then I should see "Fobbar_edited"
    And I should see "edited placeholder description for testing"
    And I should see "something1_edited, something2_edited"
    And I should not see "Foobar"
